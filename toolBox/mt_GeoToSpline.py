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
