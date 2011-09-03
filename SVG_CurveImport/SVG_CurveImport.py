from pymel.core import *
"""
                        Maya Bezier Curve Import Overview

    Maya -- curve( p=[(...), (...), (...), (...)], k = [...], d=3 )
                        |                  | |            |
                        |   relative-------| |            ------- numCVs + deg -1
                       abs  |             (x y) + prev(x y)
                        |   |              | |
    SVG  -- <path d =" (C ? c) x2 y2 x1 y1 x y"/>

                                            http://www.w3.org/TR/SVG/paths.html#PathDataGeneralInformation
"""
"""
07/16/2010 -- Mike Ton (mike.ton@gmail.com)
"""

class objSVG(object):
    """
    objSVG holds primary SVG data: cmdKeywords, CVpos and numofCVpos between cmdKeywords
    """
    def __init__(self):
        self.cmd        = ""    #m/M/c/C : upperCase = absolute, lowerCase = relative
        self.pos        = []    #array of xy point position
        self.bez        = False #Is path object a line or bezier curve?
    def echo(self):
		print self.cmd, 'bezC? :', self.bez, self.pos, self 

def main_buildCurveFromSVG():
    """
    main : Load File -> filter SVG Path Data -> passes xformed data to Maya Curve cmd
    """
    filePath = loadFile("svg")
    if(filePath != False):
    
        SVGTokens  = tokenizeSVGData(filePath[0])
        objSVGcoll = objSVGFromTokens(SVGTokens)
         
        ui = {                                              #Get init settings from UI
            'scale': floatSliderGrp('scaleField', q=True, value =True),
            'rBool': checkBox      ('rebCheck',   q=True, value =True),
            'eBool': checkBox      ('extCheck',   q=True, value =True),
            'eDiv' : floatField    ('divField',   q=True, value =True),
            'eWid' : floatField    ('widField',   q=True, value =True),
            'eHgt' : floatField    ('hgtField',   q=True, value =True)
             }
        #print 'UI Settings', ui['scale'], ui['rBool'], ui['eBool'],  ui['eDiv'],  ui['eWid'],  ui['eHgt']
    
        cDegree  = 3
        cScale   = ui['scale' ]
        cRebuild = ui['rBool' ]
        cExtrude = ui['eBool' ]
        cDiv     = ui['eDiv'  ]
        cWid     = ui['eWid'  ]
        cHgt     = ui['eHgt'  ]
        
        curvColl = SVGtoCurve(objSVGcoll, cDegree, cScale)      #Build Curves
            
        cName = re.split('[\/\.]', str(filePath))            #get FileName and group curves
        svgGroup = group(curvColl, n= ('SVG_'+ cName[-2]))
        xform(svgGroup, s = [1.0, -1.0, 1.0])                #SVG uses Y-down; Inverse X scale to match
        piv = xform(q=True, ws=True, piv=True, a=True)       #Center: get piv and subtract
        xform(svgGroup, a=True, ws=True, t=[-piv[0], -piv[1], -piv[2]])
        makeIdentity(svgGroup, apply=True)                   #reset Xform
        
        if(cRebuild == True):                                #Rebuild/Optimize Curve?
            counter = 0
            for curv in curvColl:
                if(objSVGcoll[counter].bez == True):            #Except linear curves
                    rebuildCurve(curv, rpo=True, rt=4, tol = 0.01, end=True, kr=False, kcp=False, kep=True, kt=False, s=6, d=3)
                counter += 1
        if(cExtrude == True):                                #Rebuild/Optimize Curve?
            counter     = 0
            extrudeColl = []
            for curv in curvColl:
                cPlane   = polyPlane(n='extrudeGeo', w=cWid, h=cHgt, sx=1, sy=1, cuv=2)[0]
                cPath    = pathAnimation(cPlane, c=curv, f=True, fa="y", ua="z", wut="vector")    #move plane to beginning of curve
                curvDiv  = arclen(curv) * cDiv               #get Curve length and multiply by cDiv
                cExtrude = polyExtrudeFacet(cPlane.getShape().f[0], inc=curv, d=curvDiv, kft=1, sma=30, ch=1, twist=0, taper=1)
                extrudeColl.append(cPlane)
                delete(cPlane, mp=True)
            extrudeGroup = group(extrudeColl, n= ('extrude_'+ cName[-2]))
            parent(extrudeGroup, svgGroup)
    else:
        return False        

                   
