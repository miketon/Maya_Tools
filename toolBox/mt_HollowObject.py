from pymel.core import *

#""" Find Nearest Face to Transform """ 
"""
s_Obj = ls(selection=True)
s_Bbx = xform(s_Obj, q=True, bb=True, ws=True)
null_1 = mt_genObj(s_Bbx, 0)
null_2 = mt_genObj(s_Bbx, 3)

mt_NearestFace(s_Obj[0], null_1)
"""

 def mt_NearestFace(polyMesh_IN, xformPos_IN):
   if objExists('NPOM'):
     print 'I exist'
        s_Nde = ls('NPOM')[0] # ls returns array; 1st entry is what we're looking for
      else:
        s_Nde = createNode('nearestPointOnMesh', n='NPOM')
             s_Con = connectAttr(polyMesh_IN.worldMesh, s_Nde.inMesh, f=True)
              #getAttr(obj_1.translate)
               #getAttr(s_Nde.inPosition)
                s_Con = connectAttr(xformPos_IN.translate, s_Nde.inPosition, f=True)
                 s_Fce = getAttr(s_Nde.nearestFaceIndex)
                  s_Fce = ls(polyMesh_IN.f[s_Fce])
                   select(s_Fce)
                    return s_Fce

                  def mt_genObj(pos_IN, index):
                    r_Obj = spaceLocator(name='null_BBox')
                      xform(r_Obj, t=[pos_IN[index], pos_IN[index+1], pos_IN[index+2]])
                       return r_Obj


#""" Filter Face Based on Normal """ 
                      """ 
                      s_Obj = ls(sl=True)[0]
                      s_Fce = mt_FaceByNormalThreshold(s_Obj, 0.799)
                      select(s_Fce)
                      """

                       def mt_FaceByNormalThreshold(obj_IN, threshold_IN): #Threshold between 0.0 -> 0.99999
                         out_Array = []
                           for face in obj_IN.faces:
                             if face.getNormal('world').y > threshold_IN:
                               out_Array.append(face)
                                  return out_Array

#""" PolyGon Face to Edge Filter """ 
"""
s_Fce = ls(selection=True) # select Faces
s_Edg = mt_FaceToEdge(s_Fce, 1) # convert to edges bordering selection
select(s_Edg)
"""

def mt_FaceToEdge(face_IN, toggle_IN):
  if toggle_IN == 1 :
    s_Edg = polyListComponentConversion(face_IN, toEdge=True, border=True) #border of selection 
  elif toggle_IN == 2 : 
    s_Edg = polyListComponentConversion(face_IN, toEdge=True, internal=True) #internal of selection
  else :
    s_Edg = polyListComponentConversion(face_IN, toEdge=True) #all edges
               s_Edg = ls(s_Edg, fl=True) #flatten entry
                return s_Edg


#""" Crush Geo to Spline """
               """
               s_Face = ls(sl=True) #select cross section(face) of obj
#ls(sl=True)[0].getNormal()
               mt_GeoToSpline(s_Face)
               """ 

               def mt_GeoToSpline(s_Face):

                 s_Edge = mt_FaceToEdge(s_Face[0], 1)
                   s_Ring = polySelectSp(s_Edge, ring=True) #collection of Edge Ring
                    s_Ring = ls(s_Ring, fl=True) #Flatten collection of Edge Ring

                      numEdge = len(s_Edge) #number of edges in cross section
                       numRing = len(s_Ring) #number of edges in ring
                        numXsec = numRing/numEdge #number of cross section

                          curEdgColl = []
                           custerColl = []
                            count = 0

                              for edge in s_Ring:
                                curEdgColl.append(edge)
                                  if(count%numEdge == (numEdge-1)): #when all of edges collected for a profile, convert to vert and create cluster in center
                                    #polyCollapseEdge(curEdgColl) #??? collapsing edges doesn't create center
                                      s_Vert = polyListComponentConversion(curEdgColl, toVertex=True)
                                       s_Clst = cluster(s_Vert, n='delete_Cluster')
                                        custerColl.append(s_Clst)
                                         curEdgColl = []
                                          count = count + 1

                                            return custerColl


                                          def mt_GetRotatePivot(s_Obj):
                                            pos_WS = xform(s_Obj, q=True, ws=True, rp=True)
                                              r_Null = spaceLocator(name='deleteme_Locator')
                                               xform(r_Null, t=pos_WS)
                                                return r_Null

                                              def mt_SortUnique(array_IN):
                                                uniqe = []
                                                  for entry in array_IN:
                                                    if entry not in uniqe:
                                                      uniqe.append(entry)
                                                         return uniqe



s_Obj = ls(sl=True)

s_Face = ls(sl=True) #select cross section(face) of obj
#ls(sl=True)[0].getNormal()
s_Clus = mt_GeoToSpline(s_Face) #s_Clus[0] = start, s_Clus[-1] = end
select(s_Clus[1][1])
s_StFc = mt_NearestFace(s_Obj[0], s_Clus[1][1])
s_Clus[0][1].translate()
pos_A = xform( s_Clus[1][1], rp=True, ws=True, q=True )
spaceLocator(n='delete_me', p=pos_A)
#cluster pos in world space??? 
s_EdFc = mt_NearestFace(s_Obj[0], s_Clus[-1])

s_Fce = mt_FaceByNormalThreshold(s_Obj[0], 0.999)
select(s_Fce)

s_Fce = ls(selection=True) # select Faces
s_Edg = mt_FaceToEdge(s_Fce, 2) # convert to edges bordering selection
select(s_Edg)
delete(s_Edg)

s_Fce = mt_FaceByNormalThreshold(s_Obj[0], 0.999)
s_Fce = polyChipOff(s_Fce, kft=True, dup=True, ch=False)
o_Top = polySeparate(s_Obj[0], name='TopDown', o=True) #[0]=xform, [1]=PolySeparate

o_Ext = polyExtrudeFacet(o_Top[1], off=3, ch=False)
c_Len = len(o_Top[1].f)-1
select(o_Top[1].f[0])
