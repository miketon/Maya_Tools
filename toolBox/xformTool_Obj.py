'''reset cartesian axis'''
from pymel.core import *
import random
import math

def xformTool_Obj():
  sObj = ls(sl=True)
  cBool = 0 #context exists?
  try:
    ctxAxis = manipMoveContext('manipMoveContext1', query=True, oa=True)
    cBool = 1
  except RuntimeError:
    curContext=manipMoveContext() # if context doesn't exist create one : can't check with objexists()
  if (cBool == 1):
    ctxAxis = manipMoveContext('manipMoveContext1', query=True, oa=True)
  else:
    ctxAxis = manipMoveContext(curContext, query=True, oa=True)

  magnitude = math.sqrt( (ctxAxis[0] * ctxAxis[0]) + (ctxAxis[1] * ctxAxis[1]) + (ctxAxis[2] * ctxAxis[2])) 
  magnitude = 1.0 
  # Capture context custom orientation: in radians, convert to degrees
  objAxis = [0.0, 0.0, 0.0]
  objAxis[0] = math.degrees(ctxAxis[0]/magnitude) # * 180/math.pi
  objAxis[1] = math.degrees(ctxAxis[1]/magnitude) # * 180/math.pi
  objAxis[2] = math.degrees(ctxAxis[2]/magnitude) # * 180/math.pi 

  makeIdentity( sObj[0], apply=True, t=1, r=1, s=1, n=2 ) #freeze xform
  xform(sObj[0], ro=(-objAxis[0], -objAxis[1], -objAxis[2])) #rotate to cartesian
  makeIdentity( sObj[0], apply=True, t=1, r=1, s=1, n=2 ) #freeze xform
  xform(sObj[0], ro=(objAxis[0], objAxis[1], objAxis[2])) #rotate back to original position

  xformTool_Obj()