def tokenizeSVGData(filePath):
    """
    reads SVG file, and filters <path.../> data
    """
    dataCollection = []  #pathData; all path in SVG document
    dataObj        = []    	 #pathData single
    pBool          = 0    #<path> element bool
    dBool          = 0    #d="(path data)" attribute:  contains the moveto, line, 
                          #curve (cubic and quadratic Béziers), arc and closepath instructions 
    
    with open(filePath, 'r') as fileObj:
        while True:
            currLine = fileObj.readline()
            if len(currLine) ==0:        # EOF
                return dataCollection
                break                    #exit while loop
            tokens = re.split('[\s,"]', currLine)
            for token in tokens:
                if(dBool == 1):
                    if (token != ""):  
                        dataObj.append(token)
                    else:              
                        dBool = 0
                        dataCollection.append(dataObj)
                if(pBool == 0):
                    if(token == "<path"):
                        pBool = 1
                else:
                    if(token == "/>"):
                        pBool = 0
                    elif(token == "d="):
                        dBool   = 1
                        dataObj = []
    

def objSVGFromTokens(pathDataCollection):
    """
    inits objSVG and fills with data: cmdKeywords, CVpos and numofCVpos between cmdKeywords 
    """
    SVGcoll = []
    for path in pathDataCollection:
        for i in range(len(path)):    
            if(path[i].lower() == 'm') or (path[i].lower() == 'c') or (path[i].lower() == 'l'):      
                SVG = objSVG()               #the start of a new path object                  
                SVG.cmd = path[i]
                if(path[i].lower() == 'c'):
                   SVG.bez = True 
                SVGcoll.append(SVG)          #append to collection
            elif(path[i].lower() == 'z'):    #z = closepath, wrap back to the initial start
                if (SVGcoll[-1].bez == False):    #apply to linear curves only
                    SVGcoll[-1].pos.append(SVGcoll[-1].pos[0])
                    SVGcoll[-1].pos.append(SVGcoll[-1].pos[1])
            elif(path[i].lower() == 's'):
                print 'Shorthand/Smooth Curveto!           : Currently Unsupported'
            elif(path[i].lower() == 'q'):
                print 'Quadratic Bez Curveto!              : Currently Unsupported'
            elif(path[i].lower() == 'T'):
                print 'Quadratic Shorthand/Smooth Curveto! : Currently Unsupported'
            elif(path[i].lower() == 'h'):
                print 'Horizontal LineTo!                  : Currently Unsupported'
            elif(path[i].lower() == 'v'):
                print 'Vertical LineTo!                    : Currently Unsupported'
            else:    
                SVGcoll[-1].pos.append(float(path[i]))          #cast to float 
    return SVGcoll


def SVGtoCurve(SVG, degree, SVGscale):
    """        
    xform SVG data (abs/rel position) to Maya Curve command
    """
    numPath   = len(SVG)
    pointBuff = []
    curveColl = []
    posPrev   = [0,0]    #store prev pos here
    
    for j in range(numPath):
        posCurr       = [0,0]    #store return/xform pos
        pointArray    = []
        buildcurvBool = True
        arrayLength   = len(SVG[j].pos)
        for i in range(arrayLength):
            switch = i%2        #modulate between 0 and 1
            posXform = SVG[j].pos[i] + posPrev[switch]                
            if (SVG[j].cmd == 'M') or (SVG[j].cmd == 'C') or (SVG[j].cmd == 'L'):
                #True = data is abs: store values
                posCurr[switch] = SVG[j].pos[i]
            else:
                #False = data is relative: xform, then store values
                posCurr[switch] = posXform
                #Relative Linear Curve pos always offset from the previous pos    
                if (SVG[j].cmd == 'l') or (SVG[j].cmd == 'm'):
                    posPrev[switch] = posXform
                else:
                    #Relative Bezier Curve pos only offset from the previous point, not handles   
                    bez = (i)%6    #x1 y1 x2 y2 x y
                    if bez >= 4:
                        posPrev[switch] = posXform
            if switch == 1 :
                point = (posCurr[0]* SVGscale, posCurr[1]* SVGscale, 0)
                if (i == 1):
                    if (SVG[j].cmd.lower() == 'm'): 
                        if (arrayLength == 2):
                            buildcurvBool = False
                    else:
                        pointArray.append(pointBuff)
                        if(SVG[j].cmd.lower() == 'l'):
                            pointArray.append(pointBuff)      
                if (SVG[j].cmd.lower() == 'm') or (SVG[j].cmd.lower() == 'l'):
                    pointArray.append(point)    #Copy redundant points for Linear Curves
                pointArray.append(point)
        if(buildcurvBool == True):        
            numCVs = len(pointArray)
            knotArray = genBzKnot(numCVs, degree, SVG[j].bez) 
            #print 'arrKnot: ', knotArray, ' NumCVs: ', numCVs, arrayLength, pointArray
            bezCurve = curve( p=pointArray, k =knotArray)
            displaySmoothness(bezCurve, du = 3, dv = 4, pw = 16, ps = 4, po = 3) #Set smoothness
            curveColl.append(bezCurve)
        pointBuff = pointArray[-1]    
    return curveColl

    
