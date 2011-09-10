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
  select(polyMesh_IN.f[s_Fce])

def mt_genObj(pos_IN, index):
  r_Obj = spaceLocator(name='null_BBox')
  xform(r_Obj, t=[pos_IN[index], pos_IN[index+1], pos_IN[index+2]])
  return r_Obj
