def mt_StickFigure():
        # head
    s_Hed = polySphere(ax=[0,0,1], r=0.5, sx=20, sy=10)    
    xform(s_Hed[0], t=[0, 5.5, 0])
    polySoftEdge(s_Hed[0])
    
        # torso = s_Obj[0]
    s_Obj =polyPlane(ax=[0, 0, 1],w=1.2, h=2.3, sx=4, sy=4, cuv=2)
    xform(s_Obj[0], t=[0, 3.75, 0])
    s_Edg = filterExpand(mt_SEL(s_Obj[0], 'e', [3,12,21,30]), sm=32)    #32 = polyEdges
    xform(s_Edg, r=True, t=[0.215, 0, 0])
    s_Edg = filterExpand(mt_SEL(s_Obj[0], 'e', [27,29,31,33]), sm=32)
    xform(s_Edg, r=True, t=[0, -0.089, 0])
        # feet
    s_Edg = filterExpand(mt_SEL(s_Obj[0], 'e', [0]), sm=32) 
    s_Opn = polyExtrudeEdge(s_Edg, lt=[0, -2.3, 0])
    s_Edg = filterExpand(mt_SEL(s_Obj[0], 'e', [42]), sm=32)
    s_Opn = polyExtrudeEdge(s_Edg, lt=[0, -0.18, 0], ls=[0.44, 0.9, 1])
        # arm
    s_Fce = filterExpand(mt_SEL(s_Obj[0], 'f', [16,17]), sm=34)    #34 = polyFace
    s_Ply = polyChipOff(s_Fce, dup=False)
    s_Huh = polySeparate(s_Obj[0])
    s_Dup = duplicate(s_Huh[1], rr=True)
    xform(s_Dup[0], t=[-.745, 1.29, 0], s=[0.7, 0.7, 0.7])
        # shoulder
    s_Edg = filterExpand(mt_SEL(s_Huh[0], 'e', [28]), sm=32) 
    s_Opn = polyExtrudeEdge(s_Edg, lt=[0, 0.185, 0], ls=[1.0, 1.16, 1.0])
    s_Vtx = filterExpand(mt_SEL(s_Huh[0], 'vtx', [26]), sm=31)          #31 = polyVertices
    xform(s_Vtx, r=True, t=[-0.22, -0.192, 0])
        # clean up body
    s_Bod = polyUnite(s_Huh, s_Huh, s_Dup[0])
    s_Edg = filterExpand(mt_SEL(s_Bod[0], 'e', [42,59]), sm=32)
    polyBridgeEdge(s_Edg, divisions=0)
    s_Fce = filterExpand(mt_SEL(s_Bod[0], 'f', [2,3,6,7,10,11,14,15]), sm=34)
    delete(s_Fce)
    s_Dup = duplicate(s_Bod[0], rr=True)
    xform(s_Dup[0], s=[-1, 1, 1])
    s_Bod = polyUnite(s_Bod[0], s_Dup[0], ch=False)
    #seqMT = range(0, 30)                                        # ??? WHY ARE THE LAST 3 entries 27 27 27???
    #s_Fce = filterExpand(mt_SEL(s_Bod[0], 'f', seqMT), sm=34)
    select(s_Bod[0]+'.f[0:29]', r=True)
    s_Opn = polyExtrudeFacet(lt=[0, 0, 0.225], )
    xform(s_Bod[0], t=[0, 0, -0.1225])
    s_Fig = polyUnite(s_Bod[0], s_Hed[0], ch=False, n="stickFigure_00")
    return s_Fig[0] 

def mt_SEL(in_Obj, in_Type, in_Array):
    out_Array = []
    for entry in in_Array:
        index = str(entry)
        out_Array.append(in_Obj+'.'+in_Type+'['+index+']')
    return out_Array    
#  componentArray = mt_SEL(s_Obj[0], 'e', [3,12,21,30])

