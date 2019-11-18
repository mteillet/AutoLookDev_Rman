import maya.cmds as cmds

####    Copyright 2019 DUBOIX Emanuelle Xuan and TEILLET Martin  - Licensed under the Apache License, Version 2.0 (the "License");
####    you may not use this file except in compliance with the License. You may obtain a copy of the License at:
####   http://www.apache.org/licenses/LICENSE-2.0

def main():

    
    windowWidth = 600
    window = cmds.window( title="Renderman Auto Lookdev", iconName='RmanLookDev', widthHeight=(windowWidth, 600) )
    ####            Header          ####
    cmds.rowColumnLayout( numberOfColumns=1, columnWidth=[(1, windowWidth)])
    cmds.text( label = "Renderman Auto Lookdev", font = "boldLabelFont", backgroundColor = [0.290, 0.705, 0.909], enableBackground = True, height = 80)

    ####            Insert path to images sequence and create 00_focalLengthEstimation.bat         ####
    cmds.separator()
    cmds.text( label = "Path to the HDRI folder:", height = 30)
    cmds.rowColumnLayout( numberOfColumns=2, columnWidth=[(1, 30), (2, 570)] )
    cmds.iconTextButton( style='iconAndTextVertical',align='right',command='importHDRI()', image1='fileOpen.xpm', height=20 )
    (cmds.textField('PickDirectory', editable = False))

    cmds.separator(height = 10 )
    cmds.separator(height = 10 )

    ####            Converting the 00_focalLengthEstimation.bat to the .txt output          ####
    cmds.separator(style = "none" )
    cmds.button(label = "Auto tracking", command= 'lensAllEstimations()', height=20 )

    cmds.separator(style = "none", height = 20 )
    cmds.separator(style = "none", height = 20 )

    ####            Ask for the lens and the camera sensor size before running           ####
    cmds.separator(style = "none" )
    cmds.button(label = "Manual settings", command = 'inputLensCensorSize()')
    
    cmds.separator( height = 40 )
    cmds.separator( height = 40 )
    
    ####                Convert tracking data to the actual camera              ####
    cmds.separator(style = "none" )
    cmds.button(label = "Track Camera", command = 'AprilTrack_Solver()')

    cmds.setParent( '..' )
    cmds.showWindow( window ) 

def importHDRI():
    realProject = cmds.workspace( q=True, rootDirectory=True )
    chosenFileList = cmds.fileDialog2(fm=3, ds=1, cap="Open", ff='Directory' ,okc="Select directory", hfe=0)
    chosenFileString = str(chosenFileList)
    chosenFileString = (chosenFileString[3:])
    chosenFileString = (chosenFileString[:-2])
    cmds.textField('PickHDRI', edit=1, text=chosenFileString)
    cmds.workspace( realProject, o=True )
    return (chosenFileString)

if __name__ == '__main__':
    main()
