from pymel.core import *

def UI_mRigUtils():
    """
    UI : Set up windows for options and defaults
    """
    if(window('UI_mRigUtils', query = True, exists = True)):
        deleteUI('UI_mRigUtils', window = True)
        
    ui = window('UI_mRigUtils',t = 'UI_mRigUtils', menuBar = True, w= 200)
    menu(label = "About", helpMenu = True)
    aboutText_mt = 'confirmDialog( title = "UI_mRigUtils", ma = "center", m = "mike.ton@gmail.com rev 0.1 - Aug 2010", b = "Cool", ds = "Ok")'
    menuItem(label="About Application...", c=(aboutText_mt))
        
    uiData   = melGlobals.initVar( 'string[]', 'g_UIattrs_mt' )    
    fWidth   = 30 #fieldWidth
    lWidth   = 40 #labelWidth
    cHeight  = 10 #columnHeight
    colBG    = [0.7, 0.7, 0.7]
    sepStyle = 'in'
        
    with columnLayout( adj = True):
        with rowColumnLayout("buttonRig", en=False):
            button("buttonRig", l='RigSkeleton' , command = 'print "Rigging Skeleton"')
        separator(h=cHeight*0.5, st = 'none')
        with rowColumnLayout(nc=2, cw=[[1,100],[2,100]]):
            name_Field = textField(text = '...enter name')
            textField(name_Field, e=True, aie=True, ec=('rowColumnLayout("buttonRig", e=True, en=True)'))
            scaleField = floatSliderGrp('scaleField', label="Scale  ", field = True, min=0.0, max=10.0, fmn=0.0, fmx=1.0, v=2.0, pre=3, cw=[[1, lWidth], [2,fWidth]])
        separator(h=cHeight, st = sepStyle)
        text('FK . . . IK', en= False)
        with rowColumnLayout(nc=2):
            button(l = 'L_arm' , command = "IkFk_switch('cnt_L_wristIK_Loc', ['L_shoulder', 'L_elbow', 'L_wrist'])")
            button(l = 'R_arm' , command = "IkFk_switch('cnt_R_wristIK_Loc', ['R_shoulder', 'R_elbow', 'R_wrist'])")
        with rowColumnLayout(nc=2):
            button(l = 'L_foot' , command = "IkFk_switch('cnt_L_foot_Group', ['L_hip', 'L_knee', 'L_ankle'])")
            button(l = 'R_foot' , command = "IkFk_switch('cnt_R_foot_Group', ['R_hip', 'R_knee', 'R_ankle'])")
        separator(h=cHeight, st = sepStyle)
        text('KeyFrame Edit', en= False)
        button(l = 'Copy' , command = 'melGlobals["g_UIattrs_mt"] = gettAttrs_MT()')
        with rowColumnLayout(nc=3):
            button(l = 'Paste ' , command = 'settAttrs_MT(melGlobals["g_UIattrs_mt"], False)')
            button(l = 'Zero '  , command = 'zeroAttrs_MT()')
            button(l = 'Mirror' , command = 'settAttrs_MT(melGlobals["g_UIattrs_mt"], True)')
    showWindow()

def gettAttrs_MT():
    selObj = ls(sl=True, o=True)
    returnValue = []
    for obj in selObj:
        keyableAttrs = listAttr(obj, k=True, u=True, v=True)
        for attr in keyableAttrs:
            returnValue.append(attr)
            returnValue.append(getAttr(obj + "." + attr, asString=True))
    return returnValue
    
def settAttrs_MT(attrs, mBool):
    selObj = ls(sl=True, o=True)
    fltDef = ["translateX", "rotateY", "rotateZ"]
    fltRig = ["translateX", "translateY", "translateZ", "elbowTwist", "KneeTwist"]
    for i in range(len(attrs)):
        if(i%2 == 1):
            attVal = float(attrs[i])
            attNam = attrs[i-1]
            if(mBool == True):                              #True = mirror values
                attUsr = listAttr(selObj[0], ud=True)    #get only user attributes
                for attr in attUsr:
                    if(attr == "mtControlNode"):
                        fltDef = fltRig
                for entry in fltDef:
                    if(attNam == entry):	
                        attVal = -attVal
            setAttr (selObj[0] + "." + attNam, attVal)
            
def zeroAttrs_MT():
    selObj = ls(sl=True, o=True)
    for obj in selObj:
        keyableAttrs = listAttr(obj, k=True, u=True, v=True)
        for attr in keyableAttrs:
            print attr
            if(attr == 'ikBlend'):        #TODO: RegExp for guards: "__"
                setAttr(obj + "." + attr, 10)
            else:
                setAttr(obj + "." + attr, 0)
                
def IkFk_switch(con_IK, jntChain_FK):
    ik_Enabled = getAttr(con_IK + '.ikBlend')
    #Toggle IK off
    if(ik_Enabled==10):
        arrayRot = []
        for jnt in jntChain_FK:
            rotVec  = xform(jnt, ro=True, ws=True, a=True, q=True)
            arrayRot.append(rotVec)
        setAttr(con_IK + '.ikBlend', 0.0)
        for i in range(len(arrayRot)): 
            xform(jntChain_FK[i], ro=(arrayRot[i]), ws=True, a=True)
    #Toggle IK on
    else:
        endMat  = xform(jntChain_FK[-1], m=True, ws=True, a=True, q=True)
        polVec  = xform(con_IK + '_poleCon_FK', t=True, ws=True, a=True, q=True)
        xform(con_IK, m=endMat, ws=True, a=True)
        xform(con_IK + '_poleCon', t=polVec, ws=True, a=True)
        setAttr(con_IK + '.ikBlend', 10.0)             
            
UI_mRigUtils()

