from pymel.core import *

def mt_UI():
  """
    UI : Set up windows for options and defaults
     """
      if(window('mt_UI', query = True, exists = True)):
        deleteUI('mt_UI', window = True)

           mtSVG_UI = window('mt_UI',t = 'InsertUITitleHere', menuBar = True, w= 200)
            menu(label = "About", helpMenu = True)
             aboutText_mt = 'confirmDialog( title = "InsertUITitleHere", ma = "center", m = "mike.ton@gmail.com rev 0.1 - July 2010", b = "Cool", ds = "Ok")'
              menuItem(label="About Application...", c=(aboutText_mt))

                fWidth = 60 #fieldWidth
                 lWidth = 30 #labelWidth
                  cHeight = 10 #columnHeight
                   colBG = [0.7, 0.7, 0.7]
                    sepStyle = 'in'

                      with columnLayout( adj = True):
                        button(l = 'Print Hello' , command = 'print("Hello World")')
                          separator(h=cHeight*0.5, st = 'none')
                           scaleField = floatSliderGrp('scaleField', label="Scale ", field = True, min=0.0, max=1.0, fmn=0.0, fmx=1.0, v=0.01, pre=3, cw=[[1, 40], [2,fWidth]])
                            separator(h=cHeight, st = sepStyle)
                             with rowColumnLayout(nc=2):
                               extrude_True = 'rowColumnLayout("extrude", e=True, en=True)' 
                                 extrude_False = 'rowColumnLayout("extrude", e=True, en=False)'
                                  reb_InfoShow = 'rowColumnLayout("infoReb", e=True, vis=True)'
                                   reb_InfoHide = 'rowColumnLayout("infoReb", e=True, vis=False)'
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


                                                       mt_UI()
