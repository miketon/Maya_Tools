from pymel.core import *
from maya import mel
import math

    #create Camera
#cubeMT = polyCube(name='mCube', w=1, h=1.5 )  

def mt_ThumbNail():
    selObj = ls(selection=True)
    if len(selObj)>0:
        if objExists('camThumb_TEMP_DELETEME1'):
            cam_DELETE = 'camThumb_TEMP_DELETEME1'   
        else:
            cam_DELETE = camera(name= 'camThumb_TEMP_DELETEME1')[0]        #camMT[1] = shape
        boundingObj = mt_BoundingObject(selObj[0]) 
        setupWorkspace(cam_DELETE)           
        setupCamera(cam_DELETE, boundingObj)
    else:
        print "Please select an object"
    
"""    
render(camMT)
renderWindowEditor(editor, e=True, writeImage='clownPic')        


    #setup UI
lsUI(windows=True)

winUI = window("mikeWin", t='extrude', w=50, h=75, resizeToFitChildren=True)
columnLayout(adj = True)
button(l = 'RenderCamera' , command ='printMike(winUI)') 
showWindow(winUI)
"""

def mt_BoundingObject(in_Obj):                        #Compares to reference object if available
    if objExists('stickFigure_00'):
        stikFig = 'stickFigure_00'
    else:
        stikFig = mt_StickFigure()
    stikFigSize = getObj_BBLongerDist(stikFig)
    in_ObjSize  = getObj_BBLongerDist(in_Obj)
    boundPos = xform(in_Obj, q=True, bb=True)
    centerPos = getObj_Center(in_Obj)
    xform(stikFig, t=[(centerPos[0] - (stikFigSize + in_ObjSize)), boundPos[1], centerPos[2]])
    if stikFigSize > in_ObjSize:                  #Returns the larger of the two
        return stikFig
    else:
        return in_Obj

def setupWorkspace(in_Cam):
    in_Path = '/Users/camtton/Desktop'
    in_imgName = 'mikeThumb'
        #setupWorkspace        
    workspace( listFullWorkspaces=True )
    workspace( 'newWorkspace', n=True, bw='default' )
    workspace( 'default', o=True )
    workspace( q=True, dir=True )
    workspace(fileRule=['images',in_Path] ) # change 'images' path to '/your/image/path'
    workspace(fileRuleEntry='images')        # Return the location for the given fileRule.  
    
        #render Camera
    editor = 'renderView'
    renderWindowEditor(editor, e=True, currentCamera=in_Cam)
    renderWindowEditor(editor, q=True, currentCamera=True)
    
    globalRenderSettings = ls(renderGlobals=True)
    #mel.eval('showEditor '+globalRenderSettings[0])
    dir(globalRenderSettings)
    listAttr(globalRenderSettings[0])
    getAttr(globalRenderSettings[0]+'.imageFormat')
    setAttr(globalRenderSettings[0]+'.imageFormat', 19)    #Targa = 19
    getAttr(globalRenderSettings[0]+'.imageFilePrefix')    
    setAttr(globalRenderSettings[0]+'.imageFilePrefix', in_imgName)    #Targa = 19
    
    attrRender = listConnections(globalRenderSettings[0])
    listAttr(attrRender[2])
    getAttr(attrRender[2]+'.width')
    getAttr(attrRender[2]+'.height')
    
def setupCamera(in_Cam, in_Obj):      
        #get bounding box and move camera to top left corner
    #camPos = 3*sorted(xform(in_Obj, q=True, bb=True))[-1]
    center = getObj_Center(in_Obj)
    radius = 3*getObj_BBLongerDist(in_Obj)
        #xform camera to object center in absolute Worldspace; reset rotation
    xform(in_Cam, t=[center[0], center[1], center[2]], ro=[0,0,0], a=True)
        #offset camera by radius in relative space
    xform(in_Cam, t=[-radius, 0, radius], r=True)
    camera(in_Cam, e=True, worldCenterOfInterest=[center[0],center[1],center[2]])
        #look thru camera
    lookThru( 'perspView', in_Cam )
    #camView = cameraView(name='thumbNailCam',camera='persp')
    #cameraView(camView, e=True, camera='persp', addBookmark=True)    
    #return in_Cam
    
def getObj_Center(in_Obj):
    boundBox = xform(in_Obj, q=True, bb=True)
    xPos = (boundBox[0] + boundBox[3]) * 0.5    #(min + max) * 0.5
    yPos = (boundBox[1] + boundBox[4]) * 0.5    #(min + max) * 0.5
    zPos = (boundBox[2] + boundBox[5]) * 0.5    #(min + max) * 0.5
    centerPoint = [xPos, yPos, zPos]
    return centerPoint
    
def getObj_BBLongerDist(in_Obj):
    boundBox = xform(in_Obj, q=True, bb=True)
    centerPoint = getObj_Center(in_Obj)
    xDis = abs(centerPoint[0] - boundBox[0])    #abs(center - minX)
    yDis = abs(centerPoint[1] - boundBox[1])    #abs(center - minY)
    zDis = abs(centerPoint[2] - boundBox[2])    #abs(center - minZ)
        #sorted function -> small to large; [-1] returns last(largest) entry
    longestDist = sorted([xDis, yDis, zDis])[-1]
    return longestDist

    
"""
s = polySphere()[0]
    dir(s)
    dir(s.faces)
    dir(s.vtx.getPosition().Axis)

    s.getBoundingBox()
    s.listConnections()

sel = ls(selection=True)

for each in sel:
    for vert in each.vtx:
        print vert.getPosition()
"""

