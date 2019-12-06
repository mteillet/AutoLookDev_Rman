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
    # Copy the HDRI if needed
    srcIMGhdr = srcIMGlookDev + "/DefaultHDR.hdr.tex"
    scriptHdr = scriptFolder + "DefaultHDR.hdr.tex"
    checkHdrExists(scriptHdr, srcIMGhdr)
    
    # Copy the backdrop if needed
    # Copy Camera and ShaderBalls if needed
    
    # Create Distant light
    # Create Domelight and link to HDRI
    # Create RimLight
    
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

# Check if the HDRI exists in the RmanAutoLookdev folder
def checkHdrExists(scriptHdr, srcIMGhdr):
    if not os.path.exists(srcIMGhdr):
        copyfile(scriptHdr, srcIMGhdr)
    else:
        print('default HDR is already in the project RmanAutoLookdev folder')

if __name__ == '__main__':
    main()
