import maya.cmds as cmds
import os
from shutil import copyfile
from functools import partial

####    Copyright 2019 DUBOIX Emanuelle Xuan and TEILLET Martin  - Licensed under the Apache License, Version 2.0 (the "License");
####    you may not use this file except in compliance with the License. You may obtain a copy of the License at:
####   http://www.apache.org/licenses/LICENSE-2.0

def main():
    # Kill existing window if it is already displayed on the screen
    if cmds.window("winID", exists = True):
        cmds.deleteUI("winID")

    
    # Window
    
    windowWidth = 400
    window = cmds.window("winID", title="Renderman_Auto_Lookdev", iconName='RmanLookDev', widthHeight=(windowWidth, 400) )
    ####            Header          ####
    cmds.rowColumnLayout( numberOfColumns=1, columnWidth=[(1, windowWidth)])
    cmds.text( label = "Renderman Auto Lookdev", font = "boldLabelFont", backgroundColor = [0.290, 0.705, 0.909], enableBackground = True, height = 80)
    cmds.separator()
    
    
    # Layout
    cmds.rowColumnLayout( numberOfColumns=1 )
    
    cmds.separator( height = 40 )
    
    # AutoLookdev
    cmds.button(label = "AutoLookdev", command = 'lookdevAuto()')
    
    # Layout
    cmds.separator( height = 40 )

    # Set Global Scale
    # Hidden slider, serves only to define varible
    scaleSlider = cmds.floatSliderGrp(label = "Lookdev Global Scale", min=0.001, max=100, value=1, precision = 3, field = True, dragCommand ='placeholder', changeCommand = 'placeholder')
    # Slider calling the function as the variable is now defined
    cmds.floatSliderGrp(scaleSlider, edit = True, dragCommand = partial(updateSize, scaleSlider), changeCommand = partial(updateSize, scaleSlider))
    # Force update if the value is entered as string
       
    # Layout
    cmds.separator( height = 40 )
    
    # Set background Type
    bgStyle = cmds.optionMenu( label="Background Type", changeCommand="placeholder")
    cmds.menuItem( label="Plane" )
    cmds.menuItem( label="Cyclo" )
    cmds.optionMenu(bgStyle, edit = True, changeCommand = partial(updateBgType, bgStyle))
    
    # Set Cyclo Type
    cycloStyle = cmds.optionMenu(label = "Cyclo Type", changeCommand = 'placeholder')
    cmds.menuItem(label = "Constant Color")
    cmds.menuItem(label = "Checker")
    cmds.optionMenu(cycloStyle, edit = True, changeCommand = partial(updateCycloType, cycloStyle))
    
    # Set Background Color
    colorStyle = cmds.floatSliderGrp(label = "Background Value", min = 0, max = 1, value = 0.02, precision = 3, field = True, dragCommand = 'placefolder', changeCommand = 'placeholder')
    cmds.floatSliderGrp(colorStyle, edit = True, dragCommand = partial(udateBgValue, colorStyle), changeCommand = partial(udateBgValue, colorStyle))
    
    # Layout
    cmds.separator( height = 40 )
    
    
    # Show window
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
    
    # Import Lookdev as reference if it does not exist in the scene
    importLookdev(projectScene)
    
    # Set the shadow output in the Beauty Alpha
    setRmanShadow()
    
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

# Importing the lookdev as reference
def importLookdev(projectScene):
    print("Import Lookdev as reference")
    cmds.file(projectScene, r=True, uns = False )

# Set the output of the shadows in the beauty alpha and deactivate the learn light from results
def setRmanShadow():
    print("Set Renderman Shadow output in Beauty's Alpha")
    cmds.setAttr("rmanGlobals.outputShadowAOV", 1)
    cmds.setAttr("rmanGlobals.learnLightSelection", 0)



####    Update Lookdev Size     ####

def updateSize(scaleSlider, *args):
    globalScale = (cmds.floatSliderGrp(scaleSlider, q=True, v=True))
    print(globalScale)
    cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.Lookdev_GlobalScale", globalScale)

####    Update Background Type     ####
def updateBgType(bgStyle, *args):
    bgType = (cmds.optionMenu(bgStyle, q=True, v=True))
    if bgType == "Plane":
        print("Setting the Background to infinite")
        cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.BackgroundType", 0)
    else:
        print("Setting the Background to Cyclo  ")
        cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.BackgroundType", 1)


####    Update Cyclo Type     ####
def updateCycloType(cycloStyle, *args):
    cycloType = (cmds.optionMenu(cycloStyle, q=True, v=True))
    if cycloType == "Constant Color":
        print("Setting the Cyclo to constant color")
        cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.Lookdev_Cyclo_Type", 0)
    else : 
        print("Setting the Cyclo to Grid texture")
        cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.Lookdev_Cyclo_Type", 1)
        

####    Update Background Color     ####        
def udateBgValue(colorStyle, *args):
    bgValue = (cmds.floatSliderGrp(colorStyle, q=True, v=True))
    print("Setting the Background Value to "+ str(bgValue))
    cmds.setAttr("Lookdev_Scene_v01_Rman_Lookdev_CTRL.Lookdev_Background_Color", bgValue)

if __name__ == '__main__':
    main()