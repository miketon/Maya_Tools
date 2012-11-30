from pymel.core import *

def mt_SeparateFace():
  s_Fce = filterExpand(ls(sl=True), sm=34) #filter face selection
  if len(s_Fce) > 0:
    e_Fce = polyChipOff(s_Fce, ch=True, kft=True)
    e_Obj = polySeparate(e_Fce[0].outputs()[0].getShape(), n='mt_PolySeparated') 
     return e_Obj

mt_SeparateFace()
