from pymel.core import *

def mt_UI():
    """
    UI : Set up windows for options and defaults
    """
    if(window('mt_UI', query=True, exists=True)):
        deleteUI('mt_UI', window=True)    
    mtSVG_UI = window('mt_UI', t ='AIE_rigTool', menuBar=True,  w=200) # rtf=True, bgc=[0.0, 1.0, 0.0]) 

    columnLayout( adj = True)  
    rowColumnLayout(nc=1)
    button(l =  ' edgeRing_ToLocator     ' , command = ' mt_edgeRing_ToLocator()                         ' )
    button(l =  ' skinPose_Init          ' , command = ' mt_skinPoseInit()                               ' )
    button(l =  ' T_Pose_Zero_Rot        ' , command = ' mt_Zero_Skeleton()()                            ' )
    #button(l = ' select_SkinPose        ' , command = ' joint_Source = ls(sl=True)[0]                   ' )
    #button(l = ' select_T-Pose          ' , command = ' joint_Target = ls(sl=True)[0]                   ' )
    #button(l = ' copySkinPose_To_T-Pose ' , command = ' mt_matchSkeleton(joint_Source   , joint_Target) ' )
    button(l =  ' Red9                   ' , command = ' Red9_start()                                    ' )
    button(l =  ' LocalRotationAxis_ON   ' , command = ' mt_toggleLocalRotAxis(True)                     ' )
    button(l =  ' LocalRotationAxis_OFF  ' , command = ' mt_toggleLocalRotAxis(False)                    ' )
    button(l =  ' down                   ' , command = ' print("uv: DOWN")                               ' )
    button(l =  ' left                   ' , command = ' print("uv: LEFT")                               ' )
    button(l =  ' right                  ' , command = ' print("uv: RIGHT")                              ' )
  
    showWindow()
          
mt_UI()

def mt_edgeRing_ToLocator():    
    s_Face = ls(sl=True) #select cross section(face) of obj   
    s_Vert = polyListComponentConversion(s_Face, toVertex=True)
    s_Clst = cluster(s_Vert, n='delete_Cluster') 
    cl_Pos = xform(s_Clst, q=True, ws=True, rp=True) 
    s_Null = spaceLocator(n='delete_Locator') #, a=True, p=cl_Pos) #WTF : this places shape not xform?
    xform( s_Null, a=True, t=cl_Pos)
    s_Null.getShape().setAttr('localScale', [0.1, 0.1, 0.1]) # adjust scale
    delete(s_Clst) #clean up cluster

#mt_edgeRing_ToLocator() 
"""
from pymel.core import *

ls(sl=True)

ls(sl=True)[0].getAttr('rotate')
ls(sl=True)[0].setAttr('rotate', [0.0, 0.0, 0.0])


joint_Source = ls(sl=True)[0]
joint_Target = ls(sl=True)[1]

sourceChildren = listRelatives(joint_Source, ad=True, type='joint')[::-1]#because ad=True returns grandchildren first
targetChildren = listRelatives(joint_Target, ad=True, type='joint')[::-1]#[start:stop:step] so step is -1

            #xform(each, r=True, ws=True, ro=[0.0, 0.0, 0.0]) 
                
sourceJoints = listRelatives(sk_Source, ad=True, type='joint')[::-1]#because ad=True returns grandchildren first
targetJoints = listRelatives(sk_Target, ad=True, type='joint')[::-1]#[start:stop:step] so step is -1
                   
"""
    
def mt_skinPoseInit():

    sourceJoints = listRelatives(ls(sl=True)[0], ad=True, type='joint')[::-1]  #because ad=True returns grandchildren first
    for i in range(len(sourceJoints)):
        if(sourceJoints[i].numChildren()==1):                   # middle chain
            mt_jointOrientToRotate(sourceJoints[i])
        elif(sourceJoints[i].numChildren()>1):                  # begin chain   
            joint(sourceJoints[i], e=True, oj='none', zso=True) # reset orientation

def mt_Zero_Skeleton():
    
    hiearchy = listRelatives(ls(sl=True)[0], ad=True, type='joint')[::-1]  #because ad=True returns grandchildren first
    for each in hiearchy:
        each.setAttr('rotate', [0.0, 0.0, 0.0])

def mt_jointOrientToRotate(joint_Source):

    jointOrient=joint_Source.getAttr ( 'jointOrient'                  )
    joint_Source.setAttr             ( 'rotate', jointOrient          )
    joint_Source.setAttr             ( 'jointOrient', [0.0, 0.0, 0.0] )

