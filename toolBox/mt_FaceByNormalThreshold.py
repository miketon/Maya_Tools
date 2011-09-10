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