def genBzKnot(numofCV, degree, bezBool):
    """
    generates Knot array -> numof CVs + degree -1
    """
    result     = []
    knot       = 0
    numofKnots = numofCV + degree - 1

    if(bezBool==True):
        counter = 0
        for i in range(numofKnots):
            result.append(knot)
            counter += 1
            if(counter == degree):
                knot += 1
                counter = 0       
    else:
        switch = []
        for i in range(numofCV):
            if (i == 0) or (i >= numofCV-1):
                switch.append(degree)
            else:
                switch.append(degree-1)
        swIndex = 0
        counter = 1    
        for i in range(numofKnots):
            result.append(knot)
            #print 'Knot:', knot, 'counter', counter, 'swIndex', swIndex, 'switch', switch[swIndex]
            if(counter == switch[swIndex]):
                swIndex += 1
                counter = 1
                knot += 1
            else:
                counter += 1
    return result 
    
    
def loadFile(filterExt):
    """
    file Dialog -> user specifies path to SVG file
    """
    basicFilter = "*." + filterExt
    filePath = fileDialog2(fileFilter=basicFilter, dialogStyle=2, fm=1)
    if(filePath != None):        
        return filePath
    else:
        print 'Please select a %s file'%(filterExt)
        return False
        
    
def SVG_UI():
    """
    UI : Set up windows for options and defaults
    """
    if(window('SVGImportUI', query = True, exists = True)):
        deleteUI('SVGImportUI', window = True)
        
    mtSVG_UI = window('SVGImportUI',t = 'SVGImport', menuBar = True, w= 200)
    menu(label = "About", helpMenu = True)
    aboutText_mt = 'confirmDialog( title = "SVGImport", ma = "center", m = "mike.ton@gmail.com rev 0.1 - July 2010", b = "Cool", ds = "Ok")'
    menuItem(label="About Application...", c=(aboutText_mt))
    
    fWidth   = 60 #fieldWidth
    lWidth   = 30 #labelWidth
    cHeight  = 10 #columnHeight
    colBG    = [0.7, 0.7, 0.7]
    sepStyle = 'in'
        
    with columnLayout( adj = True):
        button(l = 'Import SVG' , command = 'main_buildCurveFromSVG()')
        separator(h=cHeight*0.5, st = 'none')
        scaleField = floatSliderGrp('scaleField', label="Scale  ", field = True, min=0.0, max=1.0, fmn=0.0, fmx=1.0, v=0.01, pre=3, cw=[[1, 40], [2,fWidth]])
        separator(h=cHeight, st = sepStyle)
        with rowColumnLayout(nc=2):
            extrude_True  = 'rowColumnLayout("extrude", e=True, en=True)' 
            extrude_False = 'rowColumnLayout("extrude", e=True, en=False)'
            reb_InfoShow  = 'rowColumnLayout("infoReb", e=True, vis=True)'
            reb_InfoHide  = 'rowColumnLayout("infoReb", e=True, vis=False)'
            checkBox('extCheck', label='Extrude Curves', value = False, onc = extrude_True, ofc = extrude_False)
            checkBox('rebCheck', label='Rebuild Curves', value = False, onc = reb_InfoShow, ofc = reb_InfoHide )
        #Extrude option Layout
        with rowColumnLayout('extrude', nc=6, en=False, cw=[[1,lWidth],[2,fWidth],[3,lWidth],[4,fWidth],[5,lWidth],[6,fWidth]]):
            text('div')
            divField = floatField('divField', min=0.0, max=500.0, v=25.0, pre=3)
            text('wid')
            widField = floatField('widField', min=0.0, max=1.0, v=0.10, pre=3)
            text('hgt')
            hgtField = floatField('hgtField', min=0.0, max=1.0, v=0.01, pre=3)
        separator(h=cHeight, st = sepStyle)
        with rowColumnLayout('infoReb', vis=False, enable=False, h=cHeight*4):
            text('Imported Curve will be optimized and smoothed.\nMay improve extrude results.')
    showWindow()
    
    
SVG_UI()
