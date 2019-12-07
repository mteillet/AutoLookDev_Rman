import maya.cmds as cmds
import os
from shutil import copyfile

####    Copyright 2019 DUBOIX Emanuelle Xuan and TEILLET Martin  - Licensed under the Apache License, Version 2.0 (the "License");
####    you may not use this file except in compliance with the License. You may obtain a copy of the License at:
####   http://www.apache.org/licenses/LICENSE-2.0

def main():
    # Kill existing window if it is already displayed on the screen
    if cmds.window("winID", exists = True):
        cmds.deleteUI("winID")

    
    # Window
    
    windowWidth = 600
    window = cmds.window("winID", title="Renderman_Auto_Lookdev", iconName='RmanLookDev', widthHeight=(windowWidth, 600) )
    ####            Header          ####
    cmds.rowColumnLayout( numberOfColumns=1, columnWidth=[(1, windowWidth)])
    cmds.text( label = "Renderman Auto Lookdev", font = "boldLabelFont", backgroundColor = [0.290, 0.705, 0.909], enableBackground = True, height = 80)
    cmds.separator()
    
    # Layout
    cmds.rowColumnLayout( numberOfColumns=2, columnWidth=[(1, 250), (2, 350)] )
    cmds.separator( height = 40 )
    cmds.separator( height = 40 )
    
    # AutoLookdev
    cmds.text(label = "Set Auto Lookdev")
    cmds.button(label = "AutoLookdev", command = 'lookdevAuto()')
    
    cmds.showWindow( window ) 
   


####        Auto Lookdev set up definitions         ####

def lookdevAuto():
    # Get srcIMG folder in project and check if AutoLookdev folder is present
    project = getProjectPath()
    srcIMG = project + "sourceimages/"
    srcIMGlookDev = srcIMG + "RmanAutoLookdev"
    # Get the script Path folder before copying the HDRI
    scriptFolder = getScriptPath()
    # Create the folder if needed
    checkFolderExists(srcIMGlookDev)
    # Copy the HDRI and ColorChecker if needed
    srcIMGhdrTex = srcIMGlookDev + "/DefaultHDR.hdr.tex"
    srcIMGhdrHdr = srcIMGlookDev + "/DefaultHDR.hdr"
    srcIMGcolorCheckerTex = srcIMGlookDev + "/DefaultColorChecker.png.tex"
    srcIMGcolorCheckerPng = srcIMGlookDev + "/DefaultColorChecker.png"
    scriptHdrTex = scriptFolder + "DefaultHDR.hdr.tex"
    scriptHdrHdr = scriptFolder + "DefaultHDR.hdr"
    scriptColorCheckerTex = scriptFolder + "DefaultColorChecker.png.tex"
    scriptColorCheckerPng = scriptFolder + "DefaultColorChecker.png"
    checkHdrExists(scriptHdrTex, scriptHdrHdr, srcIMGhdrTex, srcIMGhdrHdr, scriptColorCheckerTex, scriptColorCheckerPng, srcIMGcolorCheckerTex, srcIMGcolorCheckerPng)
    # Check if the Lookdev scene exists and copies it if not
    scriptScene = scriptFolder + "Lookdev_Scene_v01.ma"
    projectScene = srcIMGlookDev + "/Lookdev_Scene_v01.ma"
    checkSceneExists(scriptScene, projectScene)
    # Set the output holdout matte in alpha
    
# Get the string for the maya project path 
def getProjectPath():
    realProject = cmds.workspace( q=True, rootDirectory=True )
    return(realProject)
    
# Get the string for the script directory
def getScriptPath():
    scriptPath = os.path.expanduser('~') + "/maya/2019/scripts/AutoLookdev_Rman_v01_0/"
    return(scriptPath)

# Check if the RmanAutoLookdev folder exists in the project
def checkFolderExists(srcIMGlookDev):
    if not os.path.exists(srcIMGlookDev):
        os.makedirs(srcIMGlookDev)
    else:
        print("RmanAutoLookdev folder already exists")

# Check if the HDRI & ColorChecker exists in the RmanAutoLookdev folder
def checkHdrExists(scriptHdrTex, scriptHdrHdr, srcIMGhdrTex, srcIMGhdrHdr, scriptColorCheckerTex, scriptColorCheckerPng, srcIMGcolorCheckerTex, srcIMGcolorCheckerPng):
    # Check and copy HDR
    if not os.path.exists(srcIMGhdrTex):
        copyfile(scriptHdrTex, srcIMGhdrTex)
        copyfile(scriptHdrHdr, srcIMGhdrHdr)
    else:
        print('default HDR is already in the project RmanAutoLookdev folder')
    # Check and copy ColorChecker
    if not os.path.exists(srcIMGcolorCheckerTex):
        copyfile(scriptColorCheckerTex, srcIMGcolorCheckerTex)
        copyfile(scriptColorCheckerPng, srcIMGcolorCheckerPng)
    else:
        print('default Color Checker is already in the project RmanAutoLookdev folder')

def checkSceneExists(scriptScene, projectScene):
    # Check and copy HDR
    if not os.path.exists(projectScene):
        copyfile(scriptScene, projectScene)
    else:
        print('Lookdev scene is already in the project RmanAutoLookdev folder')
    # Check and copy ColorChecker

if __name__ == '__main__':
    main()