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