def mt_toggleLocalRotAxis(on):
    hiearchy = mt_selHiearchy()
    for each in hiearchy:
        if(each.type()=='joint'):
            if(on==True):
                each.setAttr('displayLocalAxis', True)
            else:
                each.setAttr('displayLocalAxis', False)

def mt_selHiearchy(): 
    s_Joint = ls(sl=True) #select joints
    select( s_Joint[0], hi=True )
    hiearchy = ls(sl=True)
    select( s_Joint, r=True )
    return hiearchy
    
#hiearchy = mt_selHiearchy()

def mt_Null_atSkeletonJoint(): 
    s_Joint = ls(sl=True) #select joints
    s_Skeleton = listRelatives(s_Joint[0], ad=True, type='joint') #capture only joints in hiearchy
    for each in s_Skeleton:
        jnt_Pos = xform(each, q=True, ws=True, rp=True) 
        s_Null = spaceLocator(n='delete_Locator_Joint') #, a=True, p=cl_Pos) #WTF : this places shape not xform?
        s_Null.getShape().setAttr('localScale', [0.1, 0.1, 0.1]) # adjust scale
        xform( s_Null, a=True, t=jnt_Pos)
        
#mt_Null_atSkeletonJoint()

def mt_matchSkeleton_Stupid_And_Misguided(sk_Source, sk_Target):

    sourceJoints = listRelatives(sk_Source, ad=True, type='joint')[::-1]#because ad=True returns grandchildren first
    targetJoints = listRelatives(sk_Target, ad=True, type='joint')[::-1]#[start:stop:step] so step is -1
        
    if(len(sourceJoints)==len(targetJoints)):           #check to see if source and target collection map equally
        offSetPos   = mt_offSetAB(sk_Target, sk_Source) #capture offset between skeleton
        if(sk_Source.type()!='joint'):
            offSetPos   = mt_offSetAB(sourceJoints[0], targetJoints[0]) #capture offset between skeleton
        for i in range(len(sourceJoints)):
            if(sourceJoints[i].getParent()!='joint'):
                mt_matchOrient(sourceJoints[i], targetJoints[i])
                mt_matchPosition(sourceJoints[i], targetJoints[i])
            elif(sourceJoints[i].numChildren()==1):   # middle chain ; Match joint length and orient
                mt_matchLength(sourceJoints[i], targetJoints[i])
                mt_matchOrient(sourceJoints[i], targetJoints[i])
            elif(sourceJoints[i].numChildren()>1):   # begin chain ; Match joint length and orient of parent   
                sChainParent =  sourceJoints[i].getParent()
                tChainParent =  targetJoints[i].getParent()
                mt_matchLength(sChainParent, tChainParent)
                mt_matchOrient(sChainParent, tChainParent)
    else:
        print 'Failed to Map joint count --> source skeleton : ', len(sourceChildren), ' target skeleton : ', len(targetChildren)

def mt_returnChainBegin(jointCollection):
    chainBegin=[]
    for each in jointCollection:
        if each.numChildren() > 1:
            chainBegin.append(each)
    return chainBegin

def mt_matchLength(obj_Source, obj_Target):
    obj_Source_Child = listRelatives(obj_Source, c=True, type='joint')[0]
    source_Length = mt_distAB(obj_Source, obj_Source_Child)
    joint_Target_Child = listRelatives(obj_Target, c=True, type='joint')[0]
    xform(joint_Target_Child, os=True, t=(source_Length, 0.0, 0.0)) 
    
def mt_matchOrient(obj_Source, obj_Target):
    sourceRot = xform(obj_Source, q=True, ws=True, ro=True) 
    xform(obj_Target, ws=True, ro=sourceRot) 
    
def mt_matchPosition(obj_Source, obj_Target):
    sourcePos = xform(obj_Source, q=True, ws=True, t=True) 
    xform(obj_Target, ws=True, t=sourcePos) 

def mt_distAB(objA, objB): 
    Ax, Ay, Az = objA.getTranslation(space="world")
    Bx, By, Bz = objB.getTranslation(space="world")
    return (  (Ax-Bx)**2 + (Ay-By)**2 + (Az-Bz)**2  )**0.5
    
def mt_offSetAB(objA, objB): 
    pos_A = xform( objA, q=True, a=True, t=True)
    pos_B = xform( objB, q=True, a=True, t=True)
    offSet = [(pos_A[0] - pos_B[0]), (pos_A[1] - pos_B[1]), (pos_A[2] - pos_B[2])]
    return offSet
 
def Red9_start():
    import sys
    sys.path.append('/Users/Shared/Autodesk/maya/scripts')

    import Red9
    Red9.start()
