//Maya ASCII 2019 scene
//Name: Lookdev_Scene_v01.ma
//Last modified: Mon, Dec 09, 2019 03:18:02 PM
//Codeset: 1252
requires maya "2019";
requires -nodeType "colorConstant" "lookdevKit" "1.0";
requires -nodeType "displayPoints" "Type" "2.0a";
requires "stereoCamera" "10.0";
requires -nodeType "PxrLayer" -nodeType "PxrSurface" -nodeType "PxrDomeLight" -nodeType "PxrRemap"
		 -nodeType "rmanDisplayChannel" -nodeType "PxrLayerMixer" -nodeType "PxrTexture" -nodeType "PxrChecker"
		 -nodeType "d_openexr" -nodeType "rmanGlobals" -nodeType "PxrLayerSurface" -nodeType "PxrRectLight"
		 -nodeType "PxrPathTracer" -nodeType "PxrDistantLight" -nodeType "rmanDisplay" "RenderMan_for_Maya.py" "22.6 @ 1987751";
requires "mtoa" "3.2.2";
requires -nodeType "renderSetup" -nodeType "lightItem" -nodeType "lightEditor" "renderSetup.py" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17763)\n";
createNode transform -s -n "persp";
	rename -uid "1B5DF661-4606-EDA8-B991-F494836455EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 34.578219575230079 31.502622443643169 225.63420630906774 ;
	setAttr ".r" -type "double3" 360.26164727223511 393.00000000004508 1.4813971300924078e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A659C2CF-4C01-9962-8ABB-77AE321779D8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 300.56355188572354;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 74.99999966619967 -50 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0EE7CDCF-4AA0-19AB-4979-BD86027040CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FDEA6588-4F73-1CA2-91EA-11B71D977979";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C9048638-4D64-121C-6FD4-419AA1678B5C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "713B97C9-4DFE-608A-4178-0EA7264E85CD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "19308567-4911-E337-E024-3491B6A69F7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BB417B2B-4EDE-2C9C-45EC-D9B78E623763";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "lookdev_ALL_grp";
	rename -uid "B3A4AA90-4C03-5317-941D-AEAD8D2940A8";
createNode transform -n "Lookdev_LIGHT_grp" -p "lookdev_ALL_grp";
	rename -uid "FD4A8397-40F9-83F8-3C1F-A2A6494FA419";
createNode transform -n "Lookdev_RimLight" -p "Lookdev_LIGHT_grp";
	rename -uid "46ECE90F-4E02-66CF-E7F8-05AC7B13D0D5";
	setAttr ".t" -type "double3" -34.613959324967887 64.759090081369365 -8.6370576030289623 ;
	setAttr ".r" -type "double3" -58.777270295280509 -139.4421488595369 17.504006431059068 ;
	setAttr ".s" -type "double3" 78.173775875140947 78.173775875140947 78.173775875140947 ;
	setAttr ".rpt" -type "double3" -11.308837778304731 13.957654968999904 -27.240213293078476 ;
createNode PxrRectLight -n "Lookdev_RimLightShape" -p "Lookdev_RimLight";
	rename -uid "6B61B7B5-4D5E-7074-14C8-CEA8AFA2557B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".isc" no;
	setAttr ".bbx" no;
	setAttr ".icn" -type "string" "";
	setAttr ".vwm" 2;
	setAttr ".tpv" 0;
	setAttr ".uit" 0;
	setAttr -k off ".v" yes;
	setAttr ".io" no;
	setAttr ".tmp" no;
	setAttr ".gh" no;
	setAttr ".obcc" -type "float3" 0 0 0 ;
	setAttr ".wfcc" -type "float3" 0 0 0 ;
	setAttr ".uoc" 0;
	setAttr ".oc" 0;
	setAttr ".ovdt" 0;
	setAttr ".ovlod" 0;
	setAttr ".ovs" no;
	setAttr ".ovt" yes;
	setAttr ".ovp" yes;
	setAttr ".ove" yes;
	setAttr ".ovv" yes;
	setAttr ".hpb" no;
	setAttr ".ovrgbf" no;
	setAttr ".ovc" 0;
	setAttr ".ovrgb" -type "float3" 0 0 0 ;
	setAttr ".lodv" yes;
	setAttr ".sech" yes;
	setAttr ".rlid" 0;
	setAttr ".rndr" yes;
	setAttr ".lovc" 0;
	setAttr ".gc" 0;
	setAttr ".gpr" 3;
	setAttr ".gps" 3;
	setAttr ".gss" 1;
	setAttr ".gap" 1;
	setAttr ".gcp" -type "float3" 0.447 1 1 ;
	setAttr ".gla" 1;
	setAttr ".gac" -type "float3" 0.87800002 0.67799997 0.66299999 ;
	setAttr ".grs" 0;
	setAttr ".gre" 100;
	setAttr ".rt" 0;
	setAttr ".rv" no;
	setAttr ".vf" 1;
	setAttr ".hfm" 1;
	setAttr ".mb" yes;
	setAttr ".vir" no;
	setAttr ".vif" no;
	setAttr ".csh" yes;
	setAttr ".rcsh" yes;
	setAttr ".asbg" no;
	setAttr ".vbo" no;
	setAttr ".mvs" 1;
	setAttr ".gao" no;
	setAttr ".gal" 1;
	setAttr ".sso" no;
	setAttr ".ssa" 1;
	setAttr ".msa" 1;
	setAttr ".vso" no;
	setAttr ".vss" 1;
	setAttr ".dej" no;
	setAttr ".iss" no;
	setAttr ".vis" no;
	setAttr ".tw" no;
	setAttr ".rtw" yes;
	setAttr ".pv" -type "double2" 0 0 ;
	setAttr ".di" no;
	setAttr ".dcol" no;
	setAttr ".dcc" -type "string" "color";
	setAttr ".clst[0].clam" no;
	setAttr ".clst[0].rprt" 4;
	setAttr ".ih" no;
	setAttr ".ds" yes;
	setAttr ".op" no;
	setAttr ".hot" no;
	setAttr ".smo" yes;
	setAttr ".bbs" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".fbda" yes;
	setAttr ".dsr" 6;
	setAttr ".xsr" 5;
	setAttr ".fth" 0;
	setAttr ".nat" 30;
	setAttr ".dhe" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".intensity" 1;
	setAttr ".exposure" 2;
	setAttr ".lightColor" -type "float3" 1 1 1 ;
	setAttr ".lightColorMap" -type "string" "";
	setAttr ".colorMapGamma" -type "float3" 1 1 1 ;
	setAttr ".colorMapSaturation" 1;
	setAttr ".enableTemperature" no;
	setAttr ".temperature" 6500;
	setAttr ".emissionFocus" 0;
	setAttr ".emissionFocusNormalize" no;
	setAttr ".emissionFocusTint" -type "float3" 0 0 0 ;
	setAttr ".specular" 1;
	setAttr ".diffuse" 1;
	setAttr ".intensityNearDist" 0;
	setAttr ".coneAngle" 90;
	setAttr ".coneSoftness" 0;
	setAttr ".iesProfile" -type "string" "";
	setAttr ".iesProfileScale" 0;
	setAttr ".iesProfileNormalize" no;
	setAttr ".enableShadows" no;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowDistance" -1;
	setAttr ".shadowFalloff" -1;
	setAttr ".shadowFalloffGamma" 1;
	setAttr ".shadowSubset" -type "string" "";
	setAttr ".shadowExcludeSubset" -type "string" "";
	setAttr ".areaNormalize" no;
	setAttr ".traceLightPaths" no;
	setAttr ".thinShadow" yes;
	setAttr ".visibleInRefractionPath" no;
	setAttr ".cheapCaustics" no;
	setAttr ".cheapCausticsExcludeGroup" -type "string" "";
	setAttr ".fixedSampleCount" 0;
	setAttr ".lightGroup" -type "string" "";
	setAttr ".importanceMultiplier" 1;
	setAttr ".rman__lightfilters[0]" -type "float3"  0 0 0;
	setAttr ".cl" -type "float3" 1 1 1 ;
	setAttr ".ed" yes;
	setAttr ".sn" yes;
	setAttr ".lls" 1;
	setAttr ".de" 2;
	setAttr ".urs" yes;
	setAttr ".col" 5;
	setAttr ".hio" no;
	setAttr ".uocol" no;
	setAttr ".oclr" -type "float3" 0 0 0 ;
	setAttr ".rman_coneAngleDepth" 10;
	setAttr ".rman_coneAngleOpacity" 0.5;
createNode transform -n "Lookdev_Turning_Lights_grp" -p "Lookdev_LIGHT_grp";
	rename -uid "1E5350D6-4A47-E08E-C7A8-23AA34089885";
createNode transform -n "Lookdev_Domelight" -p "Lookdev_Turning_Lights_grp";
	rename -uid "18BC85CE-4086-DDF2-76D2-96A43482BFA3";
	setAttr ".lodv" no;
createNode PxrDomeLight -n "Lookdev_DomelightShape" -p "Lookdev_Domelight";
	rename -uid "DC7DEE5B-4539-29AE-612C-C49CF605DBF3";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".isc" no;
	setAttr ".bbx" no;
	setAttr ".icn" -type "string" "";
	setAttr ".vwm" 2;
	setAttr ".tpv" 0;
	setAttr ".uit" 0;
	setAttr -k off ".v" yes;
	setAttr ".io" no;
	setAttr ".tmp" no;
	setAttr ".gh" no;
	setAttr ".obcc" -type "float3" 0 0 0 ;
	setAttr ".wfcc" -type "float3" 0 0 0 ;
	setAttr ".uoc" 0;
	setAttr ".oc" 0;
	setAttr ".ovdt" 0;
	setAttr ".ovlod" 0;
	setAttr ".ovs" yes;
	setAttr ".ovt" yes;
	setAttr ".ovp" yes;
	setAttr ".ove" no;
	setAttr ".ovv" yes;
	setAttr ".hpb" no;
	setAttr ".ovrgbf" no;
	setAttr ".ovc" 0;
	setAttr ".ovrgb" -type "float3" 0 0 0 ;
	setAttr ".lodv" yes;
	setAttr ".sech" yes;
	setAttr ".rlid" 0;
	setAttr ".rndr" yes;
	setAttr ".lovc" 0;
	setAttr ".gc" 0;
	setAttr ".gpr" 3;
	setAttr ".gps" 3;
	setAttr ".gss" 1;
	setAttr ".gap" 1;
	setAttr ".gcp" -type "float3" 0.447 1 1 ;
	setAttr ".gla" 1;
	setAttr ".gac" -type "float3" 0.87800002 0.67799997 0.66299999 ;
	setAttr ".grs" 0;
	setAttr ".gre" 100;
	setAttr ".rt" 0;
	setAttr ".rv" no;
	setAttr ".vf" 1;
	setAttr ".hfm" 1;
	setAttr ".mb" yes;
	setAttr ".vir" no;
	setAttr ".vif" no;
	setAttr ".csh" yes;
	setAttr ".rcsh" yes;
	setAttr ".asbg" no;
	setAttr ".vbo" no;
	setAttr ".mvs" 1;
	setAttr ".gao" no;
	setAttr ".gal" 1;
	setAttr ".sso" no;
	setAttr ".ssa" 1;
	setAttr ".msa" 1;
	setAttr ".vso" no;
	setAttr ".vss" 1;
	setAttr ".dej" no;
	setAttr ".iss" no;
	setAttr ".vis" no;
	setAttr ".tw" no;
	setAttr ".rtw" yes;
	setAttr ".pv" -type "double2" 0 0 ;
	setAttr ".di" no;
	setAttr ".dcol" no;
	setAttr ".dcc" -type "string" "color";
	setAttr ".ih" no;
	setAttr ".ds" yes;
	setAttr ".op" no;
	setAttr ".hot" no;
	setAttr ".smo" yes;
	setAttr ".bbs" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".fbda" yes;
	setAttr ".dsr" 6;
	setAttr ".xsr" 5;
	setAttr ".fth" 0;
	setAttr ".nat" 30;
	setAttr ".dhe" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".intensity" 1;
	setAttr ".exposure" 0.5;
	setAttr ".lightColor" -type "float3" 1 1 1 ;
	setAttr ".lightColorMap" -type "string" "C:/Users/3D3/Documents/maya/2019/scripts/AutoLookdev_Rman_v01_0/DefaultHDR.hdr";
	setAttr ".colorMapGamma" -type "float3" 1 1 1 ;
	setAttr ".colorMapSaturation" 0;
	setAttr ".enableTemperature" no;
	setAttr ".temperature" 6500;
	setAttr ".specular" 1;
	setAttr ".diffuse" 1;
	setAttr ".enableShadows" yes;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowDistance" -1;
	setAttr ".shadowFalloff" -1;
	setAttr ".shadowFalloffGamma" 1;
	setAttr ".shadowSubset" -type "string" "";
	setAttr ".shadowExcludeSubset" -type "string" "";
	setAttr ".traceLightPaths" no;
	setAttr ".thinShadow" yes;
	setAttr ".visibleInRefractionPath" yes;
	setAttr ".cheapCaustics" no;
	setAttr ".cheapCausticsExcludeGroup" -type "string" "";
	setAttr ".fixedSampleCount" 0;
	setAttr ".lightGroup" -type "string" "";
	setAttr ".importanceMultiplier" 1;
	setAttr ".rman__lightfilters[0]" -type "float3"  0 0 0;
	setAttr ".cl" -type "float3" 1 1 1 ;
	setAttr ".ed" yes;
	setAttr ".sn" yes;
	setAttr ".lls" 1;
	setAttr ".de" 2;
	setAttr ".urs" yes;
	setAttr ".col" 5;
	setAttr ".hio" no;
	setAttr ".uocol" no;
	setAttr ".oclr" -type "float3" 0 0 0 ;
	setAttr ".locatorScale" 2500;
	setAttr ".rman_textureResolution" 1024;
	setAttr ".rman__portals[0]" -type "string" "";
createNode transform -n "Lookdev_KeytLight" -p "Lookdev_Turning_Lights_grp";
	rename -uid "D9248CE3-4988-7C76-9941-6A97E8330F2B";
	setAttr ".t" -type "double3" -2.0035905998910393e-06 122.11518347456568 -4.5126326508930212e-06 ;
	setAttr ".r" -type "double3" -30.000000000000544 35 -5.366361091733053e-15 ;
	setAttr ".rpt" -type "double3" 4.3301270189221821 2.5000000000000218 -5.0000000000000107 ;
createNode PxrDistantLight -n "Lookdev_KeytLightShape" -p "Lookdev_KeytLight";
	rename -uid "FAB080A6-44BC-DDE7-58CE-1A9EA44CB813";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".isc" no;
	setAttr ".bbx" no;
	setAttr ".icn" -type "string" "";
	setAttr ".vwm" 2;
	setAttr ".tpv" 0;
	setAttr ".uit" 0;
	setAttr -k off ".v" yes;
	setAttr ".io" no;
	setAttr ".tmp" no;
	setAttr ".gh" no;
	setAttr ".obcc" -type "float3" 0 0 0 ;
	setAttr ".wfcc" -type "float3" 0 0 0 ;
	setAttr ".uoc" 0;
	setAttr ".oc" 0;
	setAttr ".ovdt" 0;
	setAttr ".ovlod" 0;
	setAttr ".ovs" no;
	setAttr ".ovt" yes;
	setAttr ".ovp" yes;
	setAttr ".ove" yes;
	setAttr ".ovv" yes;
	setAttr ".hpb" no;
	setAttr ".ovrgbf" no;
	setAttr ".ovc" 0;
	setAttr ".ovrgb" -type "float3" 0 0 0 ;
	setAttr ".lodv" yes;
	setAttr ".sech" yes;
	setAttr ".rlid" 0;
	setAttr ".rndr" yes;
	setAttr ".lovc" 0;
	setAttr ".gc" 0;
	setAttr ".gpr" 3;
	setAttr ".gps" 3;
	setAttr ".gss" 1;
	setAttr ".gap" 1;
	setAttr ".gcp" -type "float3" 0.447 1 1 ;
	setAttr ".gla" 1;
	setAttr ".gac" -type "float3" 0.87800002 0.67799997 0.66299999 ;
	setAttr ".grs" 0;
	setAttr ".gre" 100;
	setAttr ".rt" 0;
	setAttr ".rv" no;
	setAttr ".vf" 1;
	setAttr ".hfm" 1;
	setAttr ".mb" yes;
	setAttr ".vir" no;
	setAttr ".vif" no;
	setAttr ".csh" yes;
	setAttr ".rcsh" yes;
	setAttr ".asbg" no;
	setAttr ".vbo" no;
	setAttr ".mvs" 1;
	setAttr ".gao" no;
	setAttr ".gal" 1;
	setAttr ".sso" no;
	setAttr ".ssa" 1;
	setAttr ".msa" 1;
	setAttr ".vso" no;
	setAttr ".vss" 1;
	setAttr ".dej" no;
	setAttr ".iss" no;
	setAttr ".vis" no;
	setAttr ".tw" no;
	setAttr ".rtw" yes;
	setAttr ".pv" -type "double2" 0 0 ;
	setAttr ".di" no;
	setAttr ".dcol" no;
	setAttr ".dcc" -type "string" "color";
	setAttr ".clst[0].clam" no;
	setAttr ".clst[0].rprt" 4;
	setAttr ".ih" no;
	setAttr ".ds" yes;
	setAttr ".op" no;
	setAttr ".hot" no;
	setAttr ".smo" yes;
	setAttr ".bbs" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".fbda" yes;
	setAttr ".dsr" 6;
	setAttr ".xsr" 5;
	setAttr ".fth" 0;
	setAttr ".nat" 30;
	setAttr ".dhe" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".intensity" 50000;
	setAttr ".exposure" -1;
	setAttr ".angleExtent" 0.52999997138977051;
	setAttr ".lightColor" -type "float3" 1 1 1 ;
	setAttr ".enableTemperature" no;
	setAttr ".temperature" 6500;
	setAttr ".emissionFocus" 0;
	setAttr ".emissionFocusNormalize" no;
	setAttr ".emissionFocusTint" -type "float3" 0 0 0 ;
	setAttr ".specular" 1;
	setAttr ".diffuse" 1;
	setAttr ".enableShadows" yes;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowDistance" -1;
	setAttr ".shadowFalloff" -1;
	setAttr ".shadowFalloffGamma" 1;
	setAttr ".shadowSubset" -type "string" "";
	setAttr ".shadowExcludeSubset" -type "string" "";
	setAttr ".areaNormalize" no;
	setAttr ".traceLightPaths" no;
	setAttr ".thinShadow" yes;
	setAttr ".visibleInRefractionPath" yes;
	setAttr ".cheapCaustics" no;
	setAttr ".cheapCausticsExcludeGroup" -type "string" "";
	setAttr ".fixedSampleCount" 0;
	setAttr ".lightGroup" -type "string" "";
	setAttr ".importanceMultiplier" 1;
	setAttr ".rman__lightfilters[0]" -type "float3"  0 0 0;
	setAttr ".cl" -type "float3" 1 1 1 ;
	setAttr ".ed" yes;
	setAttr ".sn" yes;
	setAttr ".lls" 1;
	setAttr ".de" 2;
	setAttr ".urs" yes;
	setAttr ".col" 5;
	setAttr ".hio" no;
	setAttr ".uocol" no;
	setAttr ".oclr" -type "float3" 0 0 0 ;
	setAttr ".locatorScale" 10;
createNode transform -n "Lookdev_BG_grp" -p "lookdev_ALL_grp";
	rename -uid "002C570B-4270-4490-C579-82B605F9E61F";
createNode transform -n "Lookdev_Backdrop" -p "Lookdev_BG_grp";
	rename -uid "A0113F34-4EC3-078C-BE5E-02BF66787C72";
createNode mesh -n "Lookdev_BackdropShape" -p "Lookdev_Backdrop";
	rename -uid "14BBE03D-4E28-84F1-2AA8-9391E85C8C4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".csh" no;
	setAttr ".pv" -type "double2" 0.49638385653773587 0.50441134721040726 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.35034645 0.30272344
		 0.49955639 0.30200833 0.64876628 0.30129325 0.50216937 0.84722674 0.35295948 0.84794188
		 0.65137923 0.84651166 0.79797614 0.30057812 0.8005892 0.84579659 0.20113659 0.30343851
		 0.20374957 0.84865701 0.49884126 0.15279844 0.34963137 0.15351352 0.34891629 0.0043036342
		 0.49812618 0.0035885572 0.64805114 0.15208334 0.64733607 0.0028734207 0.797261 0.15136823
		 0.79654598 0.0021583438 0.20042151 0.15422863 0.19970638 0.0050187111 0.94718605
		 0.29986304 0.94908404 0.69587159 0.94979906 0.84508151 0.94647098 0.15065312 0.9457559
		 0.0014432073 0.052641779 0.45336354 0.051926672 0.30415362 0.05453968 0.84937215
		 0.051211596 0.15494373 0.050496489 0.0057338178 0.50288445 0.99643672 0.35367459
		 0.99715179 0.65209436 0.99572158 0.80130428 0.99500656 0.20446467 0.99786687 0.9505142
		 0.99429142 0.055254817 0.99858201 0.053681493 0.67030823 0.50131124 0.66816294 0.35224438
		 0.69873196 0.65052116 0.66744781 0.50145429 0.69801688 0.65066421 0.69730175 0.79973102
		 0.66673279 0.35210133 0.66887808 0.20303449 0.6994471 0.79987413 0.69658673 0.94894087
		 0.66601765 0.20289141 0.66959321 0.053824574 0.70016217 0.20185167 0.45264846 0.05278486
		 0.48321748 0.35106161 0.45193335 0.20199478 0.48250231 0.5002715 0.45121819 0.35120466
		 0.48178723 0.64948142 0.45050311 0.50041455 0.48107213 0.79869127 0.449788 0.64962447
		 0.48035702 0.94790113 0.44907293 0.79883438 0.47964194 0.9480443 0.47892684 0.35197324
		 0.64215076 0.35184515 0.61542356 0.35171705 0.58869624 0.35158893 0.56196904 0.35146087
		 0.53524178 0.35133272 0.50851446 0.20276332 0.6428659 0.20263523 0.61613864 0.20250711
		 0.58941138 0.20237902 0.56268418 0.20225096 0.53595686 0.20212287 0.5092296 0.50118309
		 0.64143574 0.501055 0.61470842 0.50092691 0.58798116 0.50079882 0.56125396 0.50067073
		 0.53452665 0.50054264 0.50779939 0.65039301 0.64072061 0.65026492 0.61399335 0.65013677
		 0.58726609 0.6500088 0.56053883 0.64988065 0.53381157 0.64975256 0.50708425 0.79960293
		 0.64000547 0.79947484 0.61327827 0.79934669 0.58655101 0.79921865 0.55982375 0.79909062
		 0.53309643 0.79896247 0.50636917 0.94881272 0.63929039 0.94868475 0.61256313 0.94855666
		 0.58583587 0.94842851 0.55910861 0.94830048 0.5323813 0.94817233 0.5056541 0.052912951
		 0.50994468 0.053041041 0.536672 0.053169131 0.56339926 0.053297222 0.59012651 0.053425342
		 0.61685371 0.053553402 0.64358097;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 105 ".vt[0:104]"  -50 0 -50 0 0 -50 50 0 -50 -50 0 -100 0 0 -100
		 50 0 -100 -50 100 -150 0 100 -150 50 100 -150 -50 50 -150 0 50 -150 50 50 -150 100 0 -50
		 100 0 -100 100 50 -150 100 100 -150 -100 0 -50 -100 0 -100 -100 50 -150 -100 100 -150
		 -50 0 50 0 0 50 50 0 50 100 0 50 -100 0 50 100 0 0 50 0 0 0 0 0 -50 0 0 -100 0 0
		 150 0 -50 150 0 -100 150 50 -150 150 100 -150 150 0 0 150 0 50 -150 0 -50 -150 0 -100
		 -150 50 -150 -150 100 -150 -150 0 0 -150 0 50 -50 150 -150 0 150 -150 50 150 -150
		 100 150 -150 -100 150 -150 150 150 -150 -150 150 -150 -50 39.99599838 -150 -50 31.096050262 -148.9972229
		 -50 22.64238358 -146.039154053 -50 15.058900833 -141.27412415 -50 8.72586727 -134.94110107
		 -50 3.96084809 -127.35761261 -50 1.002782464 -118.90394592 -50 -3.8162233e-07 -110.0039978027
		 -100 39.99599838 -150 -100 31.096050262 -148.9972229 -100 22.64238358 -146.039154053
		 -100 15.058900833 -141.27412415 -100 8.72586727 -134.94110107 -100 3.96084809 -127.35761261
		 -100 1.002782464 -118.90394592 -100 -3.8162233e-07 -110.0039978027 0 39.99599838 -150
		 0 31.096050262 -148.9972229 0 22.64238358 -146.039154053 0 15.058900833 -141.27412415
		 0 8.72586727 -134.94110107 0 3.96084809 -127.35761261 0 1.002782464 -118.90394592
		 0 -3.8162233e-07 -110.0039978027 50 39.99599838 -150 50 31.096050262 -148.9972229
		 50 22.64238358 -146.039154053 50 15.058900833 -141.27412415 50 8.72586727 -134.94110107
		 50 3.96084809 -127.35761261 50 1.002782464 -118.90394592 50 -3.8162233e-07 -110.0039978027
		 100 39.99599838 -150 100 31.09605217 -148.9972229 100 22.64238548 -146.039154053
		 100 15.058900833 -141.27412415 100 8.72586727 -134.94110107 100 3.96084857 -127.35761261
		 100 1.0027828217 -118.90394592 100 -1.9081116e-07 -110.0039978027 150 39.99599838 -150
		 150 31.09605217 -148.9972229 150 22.64238548 -146.039154053 150 15.058900833 -141.27412415
		 150 8.72586727 -134.94110107 150 3.96084857 -127.35761261 150 1.0027828217 -118.90394592
		 150 -1.9081116e-07 -110.0039978027 -150 -3.8162233e-07 -110.0039978027 -150 1.002782464 -118.90394592
		 -150 3.96084809 -127.35761261 -150 8.72586727 -134.94110107 -150 15.058900833 -141.27412415
		 -150 22.64238358 -146.039154053 -150 31.096050262 -148.9972229 -150 39.99599838 -150;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 4 5 1 6 7 0 7 8 0
		 9 6 0 10 7 1 11 8 0 9 10 1 10 11 1 2 12 0 5 13 1 12 13 0 11 14 1 8 15 0 14 15 0 0 16 0
		 3 17 1 16 17 0 9 18 1 6 19 0 18 19 0 0 28 0 1 27 0 20 21 0 2 26 0 21 22 0 12 25 0
		 22 23 0 16 29 0 20 24 0 25 23 0 26 22 0 27 21 0 28 20 0 29 24 0 25 26 1 26 27 1 27 28 1
		 28 29 1 12 30 0 13 31 1 30 31 0 14 32 1 15 33 0 32 33 0 25 34 0 30 34 0 23 35 0 34 35 0
		 16 36 0 17 37 1 36 37 0 18 38 1 19 39 0 38 39 0 29 40 0 36 40 0 24 41 0 40 41 0 6 42 0
		 7 43 0 42 43 0 8 44 0 43 44 0 15 45 0 44 45 0 19 46 0 42 46 0 33 47 0 45 47 0 39 48 0
		 46 48 0 31 96 0 37 97 0 89 32 0 104 38 0 66 65 1 65 49 1 67 66 1 68 67 1 69 68 1
		 70 69 1 71 70 1 56 72 1 72 71 1 56 55 1 64 56 1 55 54 1 54 53 1 53 52 1 52 51 1 51 50 1
		 50 49 1 49 57 1 64 63 1 63 98 1 98 97 0 97 64 1 63 62 1 62 99 1 99 98 0 62 61 1 61 100 1
		 100 99 0 61 60 1 60 101 1 101 100 0 60 59 1 59 102 1 102 101 0 59 58 1 58 103 1 103 102 0
		 58 57 1 57 104 1 104 103 0 74 73 1 73 65 1 75 74 1 76 75 1 77 76 1 78 77 1 79 78 1
		 72 80 1 80 79 1 82 81 1 81 73 1 83 82 1 84 83 1 85 84 1 86 85 1 87 86 1 80 88 1 88 87 1
		 90 89 0 89 81 1 91 90 0 92 91 0 93 92 0 94 93 0 95 94 0 88 96 1 96 95 0 65 10 1 9 49 1
		 73 11 1 81 14 1 18 57 1 17 64 1 3 56 1 4 72 1 5 80 1 13 88 1 55 71 1 54 70 1 53 69 1
		 52 68 1 51 67 1 50 66 1 55 63 1 54 62 1;
	setAttr ".ed[166:187]" 53 61 1 52 60 1 51 59 1 50 58 1 71 79 1 70 78 1 69 77 1
		 68 76 1 67 75 1 66 74 1 79 87 1 78 86 1 77 85 1 76 84 1 75 83 1 74 82 1 87 95 1 86 94 1
		 85 93 1 84 92 1 83 91 1 82 90 1;
	setAttr -s 84 -ch 336 ".fc[0:83]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 54 52
		f 4 2 4 -7 -4
		mu 0 4 1 2 56 54
		f 4 12 10 -8 -10
		mu 0 4 39 41 3 4
		f 4 13 11 -9 -11
		mu 0 4 41 42 5 3
		f 4 -5 14 16 -16
		mu 0 4 56 2 6 58
		f 4 -12 17 19 -19
		mu 0 4 5 42 46 7
		f 4 1 21 -23 -21
		mu 0 4 0 52 50 8
		f 4 9 24 -26 -24
		mu 0 4 39 4 9 45
		f 4 42 38 28 -38
		mu 0 4 10 11 12 13
		f 4 41 37 30 -37
		mu 0 4 14 10 13 15
		f 4 40 36 32 -36
		mu 0 4 16 14 15 17
		f 4 43 39 -35 -39
		mu 0 4 11 18 19 12
		f 4 -15 29 -41 -32
		mu 0 4 6 2 14 16
		f 4 -3 27 -42 -30
		mu 0 4 2 1 10 14
		f 4 -1 26 -43 -28
		mu 0 4 1 0 11 10
		f 4 20 33 -44 -27
		mu 0 4 0 8 18 11
		f 4 -17 44 46 -46
		mu 0 4 58 6 20 60
		f 4 -20 47 49 -49
		mu 0 4 7 46 21 22
		f 4 31 50 -52 -45
		mu 0 4 6 16 23 20
		f 4 35 52 -54 -51
		mu 0 4 16 17 24 23
		f 4 22 55 -57 -55
		mu 0 4 8 50 25 26
		f 4 25 58 -60 -58
		mu 0 4 45 9 27 49
		f 4 -34 54 61 -61
		mu 0 4 18 8 26 28
		f 4 -40 60 63 -63
		mu 0 4 19 18 28 29
		f 4 7 65 -67 -65
		mu 0 4 4 3 30 31
		f 4 8 67 -69 -66
		mu 0 4 3 5 32 30
		f 4 18 69 -71 -68
		mu 0 4 5 7 33 32
		f 4 -25 64 72 -72
		mu 0 4 9 4 31 34
		f 4 48 73 -75 -70
		mu 0 4 7 22 35 33
		f 4 -59 71 76 -76
		mu 0 4 27 9 34 36
		f 4 99 100 101 102
		mu 0 4 53 74 99 51
		f 4 103 104 105 -101
		mu 0 4 74 73 100 99
		f 4 106 107 108 -105
		mu 0 4 73 72 101 100
		f 4 109 110 111 -108
		mu 0 4 72 71 102 101
		f 4 112 113 114 -111
		mu 0 4 71 70 103 102
		f 4 115 116 117 -114
		mu 0 4 70 69 104 103
		f 4 118 119 120 -117
		mu 0 4 69 48 37 104
		f 4 -83 148 -13 149
		mu 0 4 44 38 41 39
		f 4 -123 150 -14 -149
		mu 0 4 38 40 42 41
		f 4 -151 -132 151 -18
		mu 0 4 42 40 43 46
		f 4 -150 23 152 -99
		mu 0 4 44 39 45 48
		f 4 -152 -141 79 -48
		mu 0 4 46 43 47 21
		f 4 -153 57 -81 -120
		mu 0 4 48 45 49 37
		f 4 -56 153 -103 -79
		mu 0 4 25 50 53 51
		f 4 -22 154 -92 -154
		mu 0 4 50 52 55 53
		f 4 5 155 -89 -155
		mu 0 4 52 54 57 55
		f 4 6 156 -129 -156
		mu 0 4 54 56 59 57
		f 4 15 157 -138 -157
		mu 0 4 56 58 61 59
		f 4 45 77 -147 -158
		mu 0 4 58 60 62 61
		f 4 -91 88 89 -159
		mu 0 4 68 55 57 80
		f 4 -93 158 87 -160
		mu 0 4 67 68 80 79
		f 4 -94 159 86 -161
		mu 0 4 66 67 79 78
		f 4 -95 160 85 -162
		mu 0 4 65 66 78 77
		f 4 -96 161 84 -163
		mu 0 4 64 65 77 76
		f 4 -98 163 81 82
		mu 0 4 44 63 75 38
		f 4 -97 162 83 -164
		mu 0 4 63 64 76 75
		f 4 90 164 -100 91
		mu 0 4 55 68 74 53
		f 4 92 165 -104 -165
		mu 0 4 68 67 73 74
		f 4 93 166 -107 -166
		mu 0 4 67 66 72 73
		f 4 94 167 -110 -167
		mu 0 4 66 65 71 72
		f 4 95 168 -113 -168
		mu 0 4 65 64 70 71
		f 4 96 169 -116 -169
		mu 0 4 64 63 69 70
		f 4 97 98 -119 -170
		mu 0 4 63 44 48 69
		f 4 -90 128 129 -171
		mu 0 4 80 57 59 86
		f 4 -88 170 127 -172
		mu 0 4 79 80 86 85
		f 4 -87 171 126 -173
		mu 0 4 78 79 85 84
		f 4 -86 172 125 -174
		mu 0 4 77 78 84 83
		f 4 -85 173 124 -175
		mu 0 4 76 77 83 82
		f 4 -82 175 121 122
		mu 0 4 38 75 81 40
		f 4 -84 174 123 -176
		mu 0 4 75 76 82 81
		f 4 -130 137 138 -177
		mu 0 4 86 59 61 92
		f 4 -128 176 136 -178
		mu 0 4 85 86 92 91
		f 4 -127 177 135 -179
		mu 0 4 84 85 91 90
		f 4 -126 178 134 -180
		mu 0 4 83 84 90 89
		f 4 -125 179 133 -181
		mu 0 4 82 83 89 88
		f 4 -122 181 130 131
		mu 0 4 40 81 87 43
		f 4 -124 180 132 -182
		mu 0 4 81 82 88 87
		f 4 -139 146 147 -183
		mu 0 4 92 61 62 98
		f 4 -137 182 145 -184
		mu 0 4 91 92 98 97
		f 4 -136 183 144 -185
		mu 0 4 90 91 97 96
		f 4 -135 184 143 -186
		mu 0 4 89 90 96 95
		f 4 -134 185 142 -187
		mu 0 4 88 89 95 94
		f 4 -131 187 139 140
		mu 0 4 43 87 93 47
		f 4 -133 186 141 -188
		mu 0 4 87 88 94 93;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_Ground" -p "Lookdev_BG_grp";
	rename -uid "EF193A35-42CC-D9E0-5164-C087D459FAC2";
	setAttr ".rman_holdout" 1;
createNode mesh -n "Lookdev_GroundShape" -p "Lookdev_Ground";
	rename -uid "805A97DB-414D-AC18-6D09-0DA46B0F05D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".csh" no;
	setAttr ".pv" -type "double2" 0.43679386377334595 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 35 ".uvst[0].uvsp[0:34]" -type "float2" 0.29119587 0.29119617
		 0.43679368 0.29119599 0.43679377 0.43679386 0.29119596 0.43679398 0.58239156 0.29119587
		 0.58239168 0.43679377 0.72798938 0.29119578 0.72798949 0.43679366 0.14559816 0.4367941
		 0.14559805 0.2911962 0.43679389 0.53871667 0.58239174 0.53871655 0.29119608 0.53871679
		 0.72798955 0.53871644 0.14559825 0.53871691 0.43679363 0.14559819 0.29119578 0.14559828
		 0.29119566 4.4703484e-07 0.43679351 3.2782555e-07 0.58239138 0.14559808 0.58239126
		 2.8312206e-07 0.72798926 0.14559796 0.72798914 1.0430813e-07 0.14559793 0.14559838
		 0.1455978 5.0663948e-07 0.87358719 0.29119566 0.87358737 0.43679354 0.87358737 0.53871638
		 0.87358713 0.14559786 0.87358707 0 3.054738e-07 0.43679422 1.937151e-07 0.29119632
		 3.9115548e-07 0.53871703 8.1956387e-08 0.14559853 0 6.7055225e-07;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 35 ".pt[0:34]" -type "float3"  50 0 50 0 0 50 -50 0 50 50 
		0 100 0 0 100 -50 0 100 -100 0 50 -100 0 100 100 0 50 100 0 100 50 6.6760066e-07 
		135.0015 0 6.6760066e-07 135.0015 -50 6.6760066e-07 135.0015 -100 0 135.0015 100 
		6.6760066e-07 135.0015 50 0 -50 0 0 -50 -50 0 -50 -100 0 -50 100 0 -50 -100 0 0 -50 
		0 0 0 0 0 50 0 0 100 0 0 -150 0 50 -150 0 100 -150 0 135.0015 -150 0 0 -150 0 -50 
		150 0 50 150 0 100 150 6.6760066e-07 135.0015 150 0 0 150 0 -50;
	setAttr -s 35 ".vt[0:34]"  -100 0 -100 0 0 -100 100 0 -100 -100 0 -200
		 0 0 -200 100 0 -200 200 0 -100 200 0 -200 -200 0 -100 -200 0 -200 -100 -1.3352013e-06 -270.0029907227
		 0 -1.3352013e-06 -270.0029907227 100 -1.3352013e-06 -270.0029907227 200 0 -270.0029907227
		 -200 -1.3352013e-06 -270.0029907227 -100 0 100 0 0 100 100 0 100 200 0 100 -200 0 100
		 200 0 0 100 0 0 0 0 0 -100 0 0 -200 0 0 300 0 -100 300 0 -200 300 0 -270.0029907227
		 300 0 0 300 0 100 -300 0 -100 -300 0 -200 -300 -1.3352013e-06 -270.0029907227 -300 0 0
		 -300 0 100;
	setAttr -s 58 ".ed[0:57]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 4 5 1
		 2 6 0 5 7 1 6 7 0 7 13 0 0 8 0 3 9 1 8 9 0 9 14 0 14 10 0 10 11 0 11 12 0 12 13 0
		 4 11 1 10 3 1 5 12 1 0 23 0 1 22 0 15 16 0 2 21 0 16 17 0 6 20 0 17 18 0 8 24 0 15 19 0
		 20 18 0 21 17 0 22 16 0 23 15 0 24 19 0 20 21 1 21 22 1 22 23 1 23 24 1 6 25 0 7 26 0
		 25 26 0 13 27 0 26 27 0 20 28 0 25 28 0 18 29 0 28 29 0 8 30 0 9 31 0 30 31 0 14 32 0
		 31 32 0 24 33 0 30 33 0 19 34 0 33 34 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 2 3
		f 4 2 4 -7 -4
		mu 0 4 1 4 5 2
		f 4 -5 7 9 -9
		mu 0 4 5 4 6 7
		f 4 1 12 -14 -12
		mu 0 4 0 3 8 9
		f 4 5 19 -17 20
		mu 0 4 3 2 10 12
		f 4 6 21 -18 -20
		mu 0 4 2 5 11 10
		f 4 -22 8 10 -19
		mu 0 4 11 5 7 13
		f 4 -21 -16 -15 -13
		mu 0 4 3 12 14 8
		f 4 38 34 24 -34
		mu 0 4 15 16 17 18
		f 4 37 33 26 -33
		mu 0 4 19 15 18 20
		f 4 36 32 28 -32
		mu 0 4 21 19 20 22
		f 4 39 35 -31 -35
		mu 0 4 16 23 24 17
		f 4 -8 25 -37 -28
		mu 0 4 6 4 19 21
		f 4 -3 23 -38 -26
		mu 0 4 4 1 15 19
		f 4 -1 22 -39 -24
		mu 0 4 1 0 16 15
		f 4 11 29 -40 -23
		mu 0 4 0 9 23 16
		f 4 -10 40 42 -42
		mu 0 4 7 6 25 26
		f 4 -11 41 44 -44
		mu 0 4 13 7 26 27
		f 4 27 45 -47 -41
		mu 0 4 6 21 28 25
		f 4 31 47 -49 -46
		mu 0 4 21 22 29 28
		f 4 13 50 -52 -50
		mu 0 4 9 8 30 31
		f 4 14 52 -54 -51
		mu 0 4 8 14 32 30
		f 4 -30 49 55 -55
		mu 0 4 23 9 31 33
		f 4 -36 54 57 -57
		mu 0 4 24 23 33 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_CAM_grp" -p "lookdev_ALL_grp";
	rename -uid "1E831ED3-41D2-A55C-EA5A-41B8EDDC55D8";
createNode transform -n "Lookdev_CameraScale_LOC" -p "Lookdev_CAM_grp";
	rename -uid "55ECF6B6-41AC-C62E-A200-7DB22AE376A1";
createNode locator -n "Lookdev_CameraScale_LOCShape" -p "Lookdev_CameraScale_LOC";
	rename -uid "359959CB-4E80-30A4-D182-98A6DFD5F72D";
	setAttr -k off ".v";
createNode transform -n "Lookdev_Cam_focal_compensator" -p "Lookdev_CameraScale_LOC";
	rename -uid "664F6E00-4B2E-2BD0-EDC8-23ADCC0DABA9";
	setAttr ".t" -type "double3" -4.0686974132214675e-07 24.797966767514779 133.103 ;
createNode nurbsCurve -n "Lookdev_Cam_focal_compensatorShape" -p "Lookdev_Cam_focal_compensator";
	rename -uid "BAF95F76-447D-17BA-FAEE-9EBB3E03BDA7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.1515520711813565 -5.1515520711813636 -5.2664219963340748e-15
		3.5589556242563042e-16 -7.2853948063358898 -5.2664219963340748e-15
		-5.1515520711813565 -5.1515520711813618 -5.2664219963340748e-15
		-7.2853948063358853 -7.9282266850038548e-15 4.2475108967202423e-15
		-5.1515520711813565 5.1515520711813521 -2.950893252927079e-15
		-8.1998918953989243e-16 7.2853948063358853 -6.3536450952008632e-16
		5.1515520711813565 5.1515520711813521 -5.2664219963340748e-15
		7.2853948063358853 -6.5570438143104289e-15 4.2475108967202423e-15
		5.1515520711813565 -5.1515520711813636 -5.2664219963340748e-15
		3.5589556242563042e-16 -7.2853948063358898 -5.2664219963340748e-15
		-5.1515520711813565 -5.1515520711813618 -5.2664219963340748e-15
		;
createNode transform -n "Lookdev_NoScaleCam_LOC" -p "Lookdev_Cam_focal_compensator";
	rename -uid "C64D38E5-4A3A-431F-3713-31B7E637DC58";
createNode locator -n "Lookdev_NoScaleCam_LOCShape" -p "Lookdev_NoScaleCam_LOC";
	rename -uid "1FE694B0-45B5-4620-5589-83AABDAD731F";
	setAttr -k off ".v";
createNode transform -n "Lookdev_CTRL_grp" -p "Lookdev_CameraScale_LOC";
	rename -uid "B85EC45C-4036-C228-3E23-B4A0D4AFD03B";
	setAttr ".t" -type "double3" -3.9190764305860206 24.389336095163056 121.1450285253044 ;
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
createNode transform -n "Rman_Lookdev_CTRL" -p "Lookdev_CTRL_grp";
	rename -uid "400D1C06-48AF-5FF0-40DF-3A8A292DC9B5";
	addAttr -ci true -sn "Lookdev_GlobalScale" -ln "Lookdev_GlobalScale" -dv 1 -min 
		1e-06 -at "double";
	addAttr -ci true -sn "BackgroundType" -ln "BackgroundType" -min 0 -max 1 -en "Infinite:Cyclo" 
		-at "enum";
	addAttr -ci true -sn "Lookdev_Background_Color" -ln "Lookdev_Background_Color" -dv 
		0.02 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Lookdev_Cyclo_Type" -ln "Lookdev_Cyclo_Type" -min 0 -max 1 
		-en "Flat:Checker" -at "enum";
	addAttr -ci true -sn "Lookdev_ShaderBalls" -ln "Lookdev_ShaderBalls" -min 0 -max 
		1 -en "Full:Minimal" -at "enum";
	addAttr -ci true -sn "Lookdev_ColorChecker" -ln "Lookdev_ColorChecker" -min 0 -max 
		1 -en "On:Off" -at "enum";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".uocol" yes;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr -cb off ".rman_matteObject";
	setAttr -cb off ".rman_holdout";
	setAttr -cb off ".rman_nestedInstancing";
	setAttr -cb off ".rman_maxDiffuseDepth";
	setAttr -cb off ".rman_maxSpecularDepth";
	setAttr -cb off ".rman_relativePixelVariance";
	setAttr -cb off ".rman_intersectPriority";
	setAttr -cb off ".rman_visibilityCamera";
	setAttr -cb off ".rman_visibilityIndirect";
	setAttr -cb off ".rman_visibilityTransmission";
	setAttr -cb off ".rman_motionSamples";
	setAttr -k on ".Lookdev_GlobalScale";
	setAttr -k on ".BackgroundType";
	setAttr -k on ".Lookdev_Background_Color";
	setAttr -k on ".Lookdev_Cyclo_Type";
	setAttr -k on ".Lookdev_ShaderBalls";
	setAttr -k on ".Lookdev_ColorChecker";
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape" -p "Rman_Lookdev_CTRL";
	rename -uid "5F5C950B-4B72-1A3B-2A25-979D3298A041";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-0.25507419406253662 0.05792487055153258 -1.4210854715202004e-14
		-0.27260837606956617 0.05792487055153258 -1.4210854715202004e-14
		-0.27260837606956617 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.26446770382506263 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.26446770382506263 0.024500539366310334 -1.4210854715202004e-14
		-0.25681919486129623 0.024500539366310334 -1.4210854715202004e-14
		-0.2403158482049331 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.23022097372547634 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.24955624584265423 0.027122448325602524 -1.4210854715202004e-14
		-0.24693273679196676 0.028401740421011578 -1.4210854715202004e-14
		-0.24461942518404076 0.029931121394438789 -1.4210854715202004e-14
		-0.24261712808682284 0.031708985146636302 -1.4210854715202004e-14
		-0.24092582947937283 0.033736935774234457 -1.4210854715202004e-14
		-0.23958160851885935 0.035965280326190723 -1.4210854715202004e-14
		-0.23862134540945745 0.038345915929770283 -1.4210854715202004e-14
		-0.23804582517723341 0.040877248501430381 -1.4210854715202004e-14
		-0.23785344572817443 0.043560876129948807 -1.4210854715202004e-14
		-0.23813078422273307 0.046856099142624862 -1.4210854715202004e-14
		-0.23896360075341541 0.049735310408227915 -1.4210854715202004e-14
		-0.2403519113411616 0.052198505921522934 -1.4210854715202004e-14
		-0.24229569996503147 0.054245697698215009 -1.4210854715202004e-14
		-0.24476050558280937 0.055855237442955973 -1.4210854715202004e-14
		-0.24771185113133948 0.057005472855162602 -1.4210854715202004e-14
		-0.25114975263156192 0.057694817861762213 -1.4210854715202004e-14
		-0.25507419406253662 0.05792487055153258 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape1" -p "Rman_Lookdev_CTRL";
	rename -uid "C1150673-4B96-20E1-644A-FD8D8896BDE4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 47 2 no 3
		48 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47
		48
		-0.17385193672213653 0.043443847167547602 -1.4210854715202004e-14
		-0.17803048628448401 0.042885961985169641 -1.4210854715202004e-14
		-0.18179702532955549 0.041213103479807146 -1.4210854715202004e-14
		-0.18515315595136378 0.038424470604453698 -1.4210854715202004e-14
		-0.18809889417084905 0.034520063359109308 -1.4210854715202004e-14
		-0.18998177118035164 0.038424470604453698 -1.4210854715202004e-14
		-0.19254355154872532 0.041213103479807146 -1.4210854715202004e-14
		-0.19578506836485673 0.042885961985169641 -1.4210854715202004e-14
		-0.19970552058173949 0.043443847167547602 -1.4210854715202004e-14
		-0.20392173537432826 0.042885961985169641 -1.4210854715202004e-14
		-0.20773635326072437 0.041213103479807146 -1.4210854715202004e-14
		-0.21115100837682085 0.038424470604453698 -1.4210854715202004e-14
		-0.21416488365467118 0.034520063359109308 -1.4210854715202004e-14
		-0.21416488365467118 0.042504419290782386 -1.4210854715202004e-14
		-0.22187510527981125 0.042504419290782386 -1.4210854715202004e-14
		-0.22187510527981125 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.21416488365467118 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.21416488365467118 0.02849231680864367 -1.4210854715202004e-14
		-0.2108897068433305 0.032225191853270843 -1.4210854715202004e-14
		-0.20771712813257057 0.034891985478949603 -1.4210854715202004e-14
		-0.20464714752239141 0.036491904649143599 -1.4210854715202004e-14
		-0.201679765012793 0.037024941353382773 -1.4210854715202004e-14
		-0.19911156024742793 0.036567251130566358 -1.4210854715202004e-14
		-0.19727677810019009 0.035194977503888468 -1.4210854715202004e-14
		-0.19617623563902598 0.032908120473349123 -1.4210854715202004e-14
		-0.19580911579598911 0.029705880994559414 -1.4210854715202004e-14
		-0.19580911579598911 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.18809889417084905 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.18809889417084905 0.028462660045848923 -1.4210854715202004e-14
		-0.18484055536758306 0.03217469384998687 -1.4210854715202004e-14
		-0.18165674597779327 0.034825458525067403 -1.4210854715202004e-14
		-0.17854587992840704 0.036416558167720846 -1.4210854715202004e-14
		-0.17550795721942433 0.036946390683934391 -1.4210854715202004e-14
		-0.17298544417530479 0.036491904649143599 -1.4210854715202004e-14
		-0.17118433804421634 0.035128446544771236 -1.4210854715202004e-14
		-0.17010303673214616 0.032856018373434819 -1.4210854715202004e-14
		-0.16974232526516056 0.029674620135134333 -1.4210854715202004e-14
		-0.16974232526516056 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.16203210364002049 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.16203210364002049 0.030891390511693227 -1.4210854715202004e-14
		-0.1622268862300987 0.033698461486516673 -1.4210854715202004e-14
		-0.16281041693238682 0.036175286814625729 -1.4210854715202004e-14
		-0.16378271176782497 0.038322669545644311 -1.4210854715202004e-14
		-0.16514377073641315 0.040139812637801059 -1.4210854715202004e-14
		-0.16685511153996349 0.04158502559964744 -1.4210854715202004e-14
		-0.16887663376533521 0.042617439012916515 -1.4210854715202004e-14
		-0.17120918652235512 0.043237044867138232 -1.4210854715202004e-14
		-0.17385193672213653 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape2" -p "Rman_Lookdev_CTRL";
	rename -uid "9CF5FE5B-4925-C6EC-D090-54B855D77AA6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 61 2 no 3
		62 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61
		62
		-0.13265327211461633 0.043443847167547602 -1.4210854715202004e-14
		-0.13615368732321889 0.043245864394678785 -1.4210854715202004e-14
		-0.13976632921741922 0.042651107018595855 -1.4210854715202004e-14
		-0.14349198282328363 0.041660376086305226 -1.4210854715202004e-14
		-0.14732986311474583 0.040273671597806898 -1.4210854715202004e-14
		-0.14732986311474583 0.0338940451236013 -1.4210854715202004e-14
		-0.14385669952530128 0.035537244863551531 -1.4210854715202004e-14
		-0.14051979403164677 0.036711531712125565 -1.4210854715202004e-14
		-0.13732076474873525 0.037416104622316995 -1.4210854715202004e-14
		-0.13425799356161378 0.037650963594125814 -1.4210854715202004e-14
		-0.13088422388472434 0.037188459078800883 -1.4210854715202004e-14
		-0.12847472255226888 0.035801758595537587 -1.4210854715202004e-14
		-0.12702950558518747 0.033490055089476972 -1.4210854715202004e-14
		-0.12654777193647371 0.030254151610242957 -1.4210854715202004e-14
		-0.12654777193647371 0.025126559604435859 -1.4210854715202004e-14
		-0.12834807702055573 0.025126559604435859 -1.4210854715202004e-14
		-0.13350773293541185 0.024893304729257371 -1.4210854715202004e-14
		-0.1380301399357301 0.024191938009709091 -1.4210854715202004e-14
		-0.1419129109014314 0.023024061539803839 -1.4210854715202004e-14
		-0.14515763190558845 0.021388876275152718 -1.4210854715202004e-14
		-0.14771782620088944 0.019318442119569703 -1.4210854715202004e-14
		-0.14954618395113589 0.016844021935097393 -1.4210854715202004e-14
		-0.15064352222427435 0.013966413764815914 -1.4210854715202004e-14
		-0.15100903997329843 0.010684819565645137 -1.4210854715202004e-14
		-0.15079181204610065 0.0082689123604102899 -1.4210854715202004e-14
		-0.15013854219143463 0.0060710291228358356 -1.4210854715202004e-14
		-0.14905001543536667 0.0040911713548849116 -1.4210854715202004e-14
		-0.14752544675183044 0.002328537258569542 -1.4210854715202004e-14
		-0.14567143947643879 0.00088171800972991791 -1.4210854715202004e-14
		-0.14359217778284517 -0.00015149518326417204 -1.4210854715202004e-14
		-0.14128849475993621 -0.00077110249251267058 -1.4210854715202004e-14
		-0.13875877229275899 -0.00097790541874001689 -1.4210854715202004e-14
		-0.13551725547662757 -0.00057952922216747058 -1.4210854715202004e-14
		-0.13221240788416952 0.00061640104037455031 -1.4210854715202004e-14
		-0.12884424553632498 0.0026098852437224512 -1.4210854715202004e-14
		-0.12541276843309393 0.0054009237633670156 -1.4210854715202004e-14
		-0.12442443663658749 0.0026098852437224512 -1.4210854715202004e-14
		-0.1229463607213032 0.00061640104037455031 -1.4210854715202004e-14
		-0.12098012676031376 -0.00057952922216747058 -1.4210854715202004e-14
		-0.11852413265960636 -0.00097790541874001689 -1.4210854715202004e-14
		-0.11697311340391855 -0.00090015391884411592 -1.4210854715202004e-14
		-0.11549103225360223 -0.0006652963238348384 -1.4210854715202004e-14
		-0.11407707214071086 -0.00027333260242128581 -1.4210854715202004e-14
		-0.11273124908618458 0.00027333260241418038 -1.4210854715202004e-14
		-0.1132795176992506 0.0045400460553958102 -1.4210854715202004e-14
		-0.11373962307879135 0.0044711119552593524 -1.4210854715202004e-14
		-0.11414040291703749 0.0044222165466425746 -1.4210854715202004e-14
		-0.11448265826099546 0.0043925592831934486 -1.4210854715202004e-14
		-0.1147664211525455 0.0043829402106096227 -1.4210854715202004e-14
		-0.11654748508753361 0.004796545812737126 -1.4210854715202004e-14
		-0.11781956375464997 0.0060365620727676067 -1.4210854715202004e-14
		-0.11858265715389454 0.0081037900377074722 -1.4210854715202004e-14
		-0.11883674926432722 0.010997428159895937 -1.4210854715202004e-14
		-0.11883674926432722 0.030254151610242957 -1.4210854715202004e-14
		-0.11904755279453361 0.033401080795857692 -1.4210854715202004e-14
		-0.11967839333302019 0.036110361954756344 -1.4210854715202004e-14
		-0.12073084093191953 0.03838118602946243 -1.4210854715202004e-14
		-0.12220330951815896 0.040214358072217404 -1.4210854715202004e-14
		-0.12411824442885802 0.041627509127632301 -1.4210854715202004e-14
		-0.12649887602720253 0.04263667615677541 -1.4210854715202004e-14
		-0.12934361824011986 0.043241855154411708 -1.4210854715202004e-14
		-0.13265327211461633 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape3" -p "Rman_Lookdev_CTRL";
	rename -uid "8E2AD7D3-437C-5FED-7C6C-C3AD7C6A8C07";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		-0.080583005808345751 0.043443847167547602 -1.4210854715202004e-14
		-0.084834498711096759 0.042885961985169641 -1.4210854715202004e-14
		-0.088743720248949665 0.041213103479807146 -1.4210854715202004e-14
		-0.09230986937489806 0.038424470604453698 -1.4210854715202004e-14
		-0.095533747135948366 0.034520063359109308 -1.4210854715202004e-14
		-0.095533747135948366 0.042504419290782386 -1.4210854715202004e-14
		-0.10324396876108843 0.042504419290782386 -1.4210854715202004e-14
		-0.10324396876108843 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.095533747135948366 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.095533747135948366 0.027514410638925638 -1.4210854715202004e-14
		-0.092351539840171415 0.031572721042993725 -1.4210854715202004e-14
		-0.089065949417747425 0.03447116744983815 -1.4210854715202004e-14
		-0.085678545920808938 0.036210556914317883 -1.4210854715202004e-14
		-0.082187743276283295 0.036790086386808987 -1.4210854715202004e-14
		-0.080696834587956359 0.036664237896867229 -1.4210854715202004e-14
		-0.079433567437910496 0.036285903395740636 -1.4210854715202004e-14
		-0.078397156800079443 0.035655875919965559 -1.4210854715202004e-14
		-0.077589172726595754 0.034774159474777022 -1.4210854715202004e-14
		-0.076980793546168852 0.033596662430324803 -1.4210854715202004e-14
		-0.076546353712713427 0.032078504125457374 -1.4210854715202004e-14
		-0.07628583720528935 0.030220485607181137 -1.4210854715202004e-14
		-0.07619927606577688 0.028022602870261062 -1.4210854715202004e-14
		-0.07619927606577688 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.068489054440636826 -3.5527136788005009e-15 -1.4210854715202004e-14
		-0.068489054440636826 0.030527482867152046 -1.4210854715202004e-14
		-0.068693449594791942 0.033332148698338754 -1.4210854715202004e-14
		-0.06930583401025088 0.035836227648223327 -1.4210854715202004e-14
		-0.07032702475496018 0.038038918669799367 -1.4210854715202004e-14
		-0.07175702182891984 0.039941024812690795 -1.4210854715202004e-14
		-0.073534080528875917 0.041473607971526126 -1.4210854715202004e-14
		-0.075597305261401251 0.042567742056638956 -1.4210854715202004e-14
		-0.077947481052562134 0.043225025156807075 -1.4210854715202004e-14
		-0.080583005808345751 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape4" -p "Rman_Lookdev_CTRL";
	rename -uid "B51D1E06-468F-1F9D-763E-E78759046070";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 2 no 3
		7 0 1 2 3 4 5 6
		7
		-0.019912790961682473 0.05792487055153258 -1.4210854715202004e-14
		-0.028132013875634434 0.05792487055153258 -1.4210854715202004e-14
		-0.028132013875634434 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.0061531825011995412 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.0061531825011995412 0.0061447730095913955 -1.4210854715202004e-14
		-0.019912790961682473 0.0061447730095913955 -1.4210854715202004e-14
		-0.019912790961682473 0.05792487055153258 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape5" -p "Rman_Lookdev_CTRL";
	rename -uid "C59ECA8F-4853-5F11-D614-2B9A5CB1A603";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.03149295878995214 0.043443847167547602 -1.4210854715202004e-14
		0.027059516070165577 0.043070322953694493 -1.4210854715202004e-14
		0.02311262930207136 0.041951340390442876 -1.4210854715202004e-14
		0.019652298485669479 0.040086106441256417 -1.4210854715202004e-14
		0.016679292626086091 0.037474621106135114 -1.4210854715202004e-14
		0.014290634536737354 0.034222682668450327 -1.4210854715202004e-14
		0.012584116036165586 0.030434501335883216 -1.4210854715202004e-14
		0.011560538171377189 0.026110876152822673 -1.4210854715202004e-14
		0.011219067853485502 0.021251809121886213 -1.4210854715202004e-14
		0.011560538171377189 0.016391137994319419 -1.4210854715202004e-14
		0.012584116036165586 0.012064306620615728 -1.4210854715202004e-14
		0.014290634536737354 0.0082697134074166973 -1.4210854715202004e-14
		0.016679292626086091 0.0050097614957415543 -1.4210854715202004e-14
		0.019652298485669479 0.0023894558820981276 -1.4210854715202004e-14
		0.02311262930207136 0.00051780895709829637 -1.4210854715202004e-14
		0.027059516070165577 -0.00060357602748187093 -1.4210854715202004e-14
		0.03149295878995214 -0.00097790541874001689 -1.4210854715202004e-14
		0.035927202556745107 -0.00060357602748187093 -1.4210854715202004e-14
		0.039874089324839324 0.00051780895709829637 -1.4210854715202004e-14
		0.043333619094234797 0.0023894558820981276 -1.4210854715202004e-14
		0.046307426000824596 0.0050097614957415543 -1.4210854715202004e-14
		0.048696084090173328 0.0082697134074166973 -1.4210854715202004e-14
		0.050401801543738689 0.012064306620615728 -1.4210854715202004e-14
		0.051426212497413755 0.016391137994319419 -1.4210854715202004e-14
		0.051766849726418776 0.021251809121886213 -1.4210854715202004e-14
		0.051426212497413755 0.026110876152822673 -1.4210854715202004e-14
		0.050401801543738689 0.030434501335883216 -1.4210854715202004e-14
		0.048696084090173328 0.034222682668450327 -1.4210854715202004e-14
		0.046307426000824596 0.037474621106135114 -1.4210854715202004e-14
		0.043333619094234797 0.040086106441256417 -1.4210854715202004e-14
		0.039874089324839324 0.041951340390442876 -1.4210854715202004e-14
		0.035927202556745107 0.043070322953694493 -1.4210854715202004e-14
		0.03149295878995214 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape6" -p "Rman_Lookdev_CTRL";
	rename -uid "072E10C1-4476-7F10-DC5F-939217A16307";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.080388223218268426 0.043443847167547602 -1.4210854715202004e-14
		0.075954780498481866 0.043070322953694493 -1.4210854715202004e-14
		0.072007893730387643 0.041951340390442876 -1.4210854715202004e-14
		0.068547562913985768 0.040086106441256417 -1.4210854715202004e-14
		0.06557456105963741 0.037474621106135114 -1.4210854715202004e-14
		0.063185902970288671 0.034222682668450327 -1.4210854715202004e-14
		0.061479384469716902 0.030434501335883216 -1.4210854715202004e-14
		0.060455806604928504 0.026110876152822673 -1.4210854715202004e-14
		0.060114336287036815 0.021251809121886213 -1.4210854715202004e-14
		0.060455806604928504 0.016391137994319419 -1.4210854715202004e-14
		0.061479384469716902 0.012064306620615728 -1.4210854715202004e-14
		0.063185902970288671 0.0082697134074166973 -1.4210854715202004e-14
		0.06557456105963741 0.0050097614957415543 -1.4210854715202004e-14
		0.068547562913985768 0.0023894558820981276 -1.4210854715202004e-14
		0.072007893730387643 0.00051780895709829637 -1.4210854715202004e-14
		0.075954780498481866 -0.00060357602748187093 -1.4210854715202004e-14
		0.080388223218268426 -0.00097790541874001689 -1.4210854715202004e-14
		0.084822466985061393 -0.00060357602748187093 -1.4210854715202004e-14
		0.088769353753155603 0.00051780895709829637 -1.4210854715202004e-14
		0.092228883522551083 0.0023894558820981276 -1.4210854715202004e-14
		0.095202690429140882 0.0050097614957415543 -1.4210854715202004e-14
		0.097591348518489607 0.0082697134074166973 -1.4210854715202004e-14
		0.099297065972054982 0.012064306620615728 -1.4210854715202004e-14
		0.10032147692573004 0.016391137994319419 -1.4210854715202004e-14
		0.10066214619661532 0.021251809121886213 -1.4210854715202004e-14
		0.10032147692573004 0.026110876152822673 -1.4210854715202004e-14
		0.099297065972054982 0.030434501335883216 -1.4210854715202004e-14
		0.097591348518489607 0.034222682668450327 -1.4210854715202004e-14
		0.095202690429140882 0.037474621106135114 -1.4210854715202004e-14
		0.092228883522551083 0.040086106441256417 -1.4210854715202004e-14
		0.088769353753155603 0.041951340390442876 -1.4210854715202004e-14
		0.084822466985061393 0.043070322953694493 -1.4210854715202004e-14
		0.080388223218268426 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape7" -p "Rman_Lookdev_CTRL";
	rename -uid "669D8ABD-44D6-6DB2-44E1-E4A69588A42D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 11 2 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		0.1200863825943249 0.061799619031464706 -1.4210854715202004e-14
		0.11237614494824472 0.061799619031464706 -1.4210854715202004e-14
		0.11237614494824472 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.1200863825943249 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.1200863825943249 0.021800075732334723 -1.4210854715202004e-14
		0.14008615524519866 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.14996540389147045 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.12918009250423257 0.022656144654995585 -1.4210854715202004e-14
		0.14640244293260757 0.042504419290782386 -1.4210854715202004e-14
		0.13809026652403197 0.042504419290782386 -1.4210854715202004e-14
		0.1200863825943249 0.021877827357394221 -1.4210854715202004e-14
		0.1200863825943249 0.061799619031464706 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape8" -p "Rman_Lookdev_CTRL";
	rename -uid "5EA409DA-4FA5-730D-FA79-12BF2A8A7EF9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 2 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		0.19389578297930377 0.061799619031464706 -1.4210854715202004e-14
		0.18618557737510383 0.061799619031464706 -1.4210854715202004e-14
		0.18618557737510383 0.037650963594125814 -1.4210854715202004e-14
		0.18353561775226473 0.040185500353811549 -1.4210854715202004e-14
		0.18056181084567494 0.041995426012440551 -1.4210854715202004e-14
		0.17726498974422109 0.043081541617019235 -1.4210854715202004e-14
		0.17364512240602295 0.043443847167547602 -1.4210854715202004e-14
		0.16976638871723396 0.043039863141275815 -1.4210854715202004e-14
		0.16628279549576597 0.041829505146003219 -1.4210854715202004e-14
		0.16319277268948648 0.039811171087717 -1.4210854715202004e-14
		0.16049712134540187 0.036985666018658582 -1.4210854715202004e-14
		0.15831125631619541 0.033497268517769678 -1.4210854715202004e-14
		0.15674982344942431 0.029490261169227004 -1.4210854715202004e-14
		0.15581279070320825 0.024965445020036978 -1.4210854715202004e-14
		0.15550019011942751 0.019921215973569262 -1.4210854715202004e-14
		0.15577591049903322 0.015325060580606037 -1.4210854715202004e-14
		0.15660233467460444 0.011241904702325445 -1.4210854715202004e-14
		0.15798019960938706 0.007673351934703438 -1.4210854715202004e-14
		0.15990876834013518 0.0046177976804553057 -1.4210854715202004e-14
		0.16231825365165051 0.0021690262701466144 -1.4210854715202004e-14
		0.16513576026634993 0.00042001842148282973 -1.4210854715202004e-14
		0.16836282619448575 -0.00062842450562065335 -1.4210854715202004e-14
		0.17199871447281206 -0.00097790541874001689 -1.4210854715202004e-14
		0.17644176975667553 -0.00041761371592577618 -1.4210854715202004e-14
		0.18028769256008204 0.0012616584223589665 -1.4210854715202004e-14
		0.18353481670525831 0.0040623153887693834 -1.4210854715202004e-14
		0.18618557737510383 0.0079835553853174965 -1.4210854715202004e-14
		0.18618557737510383 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.19389578297930377 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.19389578297930377 0.061799619031464706 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape9" -p "Rman_Lookdev_CTRL";
	rename -uid "402B2175-4259-9226-CF23-4D9673DEC0C8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 39 2 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		0.22458998175205055 0.043443847167547602 -1.4210854715202004e-14
		0.22070163549918465 0.043057498191121896 -1.4210854715202004e-14
		0.217177957885516 0.041899240293146088 -1.4210854715202004e-14
		0.21401901299480514 0.039968276431848804 -1.4210854715202004e-14
		0.2112239677381654 0.037265411659471483 -1.4210854715202004e-14
		0.20893790774939741 0.033958164931229246 -1.4210854715202004e-14
		0.20730511761529546 0.030216476366914064 -1.4210854715202004e-14
		0.20632559733585951 0.026039536909049473 -1.4210854715202004e-14
		0.20599857790596343 0.021428153612494429 -1.4210854715202004e-14
		0.2063680848690794 0.016692524921319198 -1.4210854715202004e-14
		0.20747663780030759 0.012419398742851386 -1.4210854715202004e-14
		0.20932343565264155 0.008607972027467067 -1.4210854715202004e-14
		0.21190847842608132 0.0052582457764749988 -1.4210854715202004e-14
		0.21508427734580701 0.0025297292260077833 -1.4210854715202004e-14
		0.21869930636008644 0.00058033076982115235 -1.4210854715202004e-14
		0.22275523164669295 -0.00058834637159972463 -1.4210854715202004e-14
		0.22725118807485961 -0.00097790541874001689 -1.4210854715202004e-14
		0.23014963247908651 -0.00083121963096226628 -1.4210854715202004e-14
		0.23332783453983144 -0.00039116217375631816 -1.4210854715202004e-14
		0.23678416012120126 0.00034226689029603002 -1.4210854715202004e-14
		0.24051944231208269 0.0013690675611947782 -1.4210854715202004e-14
		0.24051944231208269 0.0075146419932869187 -1.4210854715202004e-14
		0.23715366708431723 0.0063668057168644824 -1.4210854715202004e-14
		0.23406124113701851 0.0055476094885629689 -1.4210854715202004e-14
		0.23124376656419934 0.0050554502130608038 -1.4210854715202004e-14
		0.22869960922996665 0.0048919319869883196 -1.4210854715202004e-14
		0.22284097571825889 0.0058361716529901526 -1.4210854715202004e-14
		0.21841557551041665 0.0086688916523044099 -1.4210854715202004e-14
		0.21542414556968589 0.013390089481659198 -1.4210854715202004e-14
		0.21386591689094039 0.019999770648252681 -1.4210854715202004e-14
		0.24067574260397306 0.019999770648252681 -1.4210854715202004e-14
		0.24071502594916733 0.022347543298394341 -1.4210854715202004e-14
		0.2404520902797839 0.027109623563029931 -1.4210854715202004e-14
		0.23966337939727439 0.03129618159282397 -1.4210854715202004e-14
		0.2383479961289916 0.034908018434782861 -1.4210854715202004e-14
		0.2365076066527089 0.037944335044517719 -1.4210854715202004e-14
		0.23418469850164617 0.040350624178477505 -1.4210854715202004e-14
		0.23142409826628196 0.042069170399850489 -1.4210854715202004e-14
		0.22822587003037684 0.043099981719106756 -1.4210854715202004e-14
		0.22458998175205055 0.043443847167547602 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape10" -p "Rman_Lookdev_CTRL";
	rename -uid "DE6D2E96-48BC-B040-9CE2-CFAB322D659B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.254972380988023 0.042504419290782386 -1.4210854715202004e-14
		0.24724615444369491 0.042504419290782386 -1.4210854715202004e-14
		0.26305856601515071 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.27076881968217104 -3.5527136788005009e-15 -1.4210854715202004e-14
		0.2875590853552894 0.042504419290782386 -1.4210854715202004e-14
		0.28036350438988639 0.042504419290782386 -1.4210854715202004e-14
		0.26730840876106848 0.0094512151862465744 -1.4210854715202004e-14
		0.254972380988023 0.042504419290782386 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape11" -p "Rman_Lookdev_CTRL";
	rename -uid "6EE40829-4F9D-8F32-8648-2B8777397D84";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 50 2 no 3
		51 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
		51
		-0.1268840194278836 -0.037615685483970707 -1.4210854715202004e-14
		-0.13332857877242865 -0.038113460098987792 -1.4210854715202004e-14
		-0.13900283529467145 -0.039606767923098925 -1.4210854715202004e-14
		-0.14390599595807566 -0.042096422019015603 -1.4210854715202004e-14
		-0.14803883777823745 -0.045580808277019921 -1.4210854715202004e-14
		-0.15131803584555031 -0.049972568515828028 -1.4210854715202004e-14
		-0.15366020116664714 -0.05518432052274589 -1.4210854715202004e-14
		-0.15506533374152787 -0.061215275266472191 -1.4210854715202004e-14
		-0.15553344959113269 -0.068066221778308247 -1.4210854715202004e-14
		-0.15507414525859836 -0.074929993052716901 -1.4210854715202004e-14
		-0.1536938611618564 -0.080961748843449602 -1.4210854715202004e-14
		-0.1513949844209859 -0.086162282187042721 -1.4210854715202004e-14
		-0.14817591294197405 -0.090531593083496245 -1.4210854715202004e-14
		-0.14411279425324999 -0.093990337826825435 -1.4210854715202004e-14
		-0.1392809748362365 -0.096460750773648185 -1.4210854715202004e-14
		-0.13368207280588654 -0.09794283192396451 -1.4210854715202004e-14
		-0.12731446203677704 -0.098436597298714526 -1.4210854715202004e-14
		-0.12234398138295431 -0.098160059851162287 -1.4210854715202004e-14
		-0.11756907635574612 -0.097331240545041914 -1.4210854715202004e-14
		-0.11298975496562257 -0.095950155401293535 -1.4210854715202004e-14
		-0.10860600920211357 -0.094015186304964221 -1.4210854715202004e-14
		-0.10860600920211357 -0.086969457203049938 -1.4210854715202004e-14
		-0.11322701707845061 -0.089178560605912283 -1.4210854715202004e-14
		-0.11769652293446567 -0.090756831480758096 -1.4210854715202004e-14
		-0.1220137337336224 -0.09170347679105105 -1.4210854715202004e-14
		-0.1261794505229272 -0.092018488526321079 -1.4210854715202004e-14
		-0.13071949657832657 -0.09162011983956421 -1.4210854715202004e-14
		-0.13475135841286057 -0.090424188700877026 -1.4210854715202004e-14
		-0.13827341791157627 -0.088429902073723185 -1.4210854715202004e-14
		-0.14128729318942659 -0.085638862052115475 -1.4210854715202004e-14
		-0.14370160080392053 -0.082153666736634684 -1.4210854715202004e-14
		-0.14542655940657981 -0.078075328154788876 -1.4210854715202004e-14
		-0.14646056690339165 -0.07340622541618709 -1.4210854715202004e-14
		-0.14680604245631537 -0.068143971400750222 -1.4210854715202004e-14
		-0.14648301224051122 -0.062659687181312165 -1.4210854715202004e-14
		-0.1455139215930987 -0.057831079962794379 -1.4210854715202004e-14
		-0.14389958758202437 -0.053658145739961832 -1.4210854715202004e-14
		-0.1416391771184016 -0.050140091476278174 -1.4210854715202004e-14
		-0.13878962862344585 -0.047349051454670478 -1.4210854715202004e-14
		-0.13540703140854582 -0.045355573884993096 -1.4210854715202004e-14
		-0.13149060044763522 -0.044159638741070879 -1.4210854715202004e-14
		-0.12704032773024404 -0.043760460996837544 -1.4210854715202004e-14
		-0.12347177546327641 -0.044017761300530894 -1.4210854715202004e-14
		-0.11922270172248475 -0.044788068128068174 -1.4210854715202004e-14
		-0.11429389153393536 -0.046072166505515676 -1.4210854715202004e-14
		-0.10868456788203203 -0.047870068448578496 -1.4210854715202004e-14
		-0.10868456788203203 -0.040159846823438428 -1.4210854715202004e-14
		-0.1137408166388309 -0.039047280646708149 -1.4210854715202004e-14
		-0.11845960832324018 -0.038252133351502147 -1.4210854715202004e-14
		-0.12284095094572996 -0.037775201979591798 -1.4210854715202004e-14
		-0.1268840194278836 -0.037615685483970707 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape12" -p "Rman_Lookdev_CTRL";
	rename -uid "F48E66DB-43E6-2CD4-3EDF-BA8011051D06";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		-0.079678447507769479 -0.053545130023062729 -1.4210854715202004e-14
		-0.084111882217085987 -0.053918654236915844 -1.4210854715202004e-14
		-0.088058776995650262 -0.055037636800167454 -1.4210854715202004e-14
		-0.091519115822522215 -0.056902870749353913 -1.4210854715202004e-14
		-0.094492113671635528 -0.059514356084475216 -1.4210854715202004e-14
		-0.096880763750514201 -0.06276629452216001 -1.4210854715202004e-14
		-0.098587290261556035 -0.066554477857344627 -1.4210854715202004e-14
		-0.099610884147284556 -0.070878105043022693 -1.4210854715202004e-14
		-0.099952354465176252 -0.075737168068724117 -1.4210854715202004e-14
		-0.099610884147284556 -0.080597841198908421 -1.4210854715202004e-14
		-0.098587290261556035 -0.084924672572612117 -1.4210854715202004e-14
		-0.096880763750514201 -0.088719264283848007 -1.4210854715202004e-14
		-0.094492113671635528 -0.091979213191596881 -1.4210854715202004e-14
		-0.091519115822522215 -0.094599518054258744 -1.4210854715202004e-14
		-0.088058776995650262 -0.096471164384731495 -1.4210854715202004e-14
		-0.084111882217085987 -0.097592550089002333 -1.4210854715202004e-14
		-0.079678447507769479 -0.097966879355096889 -1.4210854715202004e-14
		-0.075244203740976512 -0.097592550089002333 -1.4210854715202004e-14
		-0.071297316972882302 -0.096471164384731495 -1.4210854715202004e-14
		-0.067837779193016756 -0.094599518054258744 -1.4210854715202004e-14
		-0.064863980296897022 -0.091979213191596881 -1.4210854715202004e-14
		-0.062475322207548291 -0.088719264283848007 -1.4210854715202004e-14
		-0.06076960475398293 -0.084924672572612117 -1.4210854715202004e-14
		-0.059745209821248001 -0.080597841198908421 -1.4210854715202004e-14
		-0.059404548560832784 -0.075737168068724117 -1.4210854715202004e-14
		-0.059745209821248001 -0.070878105043022693 -1.4210854715202004e-14
		-0.06076960475398293 -0.066554477857344627 -1.4210854715202004e-14
		-0.062475322207548291 -0.06276629452216001 -1.4210854715202004e-14
		-0.064863980296897022 -0.059514356084475216 -1.4210854715202004e-14
		-0.067837779193016756 -0.056902870749353913 -1.4210854715202004e-14
		-0.071297316972882302 -0.055037636800167454 -1.4210854715202004e-14
		-0.075244203740976512 -0.053918654236915844 -1.4210854715202004e-14
		-0.079678447507769479 -0.053545130023062729 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape13" -p "Rman_Lookdev_CTRL";
	rename -uid "A6F21FD5-476F-E37C-27A5-FF8C50F8BDF1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		-0.025029564827668029 -0.053545130023062729 -1.4210854715202004e-14
		-0.029281049719948968 -0.05410301520544069 -1.4210854715202004e-14
		-0.03319027125780187 -0.055775873710803184 -1.4210854715202004e-14
		-0.036756418381132763 -0.058564506586156632 -1.4210854715202004e-14
		-0.039980296142183069 -0.062468913831501022 -1.4210854715202004e-14
		-0.039980296142183069 -0.054484557899827944 -1.4210854715202004e-14
		-0.04769051776732313 -0.054484557899827944 -1.4210854715202004e-14
		-0.04769051776732313 -0.09698897719061389 -1.4210854715202004e-14
		-0.039980296142183069 -0.09698897719061389 -1.4210854715202004e-14
		-0.039980296142183069 -0.069474566551684699 -1.4210854715202004e-14
		-0.036798096856876177 -0.065416258150234122 -1.4210854715202004e-14
		-0.033512500426599638 -0.062517809740772187 -1.4210854715202004e-14
		-0.030125096929661158 -0.060778420276292454 -1.4210854715202004e-14
		-0.026634294285135508 -0.060198890803801343 -1.4210854715202004e-14
		-0.025143393607278634 -0.060324739293743102 -1.4210854715202004e-14
		-0.023880126457232777 -0.060703073794869694 -1.4210854715202004e-14
		-0.022843715819401721 -0.061333101270644778 -1.4210854715202004e-14
		-0.022035731745918028 -0.062214817715833315 -1.4210854715202004e-14
		-0.02142735256549113 -0.06339231676290305 -1.4210854715202004e-14
		-0.020992896711095579 -0.064910473065152963 -1.4210854715202004e-14
		-0.020732396224611632 -0.066768493586046709 -1.4210854715202004e-14
		-0.020645835085099162 -0.068966374320349272 -1.4210854715202004e-14
		-0.020645835085099162 -0.09698897719061389 -1.4210854715202004e-14
		-0.012935596437710212 -0.09698897719061389 -1.4210854715202004e-14
		-0.012935596437710212 -0.066461492320840768 -1.4210854715202004e-14
		-0.013140007612805456 -0.0636568304948891 -1.4210854715202004e-14
		-0.013752392028264396 -0.061152749542387003 -1.4210854715202004e-14
		-0.014773582772973696 -0.058950058520810963 -1.4210854715202004e-14
		-0.016203563825993226 -0.057047952377919535 -1.4210854715202004e-14
		-0.017980639548198188 -0.055515369219084211 -1.4210854715202004e-14
		-0.020043848259783403 -0.054421235133971381 -1.4210854715202004e-14
		-0.022394040071884416 -0.053763952033803256 -1.4210854715202004e-14
		-0.025029564827668029 -0.053545130023062729 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape14" -p "Rman_Lookdev_CTRL";
	rename -uid "08E8957B-41F1-231D-14A0-41B83904AF39";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.01002913956080259 -0.046030488029772262 -1.4210854715202004e-14
		0.0023189176853353343 -0.046774332269452851 -1.4210854715202004e-14
		0.0023189176853353343 -0.054484557899827944 -1.4210854715202004e-14
		-0.0030034468974624033 -0.054484557899827944 -1.4210854715202004e-14
		-0.0030034468974624033 -0.060277445478484765 -1.4210854715202004e-14
		0.0023189176853353343 -0.060277445478484765 -1.4210854715202004e-14
		0.0023189176853353343 -0.085247702788416285 -1.4210854715202004e-14
		0.0025249149335032669 -0.08807801814474818 -1.4210854715202004e-14
		0.0031413206049343756 -0.090580488992767397 -1.4210854715202004e-14
		0.0041681186786885326 -0.092755131353414053 -1.4210854715202004e-14
		0.0056069275200458721 -0.094601929205748031 -1.4210854715202004e-14
		0.0074120388861663635 -0.096074397791987454 -1.4210854715202004e-14
		0.0095401964890311532 -0.097125243296873984 -1.4210854715202004e-14
		0.011991368286759984 -0.097756876871896908 -1.4210854715202004e-14
		0.014765570300292985 -0.097966879355096889 -1.4210854715202004e-14
		0.016135440785951645 -0.097905967740729599 -1.4210854715202004e-14
		0.017622343237937786 -0.097722407819211168 -1.4210854715202004e-14
		0.019227064684935201 -0.097417008648018041 -1.4210854715202004e-14
		0.020948819099568857 -0.09698897719061389 -1.4210854715202004e-14
		0.020948819099568857 -0.091666604597346088 -1.4210854715202004e-14
		0.019894769406656691 -0.091889439853588717 -1.4210854715202004e-14
		0.018924076665231365 -0.092048151296968375 -1.4210854715202004e-14
		0.018035939828286468 -0.092143539974491456 -1.4210854715202004e-14
		0.017231175963768535 -0.092175597875687923 -1.4210854715202004e-14
		0.014080242544430516 -0.091654580881779898 -1.4210854715202004e-14
		0.011830245691891039 -0.090091537910525904 -1.4210854715202004e-14
		0.010479616355326304 -0.087485659904449453 -1.4210854715202004e-14
		0.01002913956080259 -0.08383855696803344 -1.4210854715202004e-14
		0.01002913956080259 -0.060277445478484765 -1.4210854715202004e-14
		0.021145203783659892 -0.060277445478484765 -1.4210854715202004e-14
		0.021145203783659892 -0.054484557899827944 -1.4210854715202004e-14
		0.01002913956080259 -0.054484557899827944 -1.4210854715202004e-14
		0.01002913956080259 -0.046030488029772262 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape15" -p "Rman_Lookdev_CTRL";
	rename -uid "F0B17C23-4410-C9C0-CBAA-6094EFAD2134";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 22 2 no 3
		23 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
		23
		0.052681048627717164 -0.053545130023062729 -1.4210854715202004e-14
		0.048576243452779631 -0.05410301520544069 -1.4210854715202004e-14
		0.044990869198677431 -0.055775873710803184 -1.4210854715202004e-14
		0.04192329172951749 -0.058564506586156632 -1.4210854715202004e-14
		0.03937431209230622 -0.062468913831501022 -1.4210854715202004e-14
		0.03937431209230622 -0.054484557899827944 -1.4210854715202004e-14
		0.031664088464548636 -0.054484557899827944 -1.4210854715202004e-14
		0.031664088464548636 -0.09698897719061389 -1.4210854715202004e-14
		0.03937431209230622 -0.09698897719061389 -1.4210854715202004e-14
		0.03937431209230622 -0.068996037090996568 -1.4210854715202004e-14
		0.041989009625923217 -0.065199034228271377 -1.4210854715202004e-14
		0.044902689944212017 -0.062486548881347102 -1.4210854715202004e-14
		0.048114552000166198 -0.06085857704498869 -1.4210854715202004e-14
		0.051624595793785776 -0.060316720813208956 -1.4210854715202004e-14
		0.052417327932267457 -0.060357602247181001 -1.4210854715202004e-14
		0.053268600585977446 -0.06048264568488132 -1.4210854715202004e-14
		0.054178365692095366 -0.060690249032297097 -1.4210854715202004e-14
		0.055147456339507878 -0.060982018388676187 -1.4210854715202004e-14
		0.055147456339507878 -0.053742311748925138 -1.4210854715202004e-14
		0.054508605330957215 -0.05365574259894261 -1.4210854715202004e-14
		0.053884990236468429 -0.053594826979340295 -1.4210854715202004e-14
		0.05327581000903512 -0.053557950780400293 -1.4210854715202004e-14
		0.052681048627717164 -0.053545130023062729 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape16" -p "Rman_Lookdev_CTRL";
	rename -uid "7502C449-4BE3-BD9A-2608-22BBD2DF714C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.081435480032566246 -0.053545130023062729 -1.4210854715202004e-14
		0.077002037312779686 -0.053918654236915844 -1.4210854715202004e-14
		0.073055150544685463 -0.055037636800167454 -1.4210854715202004e-14
		0.069594803707343458 -0.056902870749353913 -1.4210854715202004e-14
		0.066621813868700197 -0.059514356084475216 -1.4210854715202004e-14
		0.064233155779351458 -0.06276629452216001 -1.4210854715202004e-14
		0.06252663727877969 -0.066554477857344627 -1.4210854715202004e-14
		0.061503043393051168 -0.070878105043022693 -1.4210854715202004e-14
		0.06116157307515948 -0.075737168068724117 -1.4210854715202004e-14
		0.061503043393051168 -0.080597841198908421 -1.4210854715202004e-14
		0.06252663727877969 -0.084924672572612117 -1.4210854715202004e-14
		0.064233155779351458 -0.088719264283848007 -1.4210854715202004e-14
		0.066621813868700197 -0.091979213191596881 -1.4210854715202004e-14
		0.069594803707343458 -0.094599518054258744 -1.4210854715202004e-14
		0.073055150544685463 -0.096471164384731495 -1.4210854715202004e-14
		0.077002037312779686 -0.097592550089002333 -1.4210854715202004e-14
		0.081435480032566246 -0.097966879355096889 -1.4210854715202004e-14
		0.085869707778419083 -0.097592550089002333 -1.4210854715202004e-14
		0.089816610567453437 -0.096471164384731495 -1.4210854715202004e-14
		0.093276140336848903 -0.094599518054258744 -1.4210854715202004e-14
		0.096249947243438702 -0.091979213191596881 -1.4210854715202004e-14
		0.098638589311847311 -0.088719264283848007 -1.4210854715202004e-14
		0.1003443227863528 -0.084924672572612117 -1.4210854715202004e-14
		0.10136871771908773 -0.080597841198908421 -1.4210854715202004e-14
		0.10170937096903288 -0.075737168068724117 -1.4210854715202004e-14
		0.10136871771908773 -0.070878105043022693 -1.4210854715202004e-14
		0.1003443227863528 -0.066554477857344627 -1.4210854715202004e-14
		0.098638589311847311 -0.06276629452216001 -1.4210854715202004e-14
		0.096249947243438702 -0.059514356084475216 -1.4210854715202004e-14
		0.093276140336848903 -0.056902870749353913 -1.4210854715202004e-14
		0.089816610567453437 -0.055037636800167454 -1.4210854715202004e-14
		0.085869707778419083 -0.053918654236915844 -1.4210854715202004e-14
		0.081435480032566246 -0.053545130023062729 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape17" -p "Rman_Lookdev_CTRL";
	rename -uid "4EF7AD4D-4C20-BA81-1469-AF825390AB4A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		0.12113362338768259 -0.035189358159145624 -1.4210854715202004e-14
		0.11342338574160241 -0.035189358159145624 -1.4210854715202004e-14
		0.11342338574160241 -0.09698897719061389 -1.4210854715202004e-14
		0.12113362338768259 -0.09698897719061389 -1.4210854715202004e-14
		0.12113362338768259 -0.035189358159145624 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape18" -p "Rman_Lookdev_CTRL";
	rename -uid "B4DA7209-4F08-1992-63C3-F79E2FE39342";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 73 2 no 3
		74 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73
		74
		0.15005398366943906 -0.053545130023062729 -1.4210854715202004e-14
		0.14681166580630126 -0.0537447188951794 -1.4210854715202004e-14
		0.14393324757723455 -0.054342680459287959 -1.4210854715202004e-14
		0.14142036311813203 -0.055339823772864886 -1.4210854715202004e-14
		0.13927137829310063 -0.056735343783668735 -1.4210854715202004e-14
		0.13755040890453324 -0.058477937436174098 -1.4210854715202004e-14
		0.13632080174969666 -0.060517110732332034 -1.4210854715202004e-14
		0.13558338991747754 -0.062852062625136124 -1.4210854715202004e-14
		0.13533730827710894 -0.065482785104116328 -1.4210854715202004e-14
		0.135961708397664 -0.069149133194861295 -1.4210854715202004e-14
		0.13783256970207047 -0.072360987240345426 -1.4210854715202004e-14
		0.14095143020058065 -0.07511835925627379 -1.4210854715202004e-14
		0.14531835397695508 -0.077419647148633586 -1.4210854715202004e-14
		0.14981911668716019 -0.079337786247358266 -1.4210854715202004e-14
		0.15250755860818713 -0.080714866156074608 -1.4210854715202004e-14
		0.15442728377998449 -0.082263482270743191 -1.4210854715202004e-14
		0.15557992633844539 -0.083982833544357621 -1.4210854715202004e-14
		0.15596388418955698 -0.085873721023924293 -1.4210854715202004e-14
		0.15582680902582038 -0.087168245028160202 -1.4210854715202004e-14
		0.15541561557649095 -0.088349741299791909 -1.4210854715202004e-14
		0.15473107284669474 -0.089418225859759545 -1.4210854715202004e-14
		0.15377241183130566 -0.090375292791605874 -1.4210854715202004e-14
		0.15260535042672943 -0.091162425611512762 -1.4210854715202004e-14
		0.15129640757637819 -0.091725121081164207 -1.4210854715202004e-14
		0.14984555123837165 -0.092062578153553787 -1.4210854715202004e-14
		0.14825367858535704 -0.092175597875687923 -1.4210854715202004e-14
		0.14533277282307044 -0.091940738903879091 -1.4210854715202004e-14
		0.14216741955630829 -0.0912361699989227 -1.4210854715202004e-14
		0.13875755470131015 -0.090061883150348673 -1.4210854715202004e-14
		0.13510324234183646 -0.088417878358156995 -1.4210854715202004e-14
		0.13510324234183646 -0.095502081747789055 -1.4210854715202004e-14
		0.13873752852614993 -0.096580979918840001 -1.4210854715202004e-14
		0.1420888528659198 -0.097350481694135835 -1.4210854715202004e-14
		0.14515641431413961 -0.09781298220422574 -1.4210854715202004e-14
		0.14794024491268964 -0.097966879355096889 -1.4210854715202004e-14
		0.15123065763809221 -0.097741640957835024 -1.4210854715202004e-14
		0.15421247501474608 -0.097066726813055865 -1.4210854715202004e-14
		0.15688569704265126 -0.095942136920759397 -1.4210854715202004e-14
		0.15925109272693391 -0.094367070233939213 -1.4210854715202004e-14
		0.16118606983373329 -0.092441713701686787 -1.4210854715202004e-14
		0.16256877309243462 -0.090267079351510196 -1.4210854715202004e-14
		0.16339756836714481 -0.087843159172939361 -1.4210854715202004e-14
		0.16367412183563715 -0.085169144108497838 -1.4210854715202004e-14
		0.16351058007880886 -0.083049814043643672 -1.4210854715202004e-14
		0.16301841679807166 -0.081114043900307936 -1.4210854715202004e-14
		0.16219923408743839 -0.079361032631484238 -1.4210854715202004e-14
		0.16105219885802236 -0.077791573273708906 -1.4210854715202004e-14
		0.15951079216641145 -0.076332730497048487 -1.4210854715202004e-14
		0.15751009716320633 -0.074909958867086623 -1.4210854715202004e-14
		0.15504931280140061 -0.073524860477836143 -1.4210854715202004e-14
		0.15212840703911401 -0.072175024177807759 -1.4210854715202004e-14
		0.14840997887724741 -0.070609578065534542 -1.4210854715202004e-14
		0.14594435619152296 -0.069347921019971559 -1.4210854715202004e-14
		0.14418333445263518 -0.067948387763665602 -1.4210854715202004e-14
		0.14312608057169737 -0.066412600416804649 -1.4210854715202004e-14
		0.1427741966427224 -0.06473894086443574 -1.4210854715202004e-14
		0.142900025106489 -0.06356865925089375 -1.4210854715202004e-14
		0.1432775745815493 -0.062522620028045664 -1.4210854715202004e-14
		0.14390758203114923 -0.061601624242897897 -1.4210854715202004e-14
		0.14478931049204286 -0.060805675900685488 -1.4210854715202004e-14
		0.14588184248314287 -0.060163624709344221 -1.4210854715202004e-14
		0.14714269047122938 -0.059705129434286359 -1.4210854715202004e-14
		0.14857268754518904 -0.059429393033740535 -1.4210854715202004e-14
		0.15017100061613517 -0.059338013596484517 -1.4210854715202004e-14
		0.15225266545074803 -0.059457449705139977 -1.4210854715202004e-14
		0.15466215076226339 -0.059817348109414088 -1.4210854715202004e-14
		0.15739948859256148 -0.060416915772770495 -1.4210854715202004e-14
		0.16046464689976206 -0.061255351648202797 -1.4210854715202004e-14
		0.16046464689976206 -0.054837246881044382 -1.4210854715202004e-14
		0.15885992545276464 -0.054523837239787175 -1.4210854715202004e-14
		0.15634303575863009 -0.054095801777147984 -1.4210854715202004e-14
		0.15403611650581525 -0.053789605564183482 -1.4210854715202004e-14
		0.15194003282508706 -0.053606846689671452 -1.4210854715202004e-14
		0.15005398366943906 -0.053545130023062729 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape19" -p "Rman_Lookdev_CTRL";
	rename -uid "B3D84AF9-4E17-2A76-B098-9A900A9A108B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 2 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.25927079922440849 0.051727257978123053 -1.4210854715202004e-14
		-0.25360178956005769 0.051167374183464107 -1.4210854715202004e-14
		-0.24955341013625154 0.049487726804722298 -1.4210854715202004e-14
		-0.24712325781197086 0.046689104873198946 -1.4210854715202004e-14
		-0.24631373572823487 0.042770723362827757 -1.4210854715202004e-14
		-0.24656018585022643 0.039988058287672053 -1.4210854715202004e-14
		-0.24729952019526094 0.037561899182718322 -1.4210854715202004e-14
		-0.248530937716332 0.035490651964423803 -1.4210854715202004e-14
		-0.25025525548138616 0.033774312627553468 -1.4210854715202004e-14
		-0.25245331244603014 0.032428840031092483 -1.4210854715202004e-14
		-0.25510437751373805 0.031466992851235422 -1.4210854715202004e-14
		-0.25821005277852277 0.030890361166289994 -1.4210854715202004e-14
		-0.26176873614637147 0.030698149937102348 -1.4210854715202004e-14
		-0.26442220435509861 0.030698149937102348 -1.4210854715202004e-14
		-0.26442220435509861 0.051727257978123053 -1.4210854715202004e-14
		-0.25927079922440849 0.051727257978123053 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape20" -p "Rman_Lookdev_CTRL";
	rename -uid "A1BCE34A-4136-4E04-4ACC-89BE8646E8E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 22 2 no 3
		23 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
		23
		-0.12904292121485433 0.020626710087818058 -1.4210854715202004e-14
		-0.12658965067396871 0.020548547926167778 -1.4210854715202004e-14
		-0.12658965067396871 0.0096053095949430456 -1.4210854715202004e-14
		-0.12915458716754763 0.0077486042931029404 -1.4210854715202004e-14
		-0.13167166911296374 0.0064222717135513233 -1.4210854715202004e-14
		-0.1341392944162042 0.005626312857596954 -1.4210854715202004e-14
		-0.13655908119222196 0.0053607272245854527 -1.4210854715202004e-14
		-0.13790693890614453 0.0054803605910662429 -1.4210854715202004e-14
		-0.13914873799641864 0.0058376646043483459 -1.4210854715202004e-14
		-0.14028286034809137 0.0064342353505920293 -1.4210854715202004e-14
		-0.14131010700816909 0.0072692737854084021 -1.4210854715202004e-14
		-0.14216189233196319 0.0082765848887685432 -1.4210854715202004e-14
		-0.14277043172179138 0.0093915652209143885 -1.4210854715202004e-14
		-0.14313490810970711 0.010613418240728941 -1.4210854715202004e-14
		-0.14325693961066333 0.011942143948212204 -1.4210854715202004e-14
		-0.1430120915826846 0.013811609428210013 -1.4210854715202004e-14
		-0.1422783325248147 0.015485675511934671 -1.4210854715202004e-14
		-0.14105567845799374 0.016965937284237686 -1.4210854715202004e-14
		-0.13934334435615545 0.018250796656341276 -1.4210854715202004e-14
		-0.13723141596564048 0.019290008956077246 -1.4210854715202004e-14
		-0.13481084416355643 0.020032531468197261 -1.4210854715202004e-14
		-0.1320816129289632 0.020478364192701326 -1.4210854715202004e-14
		-0.12904292121485433 0.020626710087818058 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape21" -p "Rman_Lookdev_CTRL";
	rename -uid "3DC8B83C-46D7-CDEF-1B1E-32AA49DF7076";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.031473829787439109 0.037568868291674072 -1.4210854715202004e-14
		0.034171147309297052 0.037302484114928057 -1.4210854715202004e-14
		0.03654785377731018 0.036502538548153669 -1.4210854715202004e-14
		0.038603148144472077 0.035170625674893659 -1.4210854715202004e-14
		0.040338632504795566 0.033304348361981359 -1.4210854715202004e-14
		0.041716016811374337 0.030952360201968471 -1.4210854715202004e-14
		0.042700183163447453 0.028159325573314815 -1.4210854715202004e-14
		0.043291163602895165 0.024926041517791757 -1.4210854715202004e-14
		0.043487388077584913 0.021251710993627927 -1.4210854715202004e-14
		0.043291163602895165 0.017576581425075205 -1.4210854715202004e-14
		0.042700183163447453 0.014339310158077751 -1.4210854715202004e-14
		0.041716016811374337 0.011540693233098186 -1.4210854715202004e-14
		0.040338632504795566 0.0091791355652849991 -1.4210854715202004e-14
		0.038603148144472077 0.0073056808711952758 -1.4210854715202004e-14
		0.03654785377731018 0.0059665881134859551 -1.4210854715202004e-14
		0.034171147309297052 0.0051634508750454102 -1.4210854715202004e-14
		0.031473829787439109 0.0048954726147566437 -1.4210854715202004e-14
		0.028777281270707319 0.0051634508750454102 -1.4210854715202004e-14
		0.026404580037726236 0.0059665881134859551 -1.4210854715202004e-14
		0.024354860957728937 0.0073056808711952758 -1.4210854715202004e-14
		0.022628957119602087 0.0091791355652849991 -1.4210854715202004e-14
		0.021259551241207146 0.011540693233098186 -1.4210854715202004e-14
		0.020280960176298633 0.014339310158077751 -1.4210854715202004e-14
		0.019694753977009111 0.017576581425075205 -1.4210854715202004e-14
		0.019498561544199617 0.021251710993627927 -1.4210854715202004e-14
		0.019694753977009111 0.024926041517791757 -1.4210854715202004e-14
		0.020280960176298633 0.028159325573314815 -1.4210854715202004e-14
		0.021259551241207146 0.030952360201968471 -1.4210854715202004e-14
		0.022628957119602087 0.033304348361981359 -1.4210854715202004e-14
		0.024354860957728937 0.035170625674893659 -1.4210854715202004e-14
		0.026404580037726236 0.036502538548153669 -1.4210854715202004e-14
		0.028777281270707319 0.037302484114928057 -1.4210854715202004e-14
		0.031473829787439109 0.037568868291674072 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape22" -p "Rman_Lookdev_CTRL";
	rename -uid "6F4E5517-44AF-4A8E-1BE9-91B9583D1218";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.080369094215755388 0.037568868291674072 -1.4210854715202004e-14
		0.083066411737613338 0.037302484114928057 -1.4210854715202004e-14
		0.085443118205626459 0.036502538548153669 -1.4210854715202004e-14
		0.087498412572788356 0.035170625674893659 -1.4210854715202004e-14
		0.089233896933111859 0.033304348361981359 -1.4210854715202004e-14
		0.090611281239690616 0.030952360201968471 -1.4210854715202004e-14
		0.091595447591763732 0.028159325573314815 -1.4210854715202004e-14
		0.092186460073091697 0.024926041517791757 -1.4210854715202004e-14
		0.092382652505901205 0.021251710993627927 -1.4210854715202004e-14
		0.092186460073091697 0.017576581425075205 -1.4210854715202004e-14
		0.091595447591763732 0.014339310158077751 -1.4210854715202004e-14
		0.090611281239690616 0.011540693233098186 -1.4210854715202004e-14
		0.089233896933111859 0.0091791355652849991 -1.4210854715202004e-14
		0.087498412572788356 0.0073056808711952758 -1.4210854715202004e-14
		0.085443118205626459 0.0059665881134859551 -1.4210854715202004e-14
		0.083066411737613338 0.0051634508750454102 -1.4210854715202004e-14
		0.080369094215755388 0.0048954726147566437 -1.4210854715202004e-14
		0.077672545699023599 0.0051634508750454102 -1.4210854715202004e-14
		0.075299844466042515 0.0059665881134859551 -1.4210854715202004e-14
		0.073250125386045223 0.0073056808711952758 -1.4210854715202004e-14
		0.071524221547918376 0.0091791355652849991 -1.4210854715202004e-14
		0.070154815669523432 0.011540693233098186 -1.4210854715202004e-14
		0.069176224604614922 0.014339310158077751 -1.4210854715202004e-14
		0.068590018405325401 0.017576581425075205 -1.4210854715202004e-14
		0.068393825972515906 0.021251710993627927 -1.4210854715202004e-14
		0.068590018405325401 0.024926041517791757 -1.4210854715202004e-14
		0.069176224604614922 0.028159325573314815 -1.4210854715202004e-14
		0.070154815669523432 0.030952360201968471 -1.4210854715202004e-14
		0.071524221547918376 0.033304348361981359 -1.4210854715202004e-14
		0.073250125386045223 0.035170625674893659 -1.4210854715202004e-14
		0.075299844466042515 0.036502538548153669 -1.4210854715202004e-14
		0.077672545699023599 0.037302484114928057 -1.4210854715202004e-14
		0.080369094215755388 0.037568868291674072 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape23" -p "Rman_Lookdev_CTRL";
	rename -uid "8E4A3065-48B7-7A16-3410-158A1D7C8AB2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 21 2 no 3
		22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		22
		0.17481609291999045 0.037571315490278645 -1.4210854715202004e-14
		0.17752699619907708 0.037242722003014976 -1.4210854715202004e-14
		0.18031681862923504 0.036256945546458981 -1.4210854715202004e-14
		0.18318402220021204 0.034613986120610667 -1.4210854715202004e-14
		0.18612940795901448 0.032313837717617491 -1.4210854715202004e-14
		0.18612940795901448 0.012842354566161189 -1.4210854715202004e-14
		0.18304925405185393 0.0097925082724880947 -1.4210854715202004e-14
		0.17993558433794526 0.0076143883665248675 -1.4210854715202004e-14
		0.17678846290104899 0.0063071973058457537 -1.4210854715202004e-14
		0.17360622356339178 0.0058717331335308865 -1.4210854715202004e-14
		0.16930578668854923 0.0067992879916979948 -1.4210854715202004e-14
		0.1662336112095725 0.0095811570263910802 -1.4210854715202004e-14
		0.16439046613158775 0.014218134776109627 -1.4210854715202004e-14
		0.16377555040758857 0.020709428204317284 -1.4210854715202004e-14
		0.16395661907291709 0.02451057047744808 -1.4210854715202004e-14
		0.16449735784412287 0.027855512475194376 -1.4210854715202004e-14
		0.16539936881521874 0.030741859067007011 -1.4210854715202004e-14
		0.16666271606996524 0.033171210344281284 -1.4210854715202004e-14
		0.16825462076486014 0.035096504795390712 -1.4210854715202004e-14
		0.17014483536494143 0.036471489966185287 -1.4210854715202004e-14
		0.17233172573431607 0.037296159848812467 -1.4210854715202004e-14
		0.17481609291999045 0.037571315490278645 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape24" -p "Rman_Lookdev_CTRL";
	rename -uid "15F96670-4F40-16A7-E817-289803EC1E63";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 2 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0.22411765239519202 0.037621316844418648 -1.4210854715202004e-14
		0.22796822127123573 0.036883576582926889 -1.4210854715202004e-14
		0.2307181836023548 0.03467116085069305 -1.4210854715202004e-14
		0.23236834043555568 0.03098406964771714 -1.4210854715202004e-14
		0.23291865972895812 0.025821503929610259 -1.4210854715202004e-14
		0.21426464604885015 0.025821503929610259 -1.4210854715202004e-14
		0.21525999501713272 0.03098406964771714 -1.4210854715202004e-14
		0.21723393505032379 0.03467116085069305 -1.4210854715202004e-14
		0.22018649819030364 0.036883576582926889 -1.4210854715202004e-14
		0.22411765239519202 0.037621316844418648 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape25" -p "Rman_Lookdev_CTRL";
	rename -uid "71BF89E8-45F3-F7F6-3416-C3A7F3FFF549";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		-0.079697584520752582 -0.059420108898936258 -1.4210854715202004e-14
		-0.077000258988424566 -0.059686493075682273 -1.4210854715202004e-14
		-0.074623544509941381 -0.060486438642456661 -1.4210854715202004e-14
		-0.072568250142779483 -0.061818351515716671 -1.4210854715202004e-14
		-0.07083277379292606 -0.063684626826011462 -1.4210854715202004e-14
		-0.069455397496817353 -0.066036616988641855 -1.4210854715202004e-14
		-0.068471215123804108 -0.068829651617295512 -1.4210854715202004e-14
		-0.067880234684356403 -0.072062933670201057 -1.4210854715202004e-14
		-0.067684034241076829 -0.075737264194364884 -1.4210854715202004e-14
		-0.067880234684356403 -0.079412395765535132 -1.4210854715202004e-14
		-0.068471215123804108 -0.082649667032532584 -1.4210854715202004e-14
		-0.069455397496817353 -0.085448284958820897 -1.4210854715202004e-14
		-0.07083277379292606 -0.087809843627942849 -1.4210854715202004e-14
		-0.072568250142779483 -0.089683292314180027 -1.4210854715202004e-14
		-0.074623544509941381 -0.091022386573852476 -1.4210854715202004e-14
		-0.077000258988424566 -0.09182552431294741 -1.4210854715202004e-14
		-0.079697584520752582 -0.092093506578471207 -1.4210854715202004e-14
		-0.082394117016544241 -0.09182552431294741 -1.4210854715202004e-14
		-0.08476684228093552 -0.091022386573852476 -1.4210854715202004e-14
		-0.086816553350462747 -0.089683292314180027 -1.4210854715202004e-14
		-0.088542465199059658 -0.087809843627942849 -1.4210854715202004e-14
		-0.089911863066984538 -0.085448284958820897 -1.4210854715202004e-14
		-0.090890462142363113 -0.082649667032532584 -1.4210854715202004e-14
		-0.091476660331182569 -0.079412395765535132 -1.4210854715202004e-14
		-0.091672860774462128 -0.075737264194364884 -1.4210854715202004e-14
		-0.091476660331182569 -0.072062933670201057 -1.4210854715202004e-14
		-0.090890462142363113 -0.068829651617295512 -1.4210854715202004e-14
		-0.089911863066984538 -0.066036616988641855 -1.4210854715202004e-14
		-0.088542465199059658 -0.063684626826011462 -1.4210854715202004e-14
		-0.086816553350462747 -0.061818351515716671 -1.4210854715202004e-14
		-0.08476684228093552 -0.060486438642456661 -1.4210854715202004e-14
		-0.082394117016544241 -0.059686493075682273 -1.4210854715202004e-14
		-0.079697584520752582 -0.059420108898936258 -1.4210854715202004e-14
		;
createNode nurbsCurve -n "Rman_Lookdev_CTRLShape26" -p "Rman_Lookdev_CTRL";
	rename -uid "45B7BD17-4498-F5C6-8BBE-D884BC55A1D8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 32 2 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		0.081416335009113092 -0.059420108898936258 -1.4210854715202004e-14
		0.084113668551911158 -0.059686493075682273 -1.4210854715202004e-14
		0.086490375019924279 -0.060486438642456661 -1.4210854715202004e-14
		0.08854566938708619 -0.061818351515716671 -1.4210854715202004e-14
		0.090281137726469549 -0.063684626826011462 -1.4210854715202004e-14
		0.09165852203304832 -0.066036616988641855 -1.4210854715202004e-14
		0.092642704406061552 -0.068829651617295512 -1.4210854715202004e-14
		0.093233684845509271 -0.072062933670201057 -1.4210854715202004e-14
		0.093429893299258895 -0.075737264194364884 -1.4210854715202004e-14
		0.093233684845509271 -0.079412395765535132 -1.4210854715202004e-14
		0.092642704406061552 -0.082649667032532584 -1.4210854715202004e-14
		0.09165852203304832 -0.085448284958820897 -1.4210854715202004e-14
		0.090281137726469549 -0.087809843627942849 -1.4210854715202004e-14
		0.08854566938708619 -0.089683292314180027 -1.4210854715202004e-14
		0.086490375019924279 -0.091022386573852476 -1.4210854715202004e-14
		0.084113668551911158 -0.09182552431294741 -1.4210854715202004e-14
		0.081416335009113092 -0.092093506578471207 -1.4210854715202004e-14
		0.078719802513321432 -0.09182552431294741 -1.4210854715202004e-14
		0.076347085259400219 -0.091022386573852476 -1.4210854715202004e-14
		0.074297366179402913 -0.089683292314180027 -1.4210854715202004e-14
		0.072571462341276066 -0.087809843627942849 -1.4210854715202004e-14
		0.071202056462881122 -0.085448284958820897 -1.4210854715202004e-14
		0.070223465397972612 -0.082649667032532584 -1.4210854715202004e-14
		0.069637259198683091 -0.079412395765535132 -1.4210854715202004e-14
		0.069441050744933466 -0.075737264194364884 -1.4210854715202004e-14
		0.069637259198683091 -0.072062933670201057 -1.4210854715202004e-14
		0.070223465397972612 -0.068829651617295512 -1.4210854715202004e-14
		0.071202056462881122 -0.066036616988641855 -1.4210854715202004e-14
		0.072571462341276066 -0.063684626826011462 -1.4210854715202004e-14
		0.074297366179402913 -0.061818351515716671 -1.4210854715202004e-14
		0.076347085259400219 -0.060486438642456661 -1.4210854715202004e-14
		0.078719802513321432 -0.059686493075682273 -1.4210854715202004e-14
		0.081416335009113092 -0.059420108898936258 -1.4210854715202004e-14
		;
createNode transform -n "Lookdev_OverlayMinimal_grp" -p "Lookdev_CameraScale_LOC";
	rename -uid "BED9E708-43BE-EBBE-5C0A-5295B926ACEA";
	setAttr ".t" -type "double3" -4.0686974132214675e-07 24.797966767514779 129.68351266201279 ;
	setAttr ".rp" -type "double3" -4.0064740860363557 1.0473704985656269 -8.5384841763512327 ;
	setAttr ".sp" -type "double3" -4.0064740860363557 1.0473704985656269 -8.5384841763512327 ;
createNode transform -n "Lookdev_MinimalChromeBall" -p "Lookdev_OverlayMinimal_grp";
	rename -uid "2BB2B9C2-4CE7-88A0-0903-ADB7C03B3570";
	setAttr ".rp" -type "double3" -4.0064740860363557 1.5836682237959572 -8.5384841763512327 ;
	setAttr ".sp" -type "double3" -4.0064740860363557 1.5836682237959572 -8.5384841763512327 ;
createNode mesh -n "Lookdev_MinimalChromeBallShape" -p "Lookdev_MinimalChromeBall";
	rename -uid "70E7AC40-4089-9317-32D3-B18A6FCA94C5";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.5425758 -4.8573337 -8.3642921 -4.4625111 
		-4.8573337 -8.2071533 -4.3378029 -4.8573337 -8.0824471 -4.1806641 -4.8573337 -8.0023842 
		-4.0064735 -4.8573337 -7.9747925 -3.8322849 -4.8573337 -8.0023842 -3.6751461 -4.8573337 
		-8.0824471 -3.5504398 -4.8573337 -8.2071533 -3.4703732 -4.8573337 -8.3642921 -3.4427853 
		-4.8573337 -8.5384827 -3.4703732 -4.8573337 -8.7126732 -3.5504398 -4.8573337 -8.869812 
		-3.6751461 -4.8573337 -8.9945183 -3.8322849 -4.8573337 -9.0745811 -4.0064735 -4.8573337 
		-9.1021729 -4.1806641 -4.8573337 -9.0745811 -4.3378029 -4.8573337 -8.9945183 -4.4625092 
		-4.8573337 -8.869812 -4.5425758 -4.8573337 -8.7126732 -4.5701637 -4.8573337 -8.5384827 
		-5.0654755 -4.9893308 -8.1943893 -4.9073143 -4.9893308 -7.8839836 -4.6609745 -4.9893308 
		-7.6376419 -4.350565 -4.9893308 -7.4794807 -4.0064735 -4.9893308 -7.424984 -3.662384 
		-4.9893308 -7.4794807 -3.3519745 -4.9893308 -7.6376419 -3.1056347 -4.9893308 -7.8839836 
		-2.9474716 -4.9893308 -8.1943893 -2.8929749 -4.9893308 -8.5384827 -2.9474716 -4.9893308 
		-8.882576 -3.1056347 -4.9893308 -9.1929817 -3.3519745 -4.9893308 -9.4393234 -3.662384 
		-4.9893308 -9.5974808 -4.0064735 -4.9893308 -9.6519814 -4.350565 -4.9893308 -9.5974808 
		-4.6609745 -4.9893308 -9.4393234 -4.9073143 -4.9893308 -9.1929817 -5.0654755 -4.9893308 
		-8.882576 -5.1199741 -4.9893308 -8.5384827 -5.5623016 -5.2057128 -8.0329666 -5.3299408 
		-5.2057128 -7.576931 -4.9680271 -5.2057128 -7.2150192 -4.5119934 -5.2057128 -6.9826584 
		-4.0064735 -5.2057128 -6.9025879 -3.5009556 -5.2057128 -6.9826584 -3.0449219 -5.2057128 
		-7.2150192 -2.6830082 -5.2057128 -7.576931 -2.4506474 -5.2057128 -8.0329666 -2.3705807 
		-5.2057128 -8.5384827 -2.4506474 -5.2057128 -9.0439987 -2.6830082 -5.2057128 -9.5000343 
		-3.0449219 -5.2057128 -9.8619461 -3.5009556 -5.2057128 -10.094307 -4.0064735 -5.2057128 
		-10.174374 -4.5119934 -5.2057128 -10.094307 -4.9680271 -5.2057128 -9.8619461 -5.3299389 
		-5.2057128 -9.5000343 -5.5622997 -5.2057128 -9.0439987 -5.6423664 -5.2057128 -8.5384827 
		-6.0208168 -5.5011516 -7.8839836 -5.7199764 -5.5011516 -7.2935524 -5.2514076 -5.5011516 
		-6.8249817 -4.6609745 -5.5011516 -6.5241394 -4.0064735 -5.5011516 -6.4204788 -3.3519745 
		-5.5011516 -6.5241394 -2.7615433 -5.5011516 -6.8249817 -2.2929745 -5.5011516 -7.2935524 
		-1.9921322 -5.5011516 -7.8839836 -1.8884697 -5.5011516 -8.5384827 -1.9921322 -5.5011516 
		-9.1929817 -2.2929745 -5.5011516 -9.7834129 -2.7615433 -5.5011516 -10.251984 -3.3519745 
		-5.5011516 -10.552826 -4.0064735 -5.5011516 -10.656487 -4.6609745 -5.5011516 -10.552826 
		-5.2514038 -5.5011516 -10.251984 -5.7199745 -5.5011516 -9.7834129 -6.0208149 -5.5011516 
		-9.1929817 -6.1244774 -5.5011516 -8.5384827 -6.4297314 -5.8683705 -7.7511177 -6.0678196 
		-5.8683705 -7.0408287 -5.5041294 -5.8683705 -6.4771347 -4.7938385 -5.8683705 -6.1152267 
		-4.0064735 -5.8683705 -5.9905205 -3.2191105 -5.8683705 -6.1152267 -2.5088196 -5.8683705 
		-6.4771347 -1.9451294 -5.8683705 -7.0408287 -1.5832195 -5.8683705 -7.7511177 -1.4585114 
		-5.8683705 -8.5384827 -1.5832195 -5.8683705 -9.3258476 -1.9451294 -5.8683705 -10.036137 
		-2.5088196 -5.8683705 -10.599827 -3.2191105 -5.8683705 -10.961739 -4.0064735 -5.8683705 
		-11.086445 -4.7938385 -5.8683705 -10.961739 -5.5041294 -5.8683705 -10.599827 -6.0678196 
		-5.8683705 -10.036137 -6.4297295 -5.8683705 -9.3258476 -6.5544357 -5.8683705 -8.5384827 
		-6.7789783 -6.2983289 -7.6376419 -6.3649063 -6.2983289 -6.8249817 -5.7199764 -6.2983289 
		-6.1800499 -4.9073143 -6.2983289 -5.7659798 -4.0064735 -6.2983289 -5.6232986 -3.1056347 
		-6.2983289 -5.7659798 -2.2929726 -6.2983289 -6.1800537 -1.6480427 -6.2983289 -6.8249817 
		-1.2339725 -6.2983289 -7.6376419 -1.0912933 -6.2983289 -8.5384827 -1.2339725 -6.2983289 
		-9.4393234 -1.6480427 -6.2983289 -10.251984 -2.2929745 -6.2983289 -10.896912 -3.1056347 
		-6.2983289 -11.310986 -4.0064735 -6.2983289 -11.453663 -4.9073143 -6.2983289 -11.310986 
		-5.7199745 -6.2983289 -10.896912 -6.3649063 -6.2983289 -10.251984 -6.7789764 -6.2983289 
		-9.4393234 -6.9216557 -6.2983289 -8.5384827 -7.0599575 -6.7804399 -7.5463486 -6.60392 
		-6.7804399 -6.6513252 -5.8936291 -6.7804399 -5.9410362 -4.9986095 -6.7804399 -5.4850006 
		-4.0064735 -6.7804399 -5.3278618 -3.0143394 -6.7804399 -5.4850006 -2.119318 -6.7804399 
		-5.9410362 -1.4090271 -6.7804399 -6.651329 -0.95299339 -6.7804399 -7.5463486 -0.79585457 
		-6.7804399 -8.5384827 -0.95299339 -6.7804399 -9.5306168 -1.4090271 -6.7804399 -10.425636 
		-2.1193199 -6.7804399 -11.135929 -3.0143394 -6.7804399 -11.591961 -4.0064735 -6.7804399 
		-11.749104 -4.9986095 -6.7804399 -11.591961 -5.8936291 -6.7804399 -11.135929 -6.6039181 
		-6.7804399 -10.425636 -7.0599537 -6.7804399 -9.5306168 -7.2170925 -6.7804399 -8.5384827 
		-7.265749 -7.3028321 -7.4794807 -6.7789783 -7.3028321 -6.5241394 -6.0208168 -7.3028321 
		-5.7659798 -5.0654755 -7.3028321 -5.2792091 -4.0064735 -7.3028321 -5.1114769 -2.9474716 
		-7.3028321 -5.2792091 -1.9921322 -7.3028321 -5.7659798 -1.2339725 -7.3028321 -6.5241394 
		-0.74720192 -7.3028321 -7.4794807 -0.5794735 -7.3028321 -8.5384827 -0.74720192 -7.3028321 
		-9.5974808 -1.2339725 -7.3028321 -10.552826 -1.9921322 -7.3028321 -11.310986 -2.9474716 
		-7.3028321 -11.797756 -4.0064735 -7.3028321 -11.965481 -5.0654755 -7.3028321 -11.797756 
		-6.0208149 -7.3028321 -11.310986 -6.7789764 -7.3028321 -10.552826 -7.2657471 -7.3028321 
		-9.5974808 -7.4334755 -7.3028321 -8.5384827 -7.3912849 -7.8526416 -7.4386902 -6.8857651 
		-7.8526416 -6.4465523 -6.098402 -7.8526416 -5.6591911 -5.106266 -7.8526416 -5.1536713 
		-4.0064735 -7.8526416 -4.9794846 -2.906683 -7.8526416 -5.1536713;
	setAttr ".pt[166:331]" -1.914547 -7.8526416 -5.6591911 -1.1271839 -7.8526416 
		-6.4465523 -0.62166405 -7.8526416 -7.438694 -0.44747543 -7.8526416 -8.5384827 -0.62166405 
		-7.8526416 -9.6382713 -1.1271839 -7.8526416 -10.630413 -1.914547 -7.8526416 -11.41777 
		-2.906683 -7.8526416 -11.923294 -4.0064735 -7.8526416 -12.097481 -5.106266 -7.8526416 
		-11.923294 -6.098402 -7.8526416 -11.41777 -6.8857651 -7.8526416 -10.630413 -7.391283 
		-7.8526416 -9.6382713 -7.5654736 -7.8526416 -8.5384827 -7.4334774 -8.4163322 -7.424984 
		-6.9216557 -8.4163322 -6.4204788 -6.1244774 -8.4163322 -5.6232986 -5.1199741 -8.4163322 
		-5.1114769 -4.0064735 -8.4163322 -4.9351196 -2.8929749 -8.4163322 -5.1114769 -1.8884697 
		-8.4163322 -5.6232986 -1.0912933 -8.4163322 -6.4204788 -0.5794735 -8.4163322 -7.424984 
		-0.40311241 -8.4163322 -8.5384827 -0.5794735 -8.4163322 -9.6519814 -1.0912933 -8.4163322 
		-10.656487 -1.8884697 -8.4163322 -11.453663 -2.8929749 -8.4163322 -11.965481 -4.0064735 
		-8.4163322 -12.141842 -5.1199741 -8.4163322 -11.965481 -6.1244774 -8.4163322 -11.453663 
		-6.9216557 -8.4163322 -10.656487 -7.4334755 -8.4163322 -9.6519814 -7.6098366 -8.4163322 
		-8.5384827 -7.3912849 -8.9800224 -7.4386902 -6.8857651 -8.9800224 -6.4465523 -6.098402 
		-8.9800224 -5.6591911 -5.106266 -8.9800224 -5.1536713 -4.0064735 -8.9800224 -4.9794846 
		-2.906683 -8.9800224 -5.1536713 -1.914547 -8.9800224 -5.6591911 -1.1271839 -8.9800224 
		-6.4465523 -0.62166405 -8.9800224 -7.438694 -0.44747543 -8.9800224 -8.5384827 -0.62166405 
		-8.9800224 -9.6382713 -1.1271839 -8.9800224 -10.630413 -1.914547 -8.9800224 -11.41777 
		-2.906683 -8.9800224 -11.923294 -4.0064735 -8.9800224 -12.097481 -5.106266 -8.9800224 
		-11.923294 -6.098402 -8.9800224 -11.41777 -6.8857651 -8.9800224 -10.630413 -7.391283 
		-8.9800224 -9.6382713 -7.5654736 -8.9800224 -8.5384827 -7.265749 -9.5298328 -7.4794807 
		-6.7789783 -9.5298328 -6.5241394 -6.0208168 -9.5298328 -5.7659798 -5.0654755 -9.5298328 
		-5.2792091 -4.0064735 -9.5298328 -5.1114769 -2.9474716 -9.5298328 -5.2792091 -1.9921322 
		-9.5298328 -5.7659798 -1.2339725 -9.5298328 -6.5241394 -0.74720192 -9.5298328 -7.4794807 
		-0.5794735 -9.5298328 -8.5384827 -0.74720192 -9.5298328 -9.5974808 -1.2339725 -9.5298328 
		-10.552826 -1.9921322 -9.5298328 -11.310986 -2.9474716 -9.5298328 -11.797756 -4.0064735 
		-9.5298328 -11.965481 -5.0654755 -9.5298328 -11.797756 -6.0208149 -9.5298328 -11.310986 
		-6.7789764 -9.5298328 -10.552826 -7.2657471 -9.5298328 -9.5974808 -7.4334755 -9.5298328 
		-8.5384827 -7.0599575 -10.052225 -7.5463486 -6.60392 -10.052225 -6.6513252 -5.8936291 
		-10.052225 -5.9410362 -4.9986095 -10.052225 -5.4850006 -4.0064735 -10.052225 -5.3278618 
		-3.0143394 -10.052225 -5.4850006 -2.119318 -10.052225 -5.9410362 -1.4090271 -10.052225 
		-6.651329 -0.95299339 -10.052225 -7.5463486 -0.79585457 -10.052225 -8.5384827 -0.95299339 
		-10.052225 -9.5306168 -1.4090271 -10.052225 -10.425636 -2.1193199 -10.052225 -11.135929 
		-3.0143394 -10.052225 -11.591961 -4.0064735 -10.052225 -11.749104 -4.9986095 -10.052225 
		-11.591961 -5.8936291 -10.052225 -11.135929 -6.6039181 -10.052225 -10.425636 -7.0599537 
		-10.052225 -9.5306168 -7.2170925 -10.052225 -8.5384827 -6.7789783 -10.534334 -7.6376419 
		-6.3649063 -10.534334 -6.8249817 -5.7199764 -10.534334 -6.1800499 -4.9073143 -10.534334 
		-5.7659798 -4.0064735 -10.534334 -5.6232986 -3.1056347 -10.534334 -5.7659798 -2.2929726 
		-10.534334 -6.1800537 -1.6480427 -10.534334 -6.8249817 -1.2339725 -10.534334 -7.6376419 
		-1.0912933 -10.534334 -8.5384827 -1.2339725 -10.534334 -9.4393234 -1.6480427 -10.534334 
		-10.251984 -2.2929745 -10.534334 -10.896912 -3.1056347 -10.534334 -11.310986 -4.0064735 
		-10.534334 -11.453663 -4.9073143 -10.534334 -11.310986 -5.7199745 -10.534334 -10.896912 
		-6.3649063 -10.534334 -10.251984 -6.7789764 -10.534334 -9.4393234 -6.9216557 -10.534334 
		-8.5384827 -6.4297314 -10.964293 -7.7511177 -6.0678196 -10.964293 -7.0408287 -5.5041294 
		-10.964293 -6.4771347 -4.7938385 -10.964293 -6.1152267 -4.0064735 -10.964293 -5.9905205 
		-3.2191105 -10.964293 -6.1152267 -2.5088196 -10.964293 -6.4771347 -1.9451294 -10.964293 
		-7.0408287 -1.5832195 -10.964293 -7.7511177 -1.4585114 -10.964293 -8.5384827 -1.5832195 
		-10.964293 -9.3258476 -1.9451294 -10.964293 -10.036137 -2.5088196 -10.964293 -10.599827 
		-3.2191105 -10.964293 -10.961739 -4.0064735 -10.964293 -11.086445 -4.7938385 -10.964293 
		-10.961739 -5.5041294 -10.964293 -10.599827 -6.0678196 -10.964293 -10.036137 -6.4297295 
		-10.964293 -9.3258476 -6.5544357 -10.964293 -8.5384827 -6.0208168 -11.331512 -7.8839836 
		-5.7199764 -11.331512 -7.2935524 -5.2514076 -11.331512 -6.8249817 -4.6609745 -11.331512 
		-6.5241394 -4.0064735 -11.331512 -6.4204788 -3.3519745 -11.331512 -6.5241394 -2.7615433 
		-11.331512 -6.8249817 -2.2929745 -11.331512 -7.2935524 -1.9921322 -11.331512 -7.8839836 
		-1.8884697 -11.331512 -8.5384827 -1.9921322 -11.331512 -9.1929817 -2.2929745 -11.331512 
		-9.7834129 -2.7615433 -11.331512 -10.251984 -3.3519745 -11.331512 -10.552826 -4.0064735 
		-11.331512 -10.656487 -4.6609745 -11.331512 -10.552826 -5.2514038 -11.331512 -10.251984 
		-5.7199745 -11.331512 -9.7834129 -6.0208149 -11.331512 -9.1929817 -6.1244774 -11.331512 
		-8.5384827 -5.5623016 -11.626951 -8.0329666 -5.3299408 -11.626951 -7.576931 -4.9680271 
		-11.626951 -7.2150192 -4.5119934 -11.626951 -6.9826584 -4.0064735 -11.626951 -6.9025879 
		-3.5009556 -11.626951 -6.9826584 -3.0449219 -11.626951 -7.2150192 -2.6830082 -11.626951 
		-7.576931 -2.4506474 -11.626951 -8.0329666 -2.3705807 -11.626951 -8.5384827 -2.4506474 
		-11.626951 -9.0439987 -2.6830082 -11.626951 -9.5000343;
	setAttr ".pt[332:381]" -3.0449219 -11.626951 -9.8619461 -3.5009556 -11.626951 
		-10.094307 -4.0064735 -11.626951 -10.174374 -4.5119934 -11.626951 -10.094307 -4.9680271 
		-11.626951 -9.8619461 -5.3299389 -11.626951 -9.5000343 -5.5622997 -11.626951 -9.0439987 
		-5.6423664 -11.626951 -8.5384827 -5.0654755 -11.843332 -8.1943893 -4.9073143 -11.843332 
		-7.8839836 -4.6609745 -11.843332 -7.6376419 -4.350565 -11.843332 -7.4794807 -4.0064735 
		-11.843332 -7.424984 -3.662384 -11.843332 -7.4794807 -3.3519745 -11.843332 -7.6376419 
		-3.1056347 -11.843332 -7.8839836 -2.9474716 -11.843332 -8.1943893 -2.8929749 -11.843332 
		-8.5384827 -2.9474716 -11.843332 -8.882576 -3.1056347 -11.843332 -9.1929817 -3.3519745 
		-11.843332 -9.4393234 -3.662384 -11.843332 -9.5974808 -4.0064735 -11.843332 -9.6519814 
		-4.350565 -11.843332 -9.5974808 -4.6609745 -11.843332 -9.4393234 -4.9073143 -11.843332 
		-9.1929817 -5.0654755 -11.843332 -8.882576 -5.1199741 -11.843332 -8.5384827 -4.5425758 
		-11.975332 -8.3642921 -4.4625111 -11.975332 -8.2071533 -4.3378029 -11.975332 -8.0824471 
		-4.1806641 -11.975332 -8.0023842 -4.0064735 -11.975332 -7.9747925 -3.8322849 -11.975332 
		-8.0023842 -3.6751461 -11.975332 -8.0824471 -3.5504398 -11.975332 -8.2071533 -3.4703732 
		-11.975332 -8.3642921 -3.4427853 -11.975332 -8.5384827 -3.4703732 -11.975332 -8.7126732 
		-3.5504398 -11.975332 -8.869812 -3.6751461 -11.975332 -8.9945183 -3.8322849 -11.975332 
		-9.0745811 -4.0064735 -11.975332 -9.1021729 -4.1806641 -11.975332 -9.0745811 -4.3378029 
		-11.975332 -8.9945183 -4.4625092 -11.975332 -8.869812 -4.5425758 -11.975332 -8.7126732 
		-4.5701637 -11.975332 -8.5384827 -4.0064735 -4.8129697 -8.5384827 -4.0064735 -12.019693 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.5562371 6.30732727 -0.1807324 0.47316355 6.30732727 -0.34377342
		 0.34377342 6.30732727 -0.47316355 0.18073237 6.30732727 -0.55623704 0 6.30732727 -0.58486223
		 -0.18073237 6.30732727 -0.55623698 -0.34377337 6.30732727 -0.47316343 -0.47316337 6.30732727 -0.34377331
		 -0.55623692 6.30732727 -0.18073232 -0.58486211 6.30732727 0 -0.55623692 6.30732727 0.18073232
		 -0.47316337 6.30732727 0.34377328 -0.34377328 6.30732727 0.47316331 -0.18073232 6.30732727 0.55623686
		 -1.7430244e-08 6.30732727 0.58486199 0.18073227 6.30732727 0.5562368 0.34377322 6.30732727 0.47316328
		 0.47316328 6.30732727 0.34377325 0.5562368 6.30732727 0.18073228 0.58486193 6.30732727 0
		 1.098777771 6.44428253 -0.35701454 0.93467623 6.44428253 -0.67908198 0.67908198 6.44428253 -0.93467611
		 0.35701448 6.44428253 -1.098777652 0 6.44428253 -1.15532315 -0.35701448 6.44428253 -1.098777533
		 -0.67908186 6.44428253 -0.93467593 -0.93467593 6.44428253 -0.6790818 -1.098777413 6.44428253 -0.35701439
		 -1.15532279 6.44428253 0 -1.098777413 6.44428253 0.35701439 -0.93467581 6.44428253 0.67908174
		 -0.67908174 6.44428253 0.93467581 -0.35701439 6.44428253 1.098777294 -3.4431295e-08 6.44428253 1.15532267
		 0.3570143 6.44428253 1.098777175 0.67908156 6.44428253 0.93467569 0.93467557 6.44428253 0.67908162
		 1.098777175 6.44428253 0.35701433 1.15532255 6.44428253 0 1.61426294 6.66879177 -0.52450579
		 1.37317407 6.66879177 -0.99766934 0.99766934 6.66879177 -1.37317395 0.52450573 6.66879177 -1.6142627
		 0 6.66879177 -1.6973362 -0.52450573 6.66879177 -1.61426258 -0.9976691 6.66879177 -1.37317371
		 -1.37317359 6.66879177 -0.99766898 -1.61426234 6.66879177 -0.52450556 -1.69733584 6.66879177 0
		 -1.61426234 6.66879177 0.52450556 -1.37317348 6.66879177 0.99766892 -0.99766892 6.66879177 1.37317348
		 -0.52450556 6.66879177 1.6142621 -5.0584536e-08 6.66879177 1.6973356 0.5245055 6.66879177 1.61426198
		 0.99766868 6.66879177 1.37317336 1.37317324 6.66879177 0.9976688 1.61426198 6.66879177 0.5245055
		 1.69733536 6.66879177 0 2.089999437 6.97532654 -0.67908198 1.77785981 6.97532654 -1.29169059
		 1.29169059 6.97532654 -1.77785969 0.67908192 6.97532654 -2.089999199 0 6.97532654 -2.19755507
		 -0.67908192 6.97532654 -2.08999896 -1.29169047 6.97532654 -1.77785921 -1.77785909 6.97532654 -1.29169023
		 -2.089998484 6.97532654 -0.67908168 -2.19755459 6.97532654 0 -2.089998484 6.97532654 0.67908168
		 -1.77785897 6.97532654 1.29169011 -1.29169011 6.97532654 1.77785885 -0.67908168 6.97532654 2.089998484
		 -6.5492216e-08 6.97532654 2.19755435 0.6790815 6.97532654 2.089998484 1.29168987 6.97532654 1.77785873
		 1.77785861 6.97532654 1.29168999 2.089998245 6.97532654 0.67908156 2.19755411 6.97532654 0
		 2.51427341 7.3563385 -0.81693691 2.13876867 7.3563385 -1.55390632 1.55390632 7.3563385 -2.13876843
		 0.81693685 7.3563385 -2.51427317 0 7.3563385 -2.64366293 -0.81693685 7.3563385 -2.51427293
		 -1.55390596 7.3563385 -2.13876796 -2.13876772 7.3563385 -1.55390584 -2.51427245 7.3563385 -0.81693655
		 -2.64366245 7.3563385 0 -2.51427245 7.3563385 0.81693655 -2.13876772 7.3563385 1.55390561
		 -1.55390561 7.3563385 2.13876748 -0.81693655 7.3563385 2.51427197 -7.8787259e-08 7.3563385 2.64366198
		 0.81693631 7.3563385 2.51427197 1.55390525 7.3563385 2.13876724 2.13876724 7.3563385 1.55390549
		 2.51427174 7.3563385 0.81693643 2.64366174 7.3563385 0 2.87663746 7.80244589 -0.93467611
		 2.44701409 7.80244589 -1.77785969 1.77785969 7.80244589 -2.44701385 0.93467599 7.80244589 -2.87663722
		 0 7.80244589 -3.024675131 -0.93467599 7.80244589 -2.87663698 -1.77785933 7.80244589 -2.44701338
		 -2.44701314 7.80244589 -1.77785909 -2.87663651 7.80244589 -0.93467581 -3.024674416 7.80244589 0
		 -2.87663651 7.80244589 0.93467581 -2.4470129 7.80244589 1.77785897 -1.77785897 7.80244589 2.44701266
		 -0.93467581 7.80244589 2.87663603 -9.0142301e-08 7.80244589 3.024674177 0.93467551 7.80244589 2.87663603
		 1.77785861 7.80244589 2.44701266 2.44701266 7.80244589 1.77785873 2.87663579 7.80244589 0.93467557
		 3.0246737 7.80244589 0 3.16816926 8.30266476 -1.029400587 2.69500589 8.30266476 -1.95803618
		 1.95803618 8.30266476 -2.69500566 1.029400468 8.30266476 -3.16816878 0 8.30266476 -3.33120966
		 -1.029400468 8.30266476 -3.16816878 -1.95803571 8.30266476 -2.69500494 -2.6950047 8.30266476 -1.95803547
		 -3.16816807 8.30266476 -1.02940011 -3.33120894 8.30266476 0 -3.16816807 8.30266476 1.02940011
		 -2.6950047 8.30266476 1.95803547 -1.95803547 8.30266476 2.69500446 -1.02940011 8.30266476 3.16816759
		 -9.9277742e-08 8.30266476 3.33120871 1.029399872 8.30266476 3.16816735 1.95803499 8.30266476 2.69500422
		 2.69500399 8.30266476 1.95803523 3.16816711 8.30266476 1.029399991 3.33120823 8.30266476 0
		 3.38169026 8.84467793 -1.098777652 2.87663746 8.84467793 -2.089999437 2.089999437 8.84467793 -2.87663722
		 1.098777533 8.84467793 -3.38168979 0 8.84467793 -3.55571914 -1.098777533 8.84467793 -3.38168979
		 -2.08999896 8.84467793 -2.87663698 -2.87663674 8.84467793 -2.089998722 -3.38168907 8.84467793 -1.098777413
		 -3.55571818 8.84467793 0 -3.38168907 8.84467793 1.098777413 -2.87663651 8.84467793 2.089998484
		 -2.089998484 8.84467793 2.87663627 -1.098777413 8.84467793 3.38168859 -1.0596863e-07 8.84467793 3.55571771
		 1.098777056 8.84467793 3.38168836 2.089998245 8.84467793 2.87663603 2.87663579 8.84467793 2.089998484
		 3.38168812 8.84467793 1.098777175 3.55571723 8.84467793 0 3.51194263 9.41513824 -1.14109933
		 2.98743701 9.41513824 -2.1704998 2.1704998 9.41513824 -2.98743677 1.14109921 9.41513824 -3.51194215
		 0 9.41513824 -3.69267464 -1.14109921 9.41513824 -3.51194191;
	setAttr ".vt[166:331]" -2.17049932 9.41513824 -2.98743606 -2.98743582 9.41513824 -2.17049932
		 -3.51194143 9.41513824 -1.14109886 -3.69267368 9.41513824 0 -3.51194143 9.41513824 1.14109886
		 -2.98743558 9.41513824 2.17049909 -2.17049909 9.41513824 2.98743534 -1.14109886 9.41513824 3.51194096
		 -1.1005022e-07 9.41513824 3.69267321 1.1410985 9.41513824 3.51194096 2.17049861 9.41513824 2.9874351
		 2.98743486 9.41513824 2.17049885 3.51194072 9.41513824 1.14109862 3.69267273 9.41513824 0
		 3.55571961 10 -1.15532327 3.024675846 10 -2.1975553 2.1975553 10 -3.024675608 1.15532315 10 -3.55571914
		 0 10 -3.73870397 -1.15532315 10 -3.5557189 -2.19755483 10 -3.024674892 -3.024674654 10 -2.19755483
		 -3.55571818 10 -1.15532279 -3.73870325 10 0 -3.55571818 10 1.15532279 -3.024674416 10 2.19755459
		 -2.19755459 10 3.024674177 -1.15532279 10 3.55571771 -1.1142201e-07 10 3.73870277
		 1.15532243 10 3.55571747 2.19755411 10 3.024673939 3.0246737 10 2.19755435 3.55571723 10 1.15532255
		 3.7387023 10 0 3.51194263 10.58486176 -1.14109933 2.98743701 10.58486176 -2.1704998
		 2.1704998 10.58486176 -2.98743677 1.14109921 10.58486176 -3.51194215 0 10.58486176 -3.69267464
		 -1.14109921 10.58486176 -3.51194191 -2.17049932 10.58486176 -2.98743606 -2.98743582 10.58486176 -2.17049932
		 -3.51194143 10.58486176 -1.14109886 -3.69267368 10.58486176 0 -3.51194143 10.58486176 1.14109886
		 -2.98743558 10.58486176 2.17049909 -2.17049909 10.58486176 2.98743534 -1.14109886 10.58486176 3.51194096
		 -1.1005022e-07 10.58486176 3.69267321 1.1410985 10.58486176 3.51194096 2.17049861 10.58486176 2.9874351
		 2.98743486 10.58486176 2.17049885 3.51194072 10.58486176 1.14109862 3.69267273 10.58486176 0
		 3.38169026 11.15532207 -1.098777652 2.87663746 11.15532207 -2.089999437 2.089999437 11.15532207 -2.87663722
		 1.098777533 11.15532207 -3.38168979 0 11.15532207 -3.55571914 -1.098777533 11.15532207 -3.38168979
		 -2.08999896 11.15532207 -2.87663698 -2.87663674 11.15532207 -2.089998722 -3.38168907 11.15532207 -1.098777413
		 -3.55571818 11.15532207 0 -3.38168907 11.15532207 1.098777413 -2.87663651 11.15532207 2.089998484
		 -2.089998484 11.15532207 2.87663627 -1.098777413 11.15532207 3.38168859 -1.0596863e-07 11.15532207 3.55571771
		 1.098777056 11.15532207 3.38168836 2.089998245 11.15532207 2.87663603 2.87663579 11.15532207 2.089998484
		 3.38168812 11.15532207 1.098777175 3.55571723 11.15532207 0 3.16816926 11.69733524 -1.029400587
		 2.69500589 11.69733524 -1.95803618 1.95803618 11.69733524 -2.69500566 1.029400468 11.69733524 -3.16816878
		 0 11.69733524 -3.33120966 -1.029400468 11.69733524 -3.16816878 -1.95803571 11.69733524 -2.69500494
		 -2.6950047 11.69733524 -1.95803547 -3.16816807 11.69733524 -1.02940011 -3.33120894 11.69733524 0
		 -3.16816807 11.69733524 1.02940011 -2.6950047 11.69733524 1.95803547 -1.95803547 11.69733524 2.69500446
		 -1.02940011 11.69733524 3.16816759 -9.9277742e-08 11.69733524 3.33120871 1.029399872 11.69733524 3.16816735
		 1.95803499 11.69733524 2.69500422 2.69500399 11.69733524 1.95803523 3.16816711 11.69733524 1.029399991
		 3.33120823 11.69733524 0 2.87663746 12.19755363 -0.93467611 2.44701409 12.19755363 -1.77785969
		 1.77785969 12.19755363 -2.44701385 0.93467599 12.19755363 -2.87663722 0 12.19755363 -3.024675131
		 -0.93467599 12.19755363 -2.87663698 -1.77785933 12.19755363 -2.44701338 -2.44701314 12.19755363 -1.77785909
		 -2.87663651 12.19755363 -0.93467581 -3.024674416 12.19755363 0 -2.87663651 12.19755363 0.93467581
		 -2.4470129 12.19755363 1.77785897 -1.77785897 12.19755363 2.44701266 -0.93467581 12.19755363 2.87663603
		 -9.0142301e-08 12.19755363 3.024674177 0.93467551 12.19755363 2.87663603 1.77785861 12.19755363 2.44701266
		 2.44701266 12.19755363 1.77785873 2.87663579 12.19755363 0.93467557 3.0246737 12.19755363 0
		 2.51427341 12.6436615 -0.81693691 2.13876867 12.6436615 -1.55390632 1.55390632 12.6436615 -2.13876843
		 0.81693685 12.6436615 -2.51427317 0 12.6436615 -2.64366293 -0.81693685 12.6436615 -2.51427293
		 -1.55390596 12.6436615 -2.13876796 -2.13876772 12.6436615 -1.55390584 -2.51427245 12.6436615 -0.81693655
		 -2.64366245 12.6436615 0 -2.51427245 12.6436615 0.81693655 -2.13876772 12.6436615 1.55390561
		 -1.55390561 12.6436615 2.13876748 -0.81693655 12.6436615 2.51427197 -7.8787259e-08 12.6436615 2.64366198
		 0.81693631 12.6436615 2.51427197 1.55390525 12.6436615 2.13876724 2.13876724 12.6436615 1.55390549
		 2.51427174 12.6436615 0.81693643 2.64366174 12.6436615 0 2.089999437 13.024673462 -0.67908198
		 1.77785981 13.024673462 -1.29169059 1.29169059 13.024673462 -1.77785969 0.67908192 13.024673462 -2.089999199
		 0 13.024673462 -2.19755507 -0.67908192 13.024673462 -2.08999896 -1.29169047 13.024673462 -1.77785921
		 -1.77785909 13.024673462 -1.29169023 -2.089998484 13.024673462 -0.67908168 -2.19755459 13.024673462 0
		 -2.089998484 13.024673462 0.67908168 -1.77785897 13.024673462 1.29169011 -1.29169011 13.024673462 1.77785885
		 -0.67908168 13.024673462 2.089998484 -6.5492216e-08 13.024673462 2.19755435 0.6790815 13.024673462 2.089998484
		 1.29168987 13.024673462 1.77785873 1.77785861 13.024673462 1.29168999 2.089998245 13.024673462 0.67908156
		 2.19755411 13.024673462 0 1.61426294 13.33120823 -0.52450579 1.37317407 13.33120823 -0.99766934
		 0.99766934 13.33120823 -1.37317395 0.52450573 13.33120823 -1.6142627 0 13.33120823 -1.6973362
		 -0.52450573 13.33120823 -1.61426258 -0.9976691 13.33120823 -1.37317371 -1.37317359 13.33120823 -0.99766898
		 -1.61426234 13.33120823 -0.52450556 -1.69733584 13.33120823 0 -1.61426234 13.33120823 0.52450556
		 -1.37317348 13.33120823 0.99766892;
	setAttr ".vt[332:381]" -0.99766892 13.33120823 1.37317348 -0.52450556 13.33120823 1.6142621
		 -5.0584536e-08 13.33120823 1.6973356 0.5245055 13.33120823 1.61426198 0.99766868 13.33120823 1.37317336
		 1.37317324 13.33120823 0.9976688 1.61426198 13.33120823 0.5245055 1.69733536 13.33120823 0
		 1.098777771 13.55571747 -0.35701454 0.93467623 13.55571747 -0.67908198 0.67908198 13.55571747 -0.93467611
		 0.35701448 13.55571747 -1.098777652 0 13.55571747 -1.15532315 -0.35701448 13.55571747 -1.098777533
		 -0.67908186 13.55571747 -0.93467593 -0.93467593 13.55571747 -0.6790818 -1.098777413 13.55571747 -0.35701439
		 -1.15532279 13.55571747 0 -1.098777413 13.55571747 0.35701439 -0.93467581 13.55571747 0.67908174
		 -0.67908174 13.55571747 0.93467581 -0.35701439 13.55571747 1.098777294 -3.4431295e-08 13.55571747 1.15532267
		 0.3570143 13.55571747 1.098777175 0.67908156 13.55571747 0.93467569 0.93467557 13.55571747 0.67908162
		 1.098777175 13.55571747 0.35701433 1.15532255 13.55571747 0 0.5562371 13.69267273 -0.1807324
		 0.47316355 13.69267273 -0.34377342 0.34377342 13.69267273 -0.47316355 0.18073237 13.69267273 -0.55623704
		 0 13.69267273 -0.58486223 -0.18073237 13.69267273 -0.55623698 -0.34377337 13.69267273 -0.47316343
		 -0.47316337 13.69267273 -0.34377331 -0.55623692 13.69267273 -0.18073232 -0.58486211 13.69267273 0
		 -0.55623692 13.69267273 0.18073232 -0.47316337 13.69267273 0.34377328 -0.34377328 13.69267273 0.47316331
		 -0.18073232 13.69267273 0.55623686 -1.7430244e-08 13.69267273 0.58486199 0.18073227 13.69267273 0.5562368
		 0.34377322 13.69267273 0.47316328 0.47316328 13.69267273 0.34377325 0.5562368 13.69267273 0.18073228
		 0.58486193 13.69267273 0 0 6.2612977 0 0 13.73870277 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_MinimalGreyBall" -p "Lookdev_OverlayMinimal_grp";
	rename -uid "88525D08-4557-74EC-412D-F6A6827630B6";
	setAttr ".rp" -type "double3" -4.0064740860363557 2.1199659490262874 -8.5384841763512327 ;
	setAttr ".sp" -type "double3" -4.0064740860363557 2.1199659490262874 -8.5384841763512327 ;
createNode mesh -n "Lookdev_MinimalGreyBallShape" -p "Lookdev_MinimalGreyBall";
	rename -uid "101F1F10-4A33-529A-DB0D-B0B6F9141915";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.1351166 2.9739804 -8.4966812 -4.1159058 
		2.9739804 -8.4589767 -4.0859795 2.9739804 -8.4290543 -4.0482731 2.9739804 -8.4098396 
		-4.0064735 2.9739804 -8.4032211 -3.9646759 2.9739804 -8.4098434 -3.9269695 2.9739804 
		-8.4290543 -3.8970432 2.9739804 -8.4589767 -3.8778324 2.9739804 -8.4966812 -3.871212 
		2.9739804 -8.5384827 -3.8778324 2.9739804 -8.5802841 -3.8970432 2.9739804 -8.6179886 
		-3.9269695 2.9739804 -8.6479111 -3.9646759 2.9739804 -8.6671257 -4.0064735 2.9739804 
		-8.6737442 -4.0482731 2.9739804 -8.6671219 -4.0859795 2.9739804 -8.6479111 -4.1159058 
		2.9739804 -8.6179886 -4.1351166 2.9739804 -8.5802841 -4.141737 2.9739804 -8.5384827 
		-4.2605915 2.942306 -8.4559135 -4.2226391 2.942306 -8.3814316 -4.1635284 2.942306 
		-8.322319 -4.0890427 2.942306 -8.2843628 -4.0064735 2.942306 -8.2712898 -3.9239063 
		2.942306 -8.2843628 -3.8494205 2.942306 -8.322319 -3.7903099 2.942306 -8.3814316 
		-3.7523556 2.942306 -8.4559135 -3.7392807 2.942306 -8.5384827 -3.7523556 2.942306 
		-8.6210518 -3.7903099 2.942306 -8.6955338 -3.8494205 2.942306 -8.7546463 -3.9239063 
		2.942306 -8.7925987 -4.0064735 2.942306 -8.8056755 -4.0890427 2.942306 -8.7925987 
		-4.1635284 2.942306 -8.7546463 -4.2226391 2.942306 -8.6955338 -4.2605915 2.942306 
		-8.6210518 -4.2736683 2.942306 -8.5384827 -4.3798084 2.8903832 -8.4171791 -4.3240528 
		2.8903832 -8.3077507 -4.2372074 2.8903832 -8.2209053 -4.1277771 2.8903832 -8.1651497 
		-4.0064735 2.8903832 -8.1459351 -3.8851719 2.8903832 -8.1651497 -3.7757416 2.8903832 
		-8.2209053 -3.6888962 2.8903832 -8.3077507 -3.6331406 2.8903832 -8.4171791 -3.6139259 
		2.8903832 -8.5384827 -3.6331406 2.8903832 -8.6597862 -3.6888962 2.8903832 -8.7692146 
		-3.7757416 2.8903832 -8.85606 -3.8851719 2.8903832 -8.9118156 -4.0064735 2.8903832 
		-8.9310265 -4.1277771 2.8903832 -8.9118156 -4.2372074 2.8903832 -8.85606 -4.3240528 
		2.8903832 -8.7692146 -4.3798084 2.8903832 -8.6597862 -4.3990211 2.8903832 -8.5384827 
		-4.4898338 2.81949 -8.3814316 -4.4176445 2.81949 -8.2397499 -4.3052082 2.81949 -8.1273117 
		-4.1635284 2.81949 -8.0551224 -4.0064735 2.81949 -8.0302467 -3.8494205 2.81949 -8.0551224 
		-3.7077408 2.81949 -8.1273117 -3.5953045 2.81949 -8.2397499 -3.5231152 2.81949 -8.3814316 
		-3.4982395 2.81949 -8.5384827 -3.5231152 2.81949 -8.6955338 -3.5953045 2.81949 -8.8372154 
		-3.7077408 2.81949 -8.9496536 -3.8494205 2.81949 -9.021843 -4.0064735 2.81949 -9.0467186 
		-4.1635284 2.81949 -9.021843 -4.3052063 2.81949 -8.9496536 -4.4176445 2.81949 -8.8372154 
		-4.4898338 2.81949 -8.6955338 -4.5147076 2.81949 -8.5384827 -4.5879574 2.7313719 
		-8.3495483 -4.5011139 2.7313719 -8.1791077 -4.3658504 2.7313719 -8.0438423 -4.1954098 
		2.7313719 -7.9570007 -4.0064735 2.7313719 -7.9270744 -3.8175392 2.7313719 -7.9570007 
		-3.6470985 2.7313719 -8.0438423 -3.5118351 2.7313719 -8.1791077 -3.4249916 2.7313719 
		-8.3495483 -3.3950672 2.7313719 -8.5384827 -3.4249916 2.7313719 -8.727417 -3.5118351 
		2.7313719 -8.8978577 -3.6470985 2.7313719 -9.033123 -3.8175392 2.7313719 -9.1199646 
		-4.0064735 2.7313719 -9.1498909 -4.1954098 2.7313719 -9.1199646 -4.3658504 2.7313719 
		-9.033123 -4.5011139 2.7313719 -8.8978577 -4.5879574 2.7313719 -8.727417 -4.6178818 
		2.7313719 -8.5384827 -4.6717625 2.6281996 -8.322319 -4.572401 2.6281996 -8.1273117 
		-4.4176445 2.6281996 -7.9725571 -4.2226391 2.6281996 -7.8731956 -4.0064735 2.6281996 
		-7.8389587 -3.7903099 2.6281996 -7.8731956 -3.5953045 2.6281996 -7.9725571 -3.4405479 
		2.6281996 -8.1273117 -3.3411865 2.6281996 -8.322319 -3.3069515 2.6281996 -8.5384827 
		-3.3411865 2.6281996 -8.7546463 -3.4405479 2.6281996 -8.9496536 -3.5953045 2.6281996 
		-9.1044083 -3.7903099 2.6281996 -9.2037697 -4.0064735 2.6281996 -9.2380066 -4.2226391 
		2.6281996 -9.2037697 -4.4176445 2.6281996 -9.1044083 -4.572401 2.6281996 -8.9496536 
		-4.6717625 2.6281996 -8.7546463 -4.7059975 2.6281996 -8.5384827 -4.7391853 2.5125132 
		-8.3004112 -4.629755 2.5125132 -8.0856438 -4.4593143 2.5125132 -7.9152031 -4.2445469 
		2.5125132 -7.8057709 -4.0064735 2.5125132 -7.7680664 -3.7684021 2.5125132 -7.8057709 
		-3.5536327 2.5125132 -7.9152031 -3.383194 2.5125132 -8.0856438 -3.2737637 2.5125132 
		-8.3004112 -3.2360554 2.5125132 -8.5384827 -3.2737637 2.5125132 -8.7765541 -3.383194 
		2.5125132 -8.9913216 -3.5536346 2.5125132 -9.1617622 -3.768404 2.5125132 -9.2711945 
		-4.0064735 2.5125132 -9.3088989 -4.244545 2.5125132 -9.2711945 -4.4593143 2.5125132 
		-9.1617622 -4.629755 2.5125132 -8.9913216 -4.7391834 2.5125132 -8.7765541 -4.7768898 
		2.5125132 -8.5384827 -4.7885666 2.3871608 -8.2843628 -4.6717625 2.3871608 -8.0551224 
		-4.4898338 2.3871608 -7.8731956 -4.2605915 2.3871608 -7.7563896 -4.0064735 2.3871608 
		-7.7161407 -3.7523556 2.3871608 -7.7563896 -3.5231152 2.3871608 -7.8731956 -3.3411865 
		2.3871608 -8.0551224 -3.2243824 2.3871608 -8.2843628 -3.1841354 2.3871608 -8.5384827 
		-3.2243824 2.3871608 -8.7925987 -3.3411865 2.3871608 -9.021843 -3.5231152 2.3871608 
		-9.2037697 -3.7523556 2.3871608 -9.3205757 -4.0064735 2.3871608 -9.3608208 -4.2605915 
		2.3871608 -9.3205757 -4.4898338 2.3871608 -9.2037697 -4.6717625 2.3871608 -9.021843 
		-4.7885666 2.3871608 -8.7925987 -4.8288136 2.3871608 -8.5384827 -4.8186913 2.2552285 
		-8.2745781 -4.6973858 2.2552285 -8.0365028 -4.5084515 2.2552285 -7.8475723 -4.27038 
		2.2552285 -7.726265 -4.0064735 2.2552285 -7.6844711 -3.742569 2.2552285 -7.726265;
	setAttr ".pt[166:331]" -3.5044975 2.2552285 -7.8475723 -3.3155632 2.2552285 
		-8.0365028 -3.1942577 2.2552285 -8.2745781 -3.1524601 2.2552285 -8.5384827 -3.1942577 
		2.2552285 -8.8023872 -3.3155632 2.2552285 -9.0404625 -3.5044975 2.2552285 -9.229393 
		-3.742569 2.2552285 -9.3507004 -4.0064735 2.2552285 -9.3924942 -4.27038 2.2552285 
		-9.3507004 -4.5084515 2.2552285 -9.229393 -4.6973858 2.2552285 -9.0404625 -4.8186913 
		2.2552285 -8.8023872 -4.8604889 2.2552285 -8.5384827 -4.8288136 2.119966 -8.2712898 
		-4.7059975 2.119966 -8.0302467 -4.5147076 2.119966 -7.8389587 -4.2736683 2.119966 
		-7.7161407 -4.0064735 2.119966 -7.6738243 -3.7392807 2.119966 -7.7161407 -3.4982395 
		2.119966 -7.8389587 -3.3069515 2.119966 -8.0302467 -3.1841354 2.119966 -8.2712898 
		-3.1418152 2.119966 -8.5384827 -3.1841354 2.119966 -8.8056755 -3.3069515 2.119966 
		-9.0467186 -3.4982395 2.119966 -9.2380066 -3.7392807 2.119966 -9.3608208 -4.0064735 
		2.119966 -9.403141 -4.2736683 2.119966 -9.3608208 -4.5147076 2.119966 -9.2380066 
		-4.7059975 2.119966 -9.0467186 -4.8288136 2.119966 -8.8056755 -4.8711338 2.119966 
		-8.5384827 -4.8186913 1.9847035 -8.2745781 -4.6973858 1.9847035 -8.0365028 -4.5084515 
		1.9847035 -7.8475723 -4.27038 1.9847035 -7.726265 -4.0064735 1.9847035 -7.6844711 
		-3.742569 1.9847035 -7.726265 -3.5044975 1.9847035 -7.8475723 -3.3155632 1.9847035 
		-8.0365028 -3.1942577 1.9847035 -8.2745781 -3.1524601 1.9847035 -8.5384827 -3.1942577 
		1.9847035 -8.8023872 -3.3155632 1.9847035 -9.0404625 -3.5044975 1.9847035 -9.229393 
		-3.742569 1.9847035 -9.3507004 -4.0064735 1.9847035 -9.3924942 -4.27038 1.9847035 
		-9.3507004 -4.5084515 1.9847035 -9.229393 -4.6973858 1.9847035 -9.0404625 -4.8186913 
		1.9847035 -8.8023872 -4.8604889 1.9847035 -8.5384827 -4.7885666 1.8527708 -8.2843628 
		-4.6717625 1.8527708 -8.0551224 -4.4898338 1.8527708 -7.8731956 -4.2605915 1.8527708 
		-7.7563896 -4.0064735 1.8527708 -7.7161407 -3.7523556 1.8527708 -7.7563896 -3.5231152 
		1.8527708 -7.8731956 -3.3411865 1.8527708 -8.0551224 -3.2243824 1.8527708 -8.2843628 
		-3.1841354 1.8527708 -8.5384827 -3.2243824 1.8527708 -8.7925987 -3.3411865 1.8527708 
		-9.021843 -3.5231152 1.8527708 -9.2037697 -3.7523556 1.8527708 -9.3205757 -4.0064735 
		1.8527708 -9.3608208 -4.2605915 1.8527708 -9.3205757 -4.4898338 1.8527708 -9.2037697 
		-4.6717625 1.8527708 -9.021843 -4.7885666 1.8527708 -8.7925987 -4.8288136 1.8527708 
		-8.5384827 -4.7391853 1.7274184 -8.3004112 -4.629755 1.7274184 -8.0856438 -4.4593143 
		1.7274184 -7.9152031 -4.2445469 1.7274184 -7.8057709 -4.0064735 1.7274184 -7.7680664 
		-3.7684021 1.7274184 -7.8057709 -3.5536327 1.7274184 -7.9152031 -3.383194 1.7274184 
		-8.0856438 -3.2737637 1.7274184 -8.3004112 -3.2360554 1.7274184 -8.5384827 -3.2737637 
		1.7274184 -8.7765541 -3.383194 1.7274184 -8.9913216 -3.5536346 1.7274184 -9.1617622 
		-3.768404 1.7274184 -9.2711945 -4.0064735 1.7274184 -9.3088989 -4.244545 1.7274184 
		-9.2711945 -4.4593143 1.7274184 -9.1617622 -4.629755 1.7274184 -8.9913216 -4.7391834 
		1.7274184 -8.7765541 -4.7768898 1.7274184 -8.5384827 -4.6717625 1.611732 -8.322319 
		-4.572401 1.611732 -8.1273117 -4.4176445 1.611732 -7.9725571 -4.2226391 1.611732 
		-7.8731956 -4.0064735 1.611732 -7.8389587 -3.7903099 1.611732 -7.8731956 -3.5953045 
		1.611732 -7.9725571 -3.4405479 1.611732 -8.1273117 -3.3411865 1.611732 -8.322319 
		-3.3069515 1.611732 -8.5384827 -3.3411865 1.611732 -8.7546463 -3.4405479 1.611732 
		-8.9496536 -3.5953045 1.611732 -9.1044083 -3.7903099 1.611732 -9.2037697 -4.0064735 
		1.611732 -9.2380066 -4.2226391 1.611732 -9.2037697 -4.4176445 1.611732 -9.1044083 
		-4.572401 1.611732 -8.9496536 -4.6717625 1.611732 -8.7546463 -4.7059975 1.611732 
		-8.5384827 -4.5879574 1.5085592 -8.3495483 -4.5011139 1.5085592 -8.1791077 -4.3658504 
		1.5085592 -8.0438423 -4.1954098 1.5085592 -7.9570007 -4.0064735 1.5085592 -7.9270744 
		-3.8175392 1.5085592 -7.9570007 -3.6470985 1.5085592 -8.0438423 -3.5118351 1.5085592 
		-8.1791077 -3.4249916 1.5085592 -8.3495483 -3.3950672 1.5085592 -8.5384827 -3.4249916 
		1.5085592 -8.727417 -3.5118351 1.5085592 -8.8978577 -3.6470985 1.5085592 -9.033123 
		-3.8175392 1.5085592 -9.1199646 -4.0064735 1.5085592 -9.1498909 -4.1954098 1.5085592 
		-9.1199646 -4.3658504 1.5085592 -9.033123 -4.5011139 1.5085592 -8.8978577 -4.5879574 
		1.5085592 -8.727417 -4.6178818 1.5085592 -8.5384827 -4.4898338 1.4204412 -8.3814316 
		-4.4176445 1.4204412 -8.2397499 -4.3052082 1.4204412 -8.1273117 -4.1635284 1.4204412 
		-8.0551224 -4.0064735 1.4204412 -8.0302467 -3.8494205 1.4204412 -8.0551224 -3.7077408 
		1.4204412 -8.1273117 -3.5953045 1.4204412 -8.2397499 -3.5231152 1.4204412 -8.3814316 
		-3.4982395 1.4204412 -8.5384827 -3.5231152 1.4204412 -8.6955338 -3.5953045 1.4204412 
		-8.8372154 -3.7077408 1.4204412 -8.9496536 -3.8494205 1.4204412 -9.021843 -4.0064735 
		1.4204412 -9.0467186 -4.1635284 1.4204412 -9.021843 -4.3052063 1.4204412 -8.9496536 
		-4.4176445 1.4204412 -8.8372154 -4.4898338 1.4204412 -8.6955338 -4.5147076 1.4204412 
		-8.5384827 -4.3798084 1.3495483 -8.4171791 -4.3240528 1.3495483 -8.3077507 -4.2372074 
		1.3495483 -8.2209053 -4.1277771 1.3495483 -8.1651497 -4.0064735 1.3495483 -8.1459351 
		-3.8851719 1.3495483 -8.1651497 -3.7757416 1.3495483 -8.2209053 -3.6888962 1.3495483 
		-8.3077507 -3.6331406 1.3495483 -8.4171791 -3.6139259 1.3495483 -8.5384827 -3.6331406 
		1.3495483 -8.6597862 -3.6888962 1.3495483 -8.7692146;
	setAttr ".pt[332:381]" -3.7757416 1.3495483 -8.85606 -3.8851719 1.3495483 
		-8.9118156 -4.0064735 1.3495483 -8.9310265 -4.1277771 1.3495483 -8.9118156 -4.2372074 
		1.3495483 -8.85606 -4.3240528 1.3495483 -8.7692146 -4.3798084 1.3495483 -8.6597862 
		-4.3990211 1.3495483 -8.5384827 -4.2605915 1.2976255 -8.4559135 -4.2226391 1.2976255 
		-8.3814316 -4.1635284 1.2976255 -8.322319 -4.0890427 1.2976255 -8.2843628 -4.0064735 
		1.2976255 -8.2712898 -3.9239063 1.2976255 -8.2843628 -3.8494205 1.2976255 -8.322319 
		-3.7903099 1.2976255 -8.3814316 -3.7523556 1.2976255 -8.4559135 -3.7392807 1.2976255 
		-8.5384827 -3.7523556 1.2976255 -8.6210518 -3.7903099 1.2976255 -8.6955338 -3.8494205 
		1.2976255 -8.7546463 -3.9239063 1.2976255 -8.7925987 -4.0064735 1.2976255 -8.8056755 
		-4.0890427 1.2976255 -8.7925987 -4.1635284 1.2976255 -8.7546463 -4.2226391 1.2976255 
		-8.6955338 -4.2605915 1.2976255 -8.6210518 -4.2736683 1.2976255 -8.5384827 -4.1351166 
		1.2659516 -8.4966812 -4.1159058 1.2659516 -8.4589767 -4.0859795 1.2659516 -8.4290543 
		-4.0482731 1.2659516 -8.4098396 -4.0064735 1.2659516 -8.4032211 -3.9646759 1.2659516 
		-8.4098434 -3.9269695 1.2659516 -8.4290543 -3.8970432 1.2659516 -8.4589767 -3.8778324 
		1.2659516 -8.4966812 -3.871212 1.2659516 -8.5384827 -3.8778324 1.2659516 -8.5802841 
		-3.8970432 1.2659516 -8.6179886 -3.9269695 1.2659516 -8.6479111 -3.9646759 1.2659516 
		-8.6671257 -4.0064735 1.2659516 -8.6737442 -4.0482731 1.2659516 -8.6671219 -4.0859795 
		1.2659516 -8.6479111 -4.1159058 1.2659516 -8.6179886 -4.1351166 1.2659516 -8.5802841 
		-4.141737 1.2659516 -8.5384827 -4.0064735 2.9846253 -8.5384827 -4.0064735 1.2553062 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_MinimalColorChecker" -p "Lookdev_OverlayMinimal_grp";
	rename -uid "A9027594-4B7E-38DD-102F-C2982DF23A58";
	setAttr ".rp" -type "double3" -3.9190760413175454 1.0473704999996016 -8.5384841763512327 ;
	setAttr ".sp" -type "double3" -3.9190760413175454 1.0473704999996016 -8.5384841763512327 ;
createNode mesh -n "Lookdev_MinimalColorCheckerShape" -p "Lookdev_MinimalColorChecker";
	rename -uid "4CF90486-4685-5A4D-35B0-A7BA7C80B593";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 99 ".uvst[0].uvsp[0:98]" -type "float2" 0.022028999 0.73239398
		 0.179612 0.73239398 0.179612 0.968229 0.022028999 0.968229 0.33980599 0.269366 0.5
		 0.269366 0.5 0.5 0.33980599 0.5 0.98640102 0.269366 1 0.269366 1 0.5 0.98640102 0.5
		 0.022028999 0.269366 0.179612 0.269366 0.179612 0.5 0.022028999 0.5 0.33980599 0.98038697
		 0.5 0.98038697 0.5 1 0.33980599 1 0.66019398 0.269366 0.82038802 0.269366 0.82038802
		 0.5 0.66019398 0.5 0.98640102 0.98038697 0.99832302 0.98038697 0.99354798 0.990695
		 0.98640102 0.99758202 0.82038802 0.73239398 0.66019398 0.73239398 0.5 0.73239398
		 0.33980599 0.73239398 1 0.73239398 0.98640102 0.73239398 0.66019398 0.031771 0.82038802
		 0.031771 0.98640102 0.031771 1 0.031771 0.022028999 0.98038697 0.179612 0.98038697
		 0.179612 1 0.022028999 1 0.33980599 0.031771 0.5 0.031771 0.179612 0.031771 0.66019398
		 0.98038697 0.82038802 0.98038697 0.82038802 1 0.66019398 1 0.022028999 0.019613 0.022028999
		 0 0.179612 0 0.179612 0.019613 1 0.968229 0.98640102 0.968229 0.82038802 0.968229
		 0.66019398 0.968229 0.5 0.968229 0.33980599 0.968229 0.33980599 0.019613 0.5 0.019613
		 0.66019398 0.019613 0.82038802 0.019613 0.98640102 0.019613 0.99832302 0.019613 0.022028999
		 0.031771 0.97797102 0.031771 0.97797102 0.269366 0.97797102 0.5 0.97797102 0.73239398
		 0.97797102 0.968229 0.97797102 0.98038697 0.97797102 1 0.97797102 0.019613 0.013599
		 0.269366 0.013599 0.031771 0.013599 0.5 0.013599 0.73239398 0.013599 0.968229 0.013599
		 0.98038697 0.013599 0.99758202 0.013599 0.019613 0.013599 0.002418 0 0.269366 0 0.031771
		 0 0.5 0 0.73239398 0 0.968229 0.001677 0.98038697 0.0064519998 0.99069399 0.001677
		 0.019613 0.0064519998 0.0093059996 0.33980599 0 0.5 0 0.66019398 0 0.82038802 0 0.97797102
		 0 0.98640102 0.002418 0.99354798 0.0093059996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 99 ".pt[0:98]" -type "float3"  -3.779953 1.2336545 -8.0702553 
		-3.9190769 1.2336545 -8.0702553 -4.0581989 1.2336545 -8.0702553 -4.197319 1.2336545 
		-8.0702553 -3.9190769 0.84844637 -9.0384827 -3.9190769 1.2462945 -8.0384827 -3.484848 
		1.0473704 -8.5384827 -4.3533039 1.0473704 -8.5384827 -3.9190769 1.0473704 -8.5384827 
		-3.6408329 1.2462945 -8.0384827 -3.6408329 0.84844637 -9.0384827 -3.6408329 1.0473704 
		-8.5384827 -4.197319 0.84844637 -9.0384827 -4.197319 1.2462945 -8.0384827 -4.197319 
		1.0473704 -8.5384827 -4.3533039 1.1398282 -8.3060875 -3.9190769 1.1398282 -8.3060875 
		-3.484848 1.1398282 -8.3060875 -3.6408329 1.1398282 -8.3060875 -4.197319 1.1398282 
		-8.3060875 -3.484848 0.95561266 -8.7691154 -4.3533039 0.95561266 -8.7691154 -3.9190769 
		0.95561266 -8.7691154 -3.6408329 0.95561266 -8.7691154 -4.197319 0.95561266 -8.7691154 
		-3.779953 0.84844637 -9.0384827 -3.779953 1.2462945 -8.0384827 -3.779953 1.0473704 
		-8.5384827 -3.779953 1.1398282 -8.3060875 -3.779953 0.95561266 -8.7691154 -4.0581989 
		1.2462945 -8.0384827 -4.0581989 1.0473704 -8.5384827 -4.0581989 0.84844637 -9.0384827 
		-4.0581989 1.1398282 -8.3060875 -4.0581989 0.95561266 -8.7691154 -3.5039787 0.84844637 
		-9.0384827 -3.484848 0.86108637 -9.0067101 -3.4966602 0.84940815 -9.0360641 -3.4904518 
		0.85214853 -9.0291748 -3.4863052 0.85624933 -9.0188713 -4.3533039 0.86108637 -9.0067101 
		-4.3341732 0.84844637 -9.0384827 -4.3518486 0.85624933 -9.0188713 -4.3477001 0.85214853 
		-9.0291748 -4.3414955 0.84940815 -9.0360641 -3.484848 1.2336545 -8.0702553 -3.5039787 
		1.2462945 -8.0384827 -3.4863052 1.2384915 -8.058094 -3.4904518 1.2425923 -8.0477905 
		-3.4966602 1.2453327 -8.0409012 -4.3533039 1.2336545 -8.0702553 -4.3341732 1.2462945 
		-8.0384827 -4.3518486 1.2384915 -8.058094 -4.3477001 1.2425923 -8.0477905 -4.3414955 
		1.2453327 -8.0409012 -3.6408329 1.2336545 -8.0702553 -4.197319 0.86108637 -9.0067101 
		-4.0581989 0.86108637 -9.0067101 -3.9190769 0.86108637 -9.0067101 -3.779953 0.86108637 
		-9.0067101 -3.6408329 0.86108637 -9.0067101 -4.3341732 1.2336545 -8.0702553 -4.3341732 
		1.1398282 -8.3060875 -4.3341732 1.0473704 -8.5384827 -4.3341732 0.95561266 -8.7691154 
		-4.3341732 0.86108637 -9.0067101 -3.5039787 1.2336545 -8.0702553 -3.5039787 1.1398282 
		-8.3060875 -3.5039787 1.0473704 -8.5384827 -3.5039787 0.95561266 -8.7691154 -3.5039787 
		0.86108637 -9.0067101 -4.3341732 1.2384915 -8.058094 -4.197319 1.2384915 -8.058094 
		-4.0581989 1.2384915 -8.058094 -3.9190769 1.2384915 -8.058094 -3.779953 1.2384915 
		-8.058094 -3.6408329 1.2384915 -8.058094 -3.5039787 1.2384915 -8.058094 -3.4966602 
		1.2384915 -8.058094 -3.4966602 1.2336545 -8.0702553 -3.4966602 1.1398282 -8.3060875 
		-3.4966602 1.0473704 -8.5384827 -3.4966602 0.95561266 -8.7691154 -3.4966602 0.86108637 
		-9.0067101 -4.3341732 0.85624933 -9.0188713 -4.197319 0.85624933 -9.0188713 -4.0581989 
		0.85624933 -9.0188713 -3.9190769 0.85624933 -9.0188713 -3.779953 0.85624933 -9.0188713 
		-3.6408329 0.85624933 -9.0188713 -3.5039787 0.85624933 -9.0188713 -3.4966602 0.85624933 
		-9.0188713 -4.3414955 1.2384915 -8.058094 -4.3414955 1.2336545 -8.0702553 -4.3414955 
		1.1398282 -8.3060875 -4.3414955 1.0473704 -8.5384827 -4.3414955 0.95561266 -8.7691154 
		-4.3414955 0.86108637 -9.0067101 -4.3414955 0.85624933 -9.0188713;
	setAttr -s 99 ".vt[0:98]"  -0.231041 0 -0.468229 0 0 -0.468229 0.231041 0 -0.468229
		 0.46208099 0 -0.468229 0 0 0.5 0 0 -0.5 -0.72112697 0 0 0.72112697 0 0 0 0 0 -0.46208099 0 -0.5
		 -0.46208099 0 0.5 -0.46208099 0 0 0.46208099 0 0.5 0.46208099 0 -0.5 0.46208099 0 0
		 0.72112697 0 -0.23239399 0 0 -0.23239399 -0.72112697 0 -0.23239399 -0.46208099 0 -0.23239399
		 0.46208099 0 -0.23239399 -0.72112697 0 0.230634 0.72112697 0 0.230634 0 0 0.230634
		 -0.46208099 0 0.230634 0.46208099 0 0.230634 -0.231041 0 0.5 -0.231041 0 -0.5 -0.231041 0 0
		 -0.231041 0 -0.23239399 -0.231041 0 0.230634 0.231041 0 -0.5 0.231041 0 0 0.231041 0 0.5
		 0.231041 0 -0.23239399 0.231041 0 0.230634 -0.68935603 0 0.5 -0.72112697 0 0.468229
		 -0.70151401 0 0.49758199 -0.71182102 0 0.49069399 -0.71870798 0 0.480387 0.72112697 0 0.468229
		 0.68935603 0 0.5 0.71870798 0 0.480387 0.71182102 0 0.49069399 0.70151401 0 0.49758199
		 -0.72112697 0 -0.468229 -0.68935603 0 -0.5 -0.71870798 0 -0.480387 -0.71182102 0 -0.49069399
		 -0.70151401 0 -0.49758199 0.72112697 0 -0.468229 0.68935603 0 -0.5 0.71870798 0 -0.480387
		 0.71182102 0 -0.49069399 0.70151401 0 -0.49758199 -0.46208099 0 -0.468229 0.46208099 0 0.468229
		 0.231041 0 0.468229 0 0 0.468229 -0.231041 0 0.468229 -0.46208099 0 0.468229 0.68935603 0 -0.468229
		 0.68935603 0 -0.23239399 0.68935603 0 0 0.68935603 0 0.230634 0.68935603 0 0.468229
		 -0.68935603 0 -0.468229 -0.68935603 0 -0.23239399 -0.68935603 0 0 -0.68935603 0 0.230634
		 -0.68935603 0 0.468229 0.68935603 0 -0.480387 0.46208099 0 -0.480387 0.231041 0 -0.480387
		 0 0 -0.480387 -0.231041 0 -0.480387 -0.46208099 0 -0.480387 -0.68935603 0 -0.480387
		 -0.70151401 0 -0.480387 -0.70151401 0 -0.468229 -0.70151401 0 -0.23239399 -0.70151401 0 0
		 -0.70151401 0 0.230634 -0.70151401 0 0.468229 0.68935603 0 0.480387 0.46208099 0 0.480387
		 0.231041 0 0.480387 0 0 0.480387 -0.231041 0 0.480387 -0.46208099 0 0.480387 -0.68935603 0 0.480387
		 -0.70151401 0 0.480387 0.70151401 0 -0.480387 0.70151401 0 -0.468229 0.70151401 0 -0.23239399
		 0.70151401 0 0 0.70151401 0 0.230634 0.70151401 0 0.468229 0.70151401 0 0.480387;
	setAttr -s 178 ".ed";
	setAttr ".ed[0:165]"  67 18 0 18 55 0 55 66 0 66 67 0 29 22 0 22 8 0 8 27 0
		 27 29 0 96 21 0 21 7 0 7 95 0 95 96 0 69 23 0 23 11 0 11 68 0 68 69 0 75 74 0 74 5 0
		 5 26 0 26 75 0 34 24 0 24 14 0 14 31 0 31 34 0 92 52 0 52 53 0 53 54 0 54 92 0 14 19 0
		 19 33 0 33 31 0 11 18 0 67 68 0 8 16 0 16 28 0 28 27 0 7 15 0 15 94 0 94 95 0 57 56 0
		 56 24 0 34 57 0 97 40 0 40 21 0 96 97 0 77 76 0 76 9 0 9 46 0 46 77 0 59 58 0 58 22 0
		 29 59 0 60 59 0 29 23 0 23 60 0 11 27 0 28 18 0 73 72 0 72 13 0 13 30 0 30 73 0 58 57 0
		 34 22 0 8 31 0 33 16 0 76 75 0 26 9 0 74 73 0 30 5 0 90 35 0 35 10 0 10 89 0 89 90 0
		 15 50 0 50 93 0 93 94 0 19 3 0 3 2 0 2 33 0 2 1 0 1 16 0 28 0 0 0 55 0 1 0 0 89 88 0
		 88 59 0 60 89 0 88 87 0 87 58 0 87 86 0 86 57 0 86 85 0 85 56 0 98 42 0 42 40 0 97 98 0
		 69 70 0 70 60 0 56 65 0 65 64 0 64 24 0 64 63 0 63 14 0 63 62 0 62 19 0 62 61 0 61 3 0
		 72 71 0 71 51 0 51 13 0 85 84 0 84 65 0 82 83 0 83 70 0 69 82 0 68 81 0 81 82 0 67 80 0
		 80 81 0 66 79 0 79 80 0 78 77 0 46 49 0 49 78 0 91 37 0 37 35 0 90 91 0 55 76 0 77 66 0
		 0 75 0 1 74 0 2 73 0 3 72 0 61 71 0 50 52 0 92 93 0 78 79 0 20 36 0 36 83 0 82 20 0
		 81 6 0 6 20 0 80 17 0 17 6 0 79 45 0 45 17 0 78 47 0 47 45 0 49 48 0 48 47 0 39 38 0
		 38 37 0 91 39 0 83 91 0 90 70 0 10 25 0 25 88 0 25 4 0 4 87 0 4 32 0 32 86 0 32 12 0
		 12 85 0 12 41 0 41 84 0 44 43 0;
	setAttr ".ed[166:177]" 43 42 0 98 44 0 36 39 0 84 98 0 97 65 0 96 64 0 95 63 0
		 94 62 0 93 61 0 92 71 0 54 51 0 41 44 0;
	setAttr -s 320 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119;
	setAttr ".n[166:319]" -type "float3"  0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 15
		f 4 16 17 18 19
		mu 0 4 16 17 18 19
		f 4 20 21 22 23
		mu 0 4 20 21 22 23
		f 4 24 25 26 27
		mu 0 4 24 25 26 27
		f 4 -23 28 29 30
		mu 0 4 23 22 28 29
		f 4 -15 31 -1 32
		mu 0 4 15 14 1 0
		f 4 -7 33 34 35
		mu 0 4 7 6 30 31
		f 4 -11 36 37 38
		mu 0 4 11 10 32 33
		f 4 39 40 -21 41
		mu 0 4 34 35 21 20
		f 4 42 43 -9 44
		mu 0 4 36 37 9 8
		f 4 45 46 47 48
		mu 0 4 38 39 40 41
		f 4 49 50 -5 51
		mu 0 4 42 43 5 4
		f 4 52 -52 53 54
		mu 0 4 44 42 4 13
		f 4 55 -36 56 -32
		mu 0 4 14 7 31 1
		f 4 -54 -8 -56 -14
		mu 0 4 13 4 7 14
		f 4 57 58 59 60
		mu 0 4 45 46 47 48
		f 4 61 -42 62 -51
		mu 0 4 43 34 20 5
		f 4 63 -31 64 -34
		mu 0 4 6 23 29 30
		f 4 65 -20 66 -47
		mu 0 4 39 16 19 40
		f 4 -63 -24 -64 -6
		mu 0 4 5 20 23 6
		f 4 67 -61 68 -18
		mu 0 4 17 45 48 18
		f 4 69 70 71 72
		mu 0 4 49 50 51 52
		f 4 -38 73 74 75
		mu 0 4 33 32 53 54
		f 4 -30 76 77 78
		mu 0 4 29 28 55 56
		f 4 -65 -79 79 80
		mu 0 4 30 29 56 57
		f 4 -57 81 82 -2
		mu 0 4 1 31 58 2
		f 4 -35 -81 83 -82
		mu 0 4 31 30 57 58
		f 4 84 85 -53 86
		mu 0 4 52 59 42 44
		f 4 87 88 -50 -86
		mu 0 4 59 60 43 42
		f 4 89 90 -62 -89
		mu 0 4 60 61 34 43
		f 4 91 92 -40 -91
		mu 0 4 61 62 35 34
		f 4 93 94 -43 95
		mu 0 4 63 64 37 36
		f 4 96 97 -55 -13
		mu 0 4 12 65 44 13
		f 4 98 99 100 -41
		mu 0 4 35 66 67 21
		f 4 -101 101 102 -22
		mu 0 4 21 67 68 22
		f 4 -103 103 104 -29
		mu 0 4 22 68 69 28
		f 4 -105 105 106 -77
		mu 0 4 28 69 70 55
		f 4 107 108 109 -59
		mu 0 4 46 71 72 47
		f 4 110 111 -99 -93
		mu 0 4 62 73 66 35
		f 4 112 113 -97 114
		mu 0 4 74 75 65 12
		f 4 -115 -16 115 116
		mu 0 4 74 12 15 76
		f 4 -116 -33 117 118
		mu 0 4 76 15 0 77
		f 4 -118 -4 119 120
		mu 0 4 77 0 3 78
		f 4 121 -49 122 123
		mu 0 4 79 38 41 80
		f 4 124 125 -70 126
		mu 0 4 81 82 50 49
		f 4 -3 127 -46 128
		mu 0 4 3 2 39 38
		f 4 -83 129 -66 -128
		mu 0 4 2 58 16 39
		f 4 -84 130 -17 -130
		mu 0 4 58 57 17 16
		f 4 -80 131 -68 -131
		mu 0 4 57 56 45 17
		f 4 -78 132 -58 -132
		mu 0 4 56 55 46 45
		f 4 -107 133 -108 -133
		mu 0 4 55 70 71 46
		f 4 -75 134 -25 135
		mu 0 4 54 53 25 24
		f 4 -120 -129 -122 136
		mu 0 4 78 3 38 79
		f 4 137 138 -113 139
		mu 0 4 83 84 75 74
		f 4 -140 -117 140 141
		mu 0 4 83 74 76 85
		f 4 -141 -119 142 143
		mu 0 4 85 76 77 86
		f 4 -143 -121 144 145
		mu 0 4 86 77 78 87
		f 4 -145 -137 146 147
		mu 0 4 87 78 79 88
		f 4 -147 -124 148 149
		mu 0 4 88 79 80 89
		f 4 150 151 -125 152
		mu 0 4 90 91 82 81
		f 4 153 -127 154 -114
		mu 0 4 75 81 49 65
		f 4 -155 -73 -87 -98
		mu 0 4 65 49 52 44
		f 4 155 156 -85 -72
		mu 0 4 51 92 59 52
		f 4 157 158 -88 -157
		mu 0 4 92 93 60 59
		f 4 159 160 -90 -159
		mu 0 4 93 94 61 60
		f 4 161 162 -92 -161
		mu 0 4 94 95 62 61
		f 4 163 164 -111 -163
		mu 0 4 95 96 73 62
		f 4 165 166 -94 167
		mu 0 4 97 98 64 63
		f 4 168 -153 -154 -139
		mu 0 4 84 90 81 75
		f 4 169 -96 170 -112
		mu 0 4 73 63 36 66
		f 4 -171 -45 171 -100
		mu 0 4 66 36 8 67
		f 4 -172 -12 172 -102
		mu 0 4 67 8 11 68
		f 4 -173 -39 173 -104
		mu 0 4 68 11 33 69
		f 4 -174 -76 174 -106
		mu 0 4 69 33 54 70
		f 4 -175 -136 175 -134
		mu 0 4 70 54 24 71
		f 4 -176 -28 176 -109
		mu 0 4 71 24 27 72
		f 4 177 -168 -170 -165
		mu 0 4 96 97 63 73;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_OverlayFull_grp" -p "Lookdev_CameraScale_LOC";
	rename -uid "8FBC0028-4EF3-46F3-1EA9-A68C45F30D8D";
	setAttr ".t" -type "double3" -4.0686974132214675e-07 24.797966767514779 129.68351266201279 ;
	setAttr ".rp" -type "double3" -4.0064740684350895 -0.025394549034981395 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -4.0064740684350895 -0.025394549034981395 -8.5384841367083908 ;
createNode transform -n "Lookdev_WhiteBall" -p "Lookdev_OverlayFull_grp";
	rename -uid "2B79BFC9-4663-0C4A-2174-03BD3A8DEB70";
	setAttr ".rp" -type "double3" -4.0064740684350895 2.1197963518863396 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -4.0064740684350895 2.1197963518863396 -8.5384841367083908 ;
createNode mesh -n "Lookdev_WhiteBallShape" -p "Lookdev_WhiteBall";
	rename -uid "2683086C-4FA9-5D50-7284-FA9CD178B97A";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.1351166 2.9738097 -8.4966812 -4.1159058 
		2.9738097 -8.4589767 -4.0859795 2.9738097 -8.4290543 -4.0482731 2.9738097 -8.4098396 
		-4.0064735 2.9738097 -8.4032211 -3.9646759 2.9738097 -8.4098434 -3.9269695 2.9738097 
		-8.4290543 -3.8970432 2.9738097 -8.4589767 -3.8778324 2.9738097 -8.4966812 -3.871212 
		2.9738097 -8.5384827 -3.8778324 2.9738097 -8.5802841 -3.8970432 2.9738097 -8.6179886 
		-3.9269695 2.9738097 -8.6479111 -3.9646759 2.9738097 -8.6671257 -4.0064735 2.9738097 
		-8.6737442 -4.0482731 2.9738097 -8.6671219 -4.0859795 2.9738097 -8.6479111 -4.1159058 
		2.9738097 -8.6179886 -4.1351166 2.9738097 -8.5802841 -4.141737 2.9738097 -8.5384827 
		-4.2605915 2.9421363 -8.4559135 -4.2226391 2.9421363 -8.3814316 -4.1635284 2.9421363 
		-8.322319 -4.0890427 2.9421363 -8.2843628 -4.0064735 2.9421363 -8.2712898 -3.9239063 
		2.9421363 -8.2843628 -3.8494205 2.9421363 -8.322319 -3.7903099 2.9421363 -8.3814316 
		-3.7523556 2.9421363 -8.4559135 -3.7392807 2.9421363 -8.5384827 -3.7523556 2.9421363 
		-8.6210518 -3.7903099 2.9421363 -8.6955338 -3.8494205 2.9421363 -8.7546463 -3.9239063 
		2.9421363 -8.7926025 -4.0064735 2.9421363 -8.8056755 -4.0890427 2.9421363 -8.7926025 
		-4.1635284 2.9421363 -8.7546463 -4.2226391 2.9421363 -8.6955338 -4.2605915 2.9421363 
		-8.6210518 -4.2736683 2.9421363 -8.5384827 -4.3798084 2.8902135 -8.4171791 -4.3240528 
		2.8902135 -8.3077507 -4.2372074 2.8902135 -8.2209053 -4.1277771 2.8902135 -8.1651497 
		-4.0064735 2.8902135 -8.1459351 -3.8851719 2.8902135 -8.1651497 -3.7757416 2.8902135 
		-8.2209053 -3.6888962 2.8902135 -8.3077507 -3.6331406 2.8902135 -8.4171791 -3.6139259 
		2.8902135 -8.5384827 -3.6331406 2.8902135 -8.6597862 -3.6888962 2.8902135 -8.7692146 
		-3.7757416 2.8902135 -8.85606 -3.8851719 2.8902135 -8.9118156 -4.0064735 2.8902135 
		-8.9310303 -4.1277771 2.8902135 -8.9118156 -4.2372074 2.8902135 -8.85606 -4.3240528 
		2.8902135 -8.7692146 -4.3798084 2.8902135 -8.6597862 -4.3990211 2.8902135 -8.5384827 
		-4.4898338 2.8193202 -8.3814316 -4.4176445 2.8193202 -8.2397499 -4.3052082 2.8193202 
		-8.1273117 -4.1635284 2.8193202 -8.0551224 -4.0064735 2.8193202 -8.0302467 -3.8494205 
		2.8193202 -8.0551224 -3.7077408 2.8193202 -8.1273117 -3.5953045 2.8193202 -8.2397499 
		-3.5231152 2.8193202 -8.3814316 -3.4982395 2.8193202 -8.5384827 -3.5231152 2.8193202 
		-8.6955338 -3.5953045 2.8193202 -8.8372154 -3.7077408 2.8193202 -8.9496536 -3.8494205 
		2.8193202 -9.021843 -4.0064735 2.8193202 -9.0467186 -4.1635284 2.8193202 -9.021843 
		-4.3052082 2.8193202 -8.9496536 -4.4176445 2.8193202 -8.8372154 -4.4898338 2.8193202 
		-8.6955338 -4.5147076 2.8193202 -8.5384827 -4.5879574 2.7312026 -8.3495483 -4.5011139 
		2.7312026 -8.1791077 -4.3658504 2.7312026 -8.0438423 -4.1954098 2.7312026 -7.9570007 
		-4.0064735 2.7312026 -7.9270744 -3.8175392 2.7312026 -7.9570007 -3.6470985 2.7312026 
		-8.0438423 -3.5118351 2.7312026 -8.1791077 -3.4249916 2.7312026 -8.3495483 -3.3950672 
		2.7312026 -8.5384827 -3.4249916 2.7312026 -8.727417 -3.5118351 2.7312026 -8.8978577 
		-3.6470985 2.7312026 -9.033123 -3.8175392 2.7312026 -9.1199646 -4.0064735 2.7312026 
		-9.1498909 -4.1954098 2.7312026 -9.1199646 -4.3658504 2.7312026 -9.033123 -4.5011139 
		2.7312026 -8.8978577 -4.5879574 2.7312026 -8.727417 -4.6178818 2.7312026 -8.5384827 
		-4.6717625 2.6280303 -8.322319 -4.572401 2.6280303 -8.1273117 -4.4176445 2.6280303 
		-7.9725571 -4.2226391 2.6280303 -7.8731956 -4.0064735 2.6280303 -7.8389587 -3.7903099 
		2.6280303 -7.8731956 -3.5953045 2.6280303 -7.9725571 -3.4405479 2.6280303 -8.1273117 
		-3.3411865 2.6280303 -8.322319 -3.3069515 2.6280303 -8.5384827 -3.3411865 2.6280303 
		-8.7546463 -3.4405479 2.6280303 -8.9496536 -3.5953045 2.6280303 -9.1044083 -3.7903099 
		2.6280303 -9.2037697 -4.0064735 2.6280303 -9.2380066 -4.2226391 2.6280303 -9.2037697 
		-4.4176445 2.6280303 -9.1044083 -4.572401 2.6280303 -8.9496536 -4.6717625 2.6280303 
		-8.7546463 -4.7059975 2.6280303 -8.5384827 -4.7391853 2.5123439 -8.3004112 -4.629755 
		2.5123439 -8.0856438 -4.4593143 2.5123439 -7.9152031 -4.2445469 2.5123439 -7.8057709 
		-4.0064735 2.5123439 -7.7680664 -3.7684021 2.5123439 -7.8057709 -3.5536346 2.5123439 
		-7.9152031 -3.383194 2.5123439 -8.0856438 -3.2737637 2.5123439 -8.3004112 -3.2360554 
		2.5123439 -8.5384827 -3.2737637 2.5123439 -8.7765541 -3.383194 2.5123439 -8.9913216 
		-3.5536346 2.5123439 -9.1617622 -3.768404 2.5123439 -9.2711945 -4.0064735 2.5123439 
		-9.3088989 -4.244545 2.5123439 -9.2711945 -4.4593143 2.5123439 -9.1617622 -4.629755 
		2.5123439 -8.9913216 -4.7391834 2.5123439 -8.7765541 -4.7768898 2.5123439 -8.5384827 
		-4.7885666 2.386991 -8.2843628 -4.6717625 2.386991 -8.0551224 -4.4898338 2.386991 
		-7.8731956 -4.2605915 2.386991 -7.7563896 -4.0064735 2.386991 -7.7161446 -3.7523556 
		2.386991 -7.7563896 -3.5231152 2.386991 -7.8731956 -3.3411865 2.386991 -8.0551224 
		-3.2243824 2.386991 -8.2843666 -3.1841354 2.386991 -8.5384827 -3.2243824 2.386991 
		-8.7926025 -3.3411865 2.386991 -9.021843 -3.5231152 2.386991 -9.2037697 -3.7523556 
		2.386991 -9.3205757 -4.0064735 2.386991 -9.3608208 -4.2605915 2.386991 -9.3205757 
		-4.4898338 2.386991 -9.2037697 -4.6717625 2.386991 -9.021843 -4.7885666 2.386991 
		-8.7926025 -4.8288136 2.386991 -8.5384827 -4.8186913 2.2550588 -8.2745781 -4.6973858 
		2.2550588 -8.0365028 -4.5084515 2.2550588 -7.8475723 -4.27038 2.2550588 -7.726265 
		-4.0064735 2.2550588 -7.6844711 -3.742569 2.2550588 -7.726265;
	setAttr ".pt[166:331]" -3.5044975 2.2550588 -7.8475723 -3.3155632 2.2550588 
		-8.0365028 -3.1942577 2.2550588 -8.2745781 -3.1524601 2.2550588 -8.5384827 -3.1942577 
		2.2550588 -8.8023872 -3.3155632 2.2550588 -9.0404625 -3.5044975 2.2550588 -9.229393 
		-3.742569 2.2550588 -9.3507004 -4.0064735 2.2550588 -9.3924942 -4.27038 2.2550588 
		-9.3507004 -4.5084515 2.2550588 -9.229393 -4.6973858 2.2550588 -9.0404625 -4.8186913 
		2.2550588 -8.8023872 -4.8604889 2.2550588 -8.5384827 -4.8288136 2.1197963 -8.2712898 
		-4.7059975 2.1197963 -8.0302467 -4.5147095 2.1197963 -7.8389587 -4.2736683 2.1197963 
		-7.7161446 -4.0064735 2.1197963 -7.6738243 -3.7392807 2.1197963 -7.7161446 -3.4982395 
		2.1197963 -7.8389587 -3.3069515 2.1197963 -8.0302467 -3.1841354 2.1197963 -8.2712898 
		-3.1418152 2.1197963 -8.5384827 -3.1841354 2.1197963 -8.8056755 -3.3069515 2.1197963 
		-9.0467186 -3.4982395 2.1197963 -9.2380066 -3.7392807 2.1197963 -9.3608208 -4.0064735 
		2.1197963 -9.403141 -4.2736683 2.1197963 -9.3608208 -4.5147076 2.1197963 -9.2380066 
		-4.7059975 2.1197963 -9.0467186 -4.8288136 2.1197963 -8.8056755 -4.8711338 2.1197963 
		-8.5384827 -4.8186913 1.9845338 -8.2745781 -4.6973858 1.9845338 -8.0365028 -4.5084515 
		1.9845338 -7.8475723 -4.27038 1.9845338 -7.726265 -4.0064735 1.9845338 -7.6844711 
		-3.742569 1.9845338 -7.726265 -3.5044975 1.9845338 -7.8475723 -3.3155632 1.9845338 
		-8.0365028 -3.1942577 1.9845338 -8.2745781 -3.1524601 1.9845338 -8.5384827 -3.1942577 
		1.9845338 -8.8023872 -3.3155632 1.9845338 -9.0404625 -3.5044975 1.9845338 -9.229393 
		-3.742569 1.9845338 -9.3507004 -4.0064735 1.9845338 -9.3924942 -4.27038 1.9845338 
		-9.3507004 -4.5084515 1.9845338 -9.229393 -4.6973858 1.9845338 -9.0404625 -4.8186913 
		1.9845338 -8.8023872 -4.8604889 1.9845338 -8.5384827 -4.7885666 1.8526015 -8.2843628 
		-4.6717625 1.8526015 -8.0551224 -4.4898338 1.8526015 -7.8731956 -4.2605915 1.8526015 
		-7.7563896 -4.0064735 1.8526015 -7.7161446 -3.7523556 1.8526015 -7.7563896 -3.5231152 
		1.8526015 -7.8731956 -3.3411865 1.8526015 -8.0551224 -3.2243824 1.8526015 -8.2843666 
		-3.1841354 1.8526015 -8.5384827 -3.2243824 1.8526015 -8.7926025 -3.3411865 1.8526015 
		-9.021843 -3.5231152 1.8526015 -9.2037697 -3.7523556 1.8526015 -9.3205757 -4.0064735 
		1.8526015 -9.3608208 -4.2605915 1.8526015 -9.3205757 -4.4898338 1.8526015 -9.2037697 
		-4.6717625 1.8526015 -9.021843 -4.7885666 1.8526015 -8.7926025 -4.8288136 1.8526015 
		-8.5384827 -4.7391853 1.7272487 -8.3004112 -4.629755 1.7272487 -8.0856438 -4.4593143 
		1.7272487 -7.9152031 -4.2445469 1.7272487 -7.8057709 -4.0064735 1.7272487 -7.7680664 
		-3.7684021 1.7272487 -7.8057709 -3.5536346 1.7272487 -7.9152031 -3.383194 1.7272487 
		-8.0856438 -3.2737637 1.7272487 -8.3004112 -3.2360554 1.7272487 -8.5384827 -3.2737637 
		1.7272487 -8.7765541 -3.383194 1.7272487 -8.9913216 -3.5536346 1.7272487 -9.1617622 
		-3.768404 1.7272487 -9.2711945 -4.0064735 1.7272487 -9.3088989 -4.244545 1.7272487 
		-9.2711945 -4.4593143 1.7272487 -9.1617622 -4.629755 1.7272487 -8.9913216 -4.7391834 
		1.7272487 -8.7765541 -4.7768898 1.7272487 -8.5384827 -4.6717625 1.6115623 -8.322319 
		-4.572401 1.6115623 -8.1273117 -4.4176445 1.6115623 -7.9725571 -4.2226391 1.6115623 
		-7.8731956 -4.0064735 1.6115623 -7.8389587 -3.7903099 1.6115623 -7.8731956 -3.5953045 
		1.6115623 -7.9725571 -3.4405479 1.6115623 -8.1273117 -3.3411865 1.6115623 -8.322319 
		-3.3069515 1.6115623 -8.5384827 -3.3411865 1.6115623 -8.7546463 -3.4405479 1.6115623 
		-8.9496536 -3.5953045 1.6115623 -9.1044083 -3.7903099 1.6115623 -9.2037697 -4.0064735 
		1.6115623 -9.2380066 -4.2226391 1.6115623 -9.2037697 -4.4176445 1.6115623 -9.1044083 
		-4.572401 1.6115623 -8.9496536 -4.6717625 1.6115623 -8.7546463 -4.7059975 1.6115623 
		-8.5384827 -4.5879574 1.5083899 -8.3495483 -4.5011139 1.5083899 -8.1791077 -4.3658504 
		1.5083899 -8.0438423 -4.1954098 1.5083899 -7.9570007 -4.0064735 1.5083899 -7.9270744 
		-3.8175392 1.5083899 -7.9570007 -3.6470985 1.5083899 -8.0438423 -3.5118351 1.5083899 
		-8.1791077 -3.4249916 1.5083899 -8.3495483 -3.3950672 1.5083899 -8.5384827 -3.4249916 
		1.5083899 -8.727417 -3.5118351 1.5083899 -8.8978577 -3.6470985 1.5083899 -9.033123 
		-3.8175392 1.5083899 -9.1199646 -4.0064735 1.5083899 -9.1498909 -4.1954098 1.5083899 
		-9.1199646 -4.3658504 1.5083899 -9.033123 -4.5011139 1.5083899 -8.8978577 -4.5879574 
		1.5083899 -8.727417 -4.6178818 1.5083899 -8.5384827 -4.4898338 1.4202724 -8.3814316 
		-4.4176445 1.4202724 -8.2397499 -4.3052082 1.4202724 -8.1273117 -4.1635284 1.4202724 
		-8.0551224 -4.0064735 1.4202724 -8.0302467 -3.8494205 1.4202724 -8.0551224 -3.7077408 
		1.4202724 -8.1273117 -3.5953045 1.4202724 -8.2397499 -3.5231152 1.4202724 -8.3814316 
		-3.4982395 1.4202724 -8.5384827 -3.5231152 1.4202724 -8.6955338 -3.5953045 1.4202724 
		-8.8372154 -3.7077408 1.4202724 -8.9496536 -3.8494205 1.4202724 -9.021843 -4.0064735 
		1.4202724 -9.0467186 -4.1635284 1.4202724 -9.021843 -4.3052082 1.4202724 -8.9496536 
		-4.4176445 1.4202724 -8.8372154 -4.4898338 1.4202724 -8.6955338 -4.5147076 1.4202724 
		-8.5384827 -4.3798084 1.3493791 -8.4171791 -4.3240528 1.3493791 -8.3077507 -4.2372074 
		1.3493791 -8.2209053 -4.1277771 1.3493791 -8.1651497 -4.0064735 1.3493791 -8.1459351 
		-3.8851719 1.3493791 -8.1651497 -3.7757416 1.3493791 -8.2209053 -3.6888962 1.3493791 
		-8.3077507 -3.6331406 1.3493791 -8.4171791 -3.6139259 1.3493791 -8.5384827 -3.6331406 
		1.3493791 -8.6597862 -3.6888962 1.3493791 -8.7692146;
	setAttr ".pt[332:381]" -3.7757416 1.3493791 -8.85606 -3.8851719 1.3493791 
		-8.9118156 -4.0064735 1.3493791 -8.9310303 -4.1277771 1.3493791 -8.9118156 -4.2372074 
		1.3493791 -8.85606 -4.3240528 1.3493791 -8.7692146 -4.3798084 1.3493791 -8.6597862 
		-4.3990211 1.3493791 -8.5384827 -4.2605915 1.2974563 -8.4559135 -4.2226391 1.2974563 
		-8.3814316 -4.1635284 1.2974563 -8.322319 -4.0890427 1.2974563 -8.2843628 -4.0064735 
		1.2974563 -8.2712898 -3.9239063 1.2974563 -8.2843628 -3.8494205 1.2974563 -8.322319 
		-3.7903099 1.2974563 -8.3814316 -3.7523556 1.2974563 -8.4559135 -3.7392807 1.2974563 
		-8.5384827 -3.7523556 1.2974563 -8.6210518 -3.7903099 1.2974563 -8.6955338 -3.8494205 
		1.2974563 -8.7546463 -3.9239063 1.2974563 -8.7926025 -4.0064735 1.2974563 -8.8056755 
		-4.0890427 1.2974563 -8.7926025 -4.1635284 1.2974563 -8.7546463 -4.2226391 1.2974563 
		-8.6955338 -4.2605915 1.2974563 -8.6210518 -4.2736683 1.2974563 -8.5384827 -4.1351166 
		1.2657828 -8.4966812 -4.1159058 1.2657828 -8.4589767 -4.0859795 1.2657828 -8.4290543 
		-4.0482731 1.2657828 -8.4098396 -4.0064735 1.2657828 -8.4032211 -3.9646759 1.2657828 
		-8.4098434 -3.9269695 1.2657828 -8.4290543 -3.8970432 1.2657828 -8.4589767 -3.8778324 
		1.2657828 -8.4966812 -3.871212 1.2657828 -8.5384827 -3.8778324 1.2657828 -8.5802841 
		-3.8970432 1.2657828 -8.6179886 -3.9269695 1.2657828 -8.6479111 -3.9646759 1.2657828 
		-8.6671257 -4.0064735 1.2657828 -8.6737442 -4.0482731 1.2657828 -8.6671219 -4.0859795 
		1.2657828 -8.6479111 -4.1159058 1.2657828 -8.6179886 -4.1351166 1.2657828 -8.5802841 
		-4.141737 1.2657828 -8.5384827 -4.0064735 2.9844556 -8.5384827 -4.0064735 1.255137 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_GreyBall" -p "Lookdev_OverlayFull_grp";
	rename -uid "52AFFABF-4D1B-1FEE-FDE3-F5B37EC0E186";
	setAttr ".rp" -type "double3" -4.0064740684350895 1.5834986266560094 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -4.0064740684350895 1.5834986266560094 -8.5384841367083908 ;
createNode mesh -n "Lookdev_GreyBallShape" -p "Lookdev_GreyBall";
	rename -uid "9F8E0E36-4D39-2914-A4FA-2CA6C4DC9A79";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.1351166 2.4375119 -8.4966812 -4.1159058 
		2.4375119 -8.4589767 -4.0859795 2.4375119 -8.4290543 -4.0482731 2.4375119 -8.4098396 
		-4.0064735 2.4375119 -8.4032211 -3.9646759 2.4375119 -8.4098434 -3.9269695 2.4375119 
		-8.4290543 -3.8970432 2.4375119 -8.4589767 -3.8778324 2.4375119 -8.4966812 -3.871212 
		2.4375119 -8.5384827 -3.8778324 2.4375119 -8.5802841 -3.8970432 2.4375119 -8.6179886 
		-3.9269695 2.4375119 -8.6479111 -3.9646759 2.4375119 -8.6671257 -4.0064735 2.4375119 
		-8.6737442 -4.0482731 2.4375119 -8.6671219 -4.0859795 2.4375119 -8.6479111 -4.1159058 
		2.4375119 -8.6179886 -4.1351166 2.4375119 -8.5802841 -4.141737 2.4375119 -8.5384827 
		-4.2605915 2.4058385 -8.4559135 -4.2226391 2.4058385 -8.3814316 -4.1635284 2.4058385 
		-8.322319 -4.0890427 2.4058385 -8.2843628 -4.0064735 2.4058385 -8.2712898 -3.9239063 
		2.4058385 -8.2843628 -3.8494205 2.4058385 -8.322319 -3.7903099 2.4058385 -8.3814316 
		-3.7523556 2.4058385 -8.4559135 -3.7392807 2.4058385 -8.5384827 -3.7523556 2.4058385 
		-8.6210518 -3.7903099 2.4058385 -8.6955338 -3.8494205 2.4058385 -8.7546463 -3.9239063 
		2.4058385 -8.7926025 -4.0064735 2.4058385 -8.8056755 -4.0890427 2.4058385 -8.7926025 
		-4.1635284 2.4058385 -8.7546463 -4.2226391 2.4058385 -8.6955338 -4.2605915 2.4058385 
		-8.6210518 -4.2736683 2.4058385 -8.5384827 -4.3798084 2.3539157 -8.4171791 -4.3240528 
		2.3539157 -8.3077507 -4.2372074 2.3539157 -8.2209053 -4.1277771 2.3539157 -8.1651497 
		-4.0064735 2.3539157 -8.1459351 -3.8851719 2.3539157 -8.1651497 -3.7757416 2.3539157 
		-8.2209053 -3.6888962 2.3539157 -8.3077507 -3.6331406 2.3539157 -8.4171791 -3.6139259 
		2.3539157 -8.5384827 -3.6331406 2.3539157 -8.6597862 -3.6888962 2.3539157 -8.7692146 
		-3.7757416 2.3539157 -8.85606 -3.8851719 2.3539157 -8.9118156 -4.0064735 2.3539157 
		-8.9310303 -4.1277771 2.3539157 -8.9118156 -4.2372074 2.3539157 -8.85606 -4.3240528 
		2.3539157 -8.7692146 -4.3798084 2.3539157 -8.6597862 -4.3990211 2.3539157 -8.5384827 
		-4.4898338 2.2830224 -8.3814316 -4.4176445 2.2830224 -8.2397499 -4.3052082 2.2830224 
		-8.1273117 -4.1635284 2.2830224 -8.0551224 -4.0064735 2.2830224 -8.0302467 -3.8494205 
		2.2830224 -8.0551224 -3.7077408 2.2830224 -8.1273117 -3.5953045 2.2830224 -8.2397499 
		-3.5231152 2.2830224 -8.3814316 -3.4982395 2.2830224 -8.5384827 -3.5231152 2.2830224 
		-8.6955338 -3.5953045 2.2830224 -8.8372154 -3.7077408 2.2830224 -8.9496536 -3.8494205 
		2.2830224 -9.021843 -4.0064735 2.2830224 -9.0467186 -4.1635284 2.2830224 -9.021843 
		-4.3052082 2.2830224 -8.9496536 -4.4176445 2.2830224 -8.8372154 -4.4898338 2.2830224 
		-8.6955338 -4.5147076 2.2830224 -8.5384827 -4.5879574 2.1949048 -8.3495483 -4.5011139 
		2.1949048 -8.1791077 -4.3658504 2.1949048 -8.0438423 -4.1954098 2.1949048 -7.9570007 
		-4.0064735 2.1949048 -7.9270744 -3.8175392 2.1949048 -7.9570007 -3.6470985 2.1949048 
		-8.0438423 -3.5118351 2.1949048 -8.1791077 -3.4249916 2.1949048 -8.3495483 -3.3950672 
		2.1949048 -8.5384827 -3.4249916 2.1949048 -8.727417 -3.5118351 2.1949048 -8.8978577 
		-3.6470985 2.1949048 -9.033123 -3.8175392 2.1949048 -9.1199646 -4.0064735 2.1949048 
		-9.1498909 -4.1954098 2.1949048 -9.1199646 -4.3658504 2.1949048 -9.033123 -4.5011139 
		2.1949048 -8.8978577 -4.5879574 2.1949048 -8.727417 -4.6178818 2.1949048 -8.5384827 
		-4.6717625 2.0917335 -8.322319 -4.572401 2.0917335 -8.1273117 -4.4176445 2.0917335 
		-7.9725571 -4.2226391 2.0917335 -7.8731956 -4.0064735 2.0917335 -7.8389587 -3.7903099 
		2.0917335 -7.8731956 -3.5953045 2.0917335 -7.9725571 -3.4405479 2.0917335 -8.1273117 
		-3.3411865 2.0917335 -8.322319 -3.3069515 2.0917335 -8.5384827 -3.3411865 2.0917335 
		-8.7546463 -3.4405479 2.0917335 -8.9496536 -3.5953045 2.0917335 -9.1044083 -3.7903099 
		2.0917335 -9.2037697 -4.0064735 2.0917335 -9.2380066 -4.2226391 2.0917335 -9.2037697 
		-4.4176445 2.0917335 -9.1044083 -4.572401 2.0917335 -8.9496536 -4.6717625 2.0917335 
		-8.7546463 -4.7059975 2.0917335 -8.5384827 -4.7391853 1.9760461 -8.3004112 -4.629755 
		1.9760461 -8.0856438 -4.4593143 1.9760461 -7.9152031 -4.2445469 1.9760461 -7.8057709 
		-4.0064735 1.9760461 -7.7680664 -3.7684021 1.9760461 -7.8057709 -3.5536346 1.9760461 
		-7.9152031 -3.383194 1.9760461 -8.0856438 -3.2737637 1.9760461 -8.3004112 -3.2360554 
		1.9760461 -8.5384827 -3.2737637 1.9760461 -8.7765541 -3.383194 1.9760461 -8.9913216 
		-3.5536346 1.9760461 -9.1617622 -3.768404 1.9760461 -9.2711945 -4.0064735 1.9760461 
		-9.3088989 -4.244545 1.9760461 -9.2711945 -4.4593143 1.9760461 -9.1617622 -4.629755 
		1.9760461 -8.9913216 -4.7391834 1.9760461 -8.7765541 -4.7768898 1.9760461 -8.5384827 
		-4.7885666 1.8506932 -8.2843628 -4.6717625 1.8506932 -8.0551224 -4.4898338 1.8506932 
		-7.8731956 -4.2605915 1.8506932 -7.7563896 -4.0064735 1.8506932 -7.7161446 -3.7523556 
		1.8506932 -7.7563896 -3.5231152 1.8506932 -7.8731956 -3.3411865 1.8506932 -8.0551224 
		-3.2243824 1.8506932 -8.2843666 -3.1841354 1.8506932 -8.5384827 -3.2243824 1.8506932 
		-8.7926025 -3.3411865 1.8506932 -9.021843 -3.5231152 1.8506932 -9.2037697 -3.7523556 
		1.8506932 -9.3205757 -4.0064735 1.8506932 -9.3608208 -4.2605915 1.8506932 -9.3205757 
		-4.4898338 1.8506932 -9.2037697 -4.6717625 1.8506932 -9.021843 -4.7885666 1.8506932 
		-8.7926025 -4.8288136 1.8506932 -8.5384827 -4.8186913 1.718761 -8.2745781 -4.6973858 
		1.718761 -8.0365028 -4.5084515 1.718761 -7.8475723 -4.27038 1.718761 -7.726265 -4.0064735 
		1.718761 -7.6844711 -3.742569 1.718761 -7.726265;
	setAttr ".pt[166:331]" -3.5044975 1.718761 -7.8475723 -3.3155632 1.718761 
		-8.0365028 -3.1942577 1.718761 -8.2745781 -3.1524601 1.718761 -8.5384827 -3.1942577 
		1.718761 -8.8023872 -3.3155632 1.718761 -9.0404625 -3.5044975 1.718761 -9.229393 
		-3.742569 1.718761 -9.3507004 -4.0064735 1.718761 -9.3924942 -4.27038 1.718761 -9.3507004 
		-4.5084515 1.718761 -9.229393 -4.6973858 1.718761 -9.0404625 -4.8186913 1.718761 
		-8.8023872 -4.8604889 1.718761 -8.5384827 -4.8288136 1.5834985 -8.2712898 -4.7059975 
		1.5834985 -8.0302467 -4.5147095 1.5834985 -7.8389587 -4.2736683 1.5834985 -7.7161446 
		-4.0064735 1.5834985 -7.6738243 -3.7392807 1.5834985 -7.7161446 -3.4982395 1.5834985 
		-7.8389587 -3.3069515 1.5834985 -8.0302467 -3.1841354 1.5834985 -8.2712898 -3.1418152 
		1.5834985 -8.5384827 -3.1841354 1.5834985 -8.8056755 -3.3069515 1.5834985 -9.0467186 
		-3.4982395 1.5834985 -9.2380066 -3.7392807 1.5834985 -9.3608208 -4.0064735 1.5834985 
		-9.403141 -4.2736683 1.5834985 -9.3608208 -4.5147076 1.5834985 -9.2380066 -4.7059975 
		1.5834985 -9.0467186 -4.8288136 1.5834985 -8.8056755 -4.8711338 1.5834985 -8.5384827 
		-4.8186913 1.448236 -8.2745781 -4.6973858 1.448236 -8.0365028 -4.5084515 1.448236 
		-7.8475723 -4.27038 1.448236 -7.726265 -4.0064735 1.448236 -7.6844711 -3.742569 1.448236 
		-7.726265 -3.5044975 1.448236 -7.8475723 -3.3155632 1.448236 -8.0365028 -3.1942577 
		1.448236 -8.2745781 -3.1524601 1.448236 -8.5384827 -3.1942577 1.448236 -8.8023872 
		-3.3155632 1.448236 -9.0404625 -3.5044975 1.448236 -9.229393 -3.742569 1.448236 -9.3507004 
		-4.0064735 1.448236 -9.3924942 -4.27038 1.448236 -9.3507004 -4.5084515 1.448236 -9.229393 
		-4.6973858 1.448236 -9.0404625 -4.8186913 1.448236 -8.8023872 -4.8604889 1.448236 
		-8.5384827 -4.7885666 1.3163037 -8.2843628 -4.6717625 1.3163037 -8.0551224 -4.4898338 
		1.3163037 -7.8731956 -4.2605915 1.3163037 -7.7563896 -4.0064735 1.3163037 -7.7161446 
		-3.7523556 1.3163037 -7.7563896 -3.5231152 1.3163037 -7.8731956 -3.3411865 1.3163037 
		-8.0551224 -3.2243824 1.3163037 -8.2843666 -3.1841354 1.3163037 -8.5384827 -3.2243824 
		1.3163037 -8.7926025 -3.3411865 1.3163037 -9.021843 -3.5231152 1.3163037 -9.2037697 
		-3.7523556 1.3163037 -9.3205757 -4.0064735 1.3163037 -9.3608208 -4.2605915 1.3163037 
		-9.3205757 -4.4898338 1.3163037 -9.2037697 -4.6717625 1.3163037 -9.021843 -4.7885666 
		1.3163037 -8.7926025 -4.8288136 1.3163037 -8.5384827 -4.7391853 1.1909509 -8.3004112 
		-4.629755 1.1909509 -8.0856438 -4.4593143 1.1909509 -7.9152031 -4.2445469 1.1909509 
		-7.8057709 -4.0064735 1.1909509 -7.7680664 -3.7684021 1.1909509 -7.8057709 -3.5536346 
		1.1909509 -7.9152031 -3.383194 1.1909509 -8.0856438 -3.2737637 1.1909509 -8.3004112 
		-3.2360554 1.1909509 -8.5384827 -3.2737637 1.1909509 -8.7765541 -3.383194 1.1909509 
		-8.9913216 -3.5536346 1.1909509 -9.1617622 -3.768404 1.1909509 -9.2711945 -4.0064735 
		1.1909509 -9.3088989 -4.244545 1.1909509 -9.2711945 -4.4593143 1.1909509 -9.1617622 
		-4.629755 1.1909509 -8.9913216 -4.7391834 1.1909509 -8.7765541 -4.7768898 1.1909509 
		-8.5384827 -4.6717625 1.0752645 -8.322319 -4.572401 1.0752645 -8.1273117 -4.4176445 
		1.0752645 -7.9725571 -4.2226391 1.0752645 -7.8731956 -4.0064735 1.0752645 -7.8389587 
		-3.7903099 1.0752645 -7.8731956 -3.5953045 1.0752645 -7.9725571 -3.4405479 1.0752645 
		-8.1273117 -3.3411865 1.0752645 -8.322319 -3.3069515 1.0752645 -8.5384827 -3.3411865 
		1.0752645 -8.7546463 -3.4405479 1.0752645 -8.9496536 -3.5953045 1.0752645 -9.1044083 
		-3.7903099 1.0752645 -9.2037697 -4.0064735 1.0752645 -9.2380066 -4.2226391 1.0752645 
		-9.2037697 -4.4176445 1.0752645 -9.1044083 -4.572401 1.0752645 -8.9496536 -4.6717625 
		1.0752645 -8.7546463 -4.7059975 1.0752645 -8.5384827 -4.5879574 0.97209215 -8.3495483 
		-4.5011139 0.97209215 -8.1791077 -4.3658504 0.97209215 -8.0438423 -4.1954098 0.97209215 
		-7.9570007 -4.0064735 0.97209215 -7.9270744 -3.8175392 0.97209215 -7.9570007 -3.6470985 
		0.97209215 -8.0438423 -3.5118351 0.97209215 -8.1791077 -3.4249916 0.97209215 -8.3495483 
		-3.3950672 0.97209215 -8.5384827 -3.4249916 0.97209215 -8.727417 -3.5118351 0.97209215 
		-8.8978577 -3.6470985 0.97209215 -9.033123 -3.8175392 0.97209215 -9.1199646 -4.0064735 
		0.97209215 -9.1498909 -4.1954098 0.97209215 -9.1199646 -4.3658504 0.97209215 -9.033123 
		-4.5011139 0.97209215 -8.8978577 -4.5879574 0.97209215 -8.727417 -4.6178818 0.97209215 
		-8.5384827 -4.4898338 0.88397455 -8.3814316 -4.4176445 0.88397455 -8.2397499 -4.3052082 
		0.88397455 -8.1273117 -4.1635284 0.88397455 -8.0551224 -4.0064735 0.88397455 -8.0302467 
		-3.8494205 0.88397455 -8.0551224 -3.7077408 0.88397455 -8.1273117 -3.5953045 0.88397455 
		-8.2397499 -3.5231152 0.88397455 -8.3814316 -3.4982395 0.88397455 -8.5384827 -3.5231152 
		0.88397455 -8.6955338 -3.5953045 0.88397455 -8.8372154 -3.7077408 0.88397455 -8.9496536 
		-3.8494205 0.88397455 -9.021843 -4.0064735 0.88397455 -9.0467186 -4.1635284 0.88397455 
		-9.021843 -4.3052082 0.88397455 -8.9496536 -4.4176445 0.88397455 -8.8372154 -4.4898338 
		0.88397455 -8.6955338 -4.5147076 0.88397455 -8.5384827 -4.3798084 0.81308126 -8.4171791 
		-4.3240528 0.81308126 -8.3077507 -4.2372074 0.81308126 -8.2209053 -4.1277771 0.81308126 
		-8.1651497 -4.0064735 0.81308126 -8.1459351 -3.8851719 0.81308126 -8.1651497 -3.7757416 
		0.81308126 -8.2209053 -3.6888962 0.81308126 -8.3077507 -3.6331406 0.81308126 -8.4171791 
		-3.6139259 0.81308126 -8.5384827 -3.6331406 0.81308126 -8.6597862 -3.6888962 0.81308126 
		-8.7692146;
	setAttr ".pt[332:381]" -3.7757416 0.81308126 -8.85606 -3.8851719 0.81308126 
		-8.9118156 -4.0064735 0.81308126 -8.9310303 -4.1277771 0.81308126 -8.9118156 -4.2372074 
		0.81308126 -8.85606 -4.3240528 0.81308126 -8.7692146 -4.3798084 0.81308126 -8.6597862 
		-4.3990211 0.81308126 -8.5384827 -4.2605915 0.76115847 -8.4559135 -4.2226391 0.76115847 
		-8.3814316 -4.1635284 0.76115847 -8.322319 -4.0890427 0.76115847 -8.2843628 -4.0064735 
		0.76115847 -8.2712898 -3.9239063 0.76115847 -8.2843628 -3.8494205 0.76115847 -8.322319 
		-3.7903099 0.76115847 -8.3814316 -3.7523556 0.76115847 -8.4559135 -3.7392807 0.76115847 
		-8.5384827 -3.7523556 0.76115847 -8.6210518 -3.7903099 0.76115847 -8.6955338 -3.8494205 
		0.76115847 -8.7546463 -3.9239063 0.76115847 -8.7926025 -4.0064735 0.76115847 -8.8056755 
		-4.0890427 0.76115847 -8.7926025 -4.1635284 0.76115847 -8.7546463 -4.2226391 0.76115847 
		-8.6955338 -4.2605915 0.76115847 -8.6210518 -4.2736683 0.76115847 -8.5384827 -4.1351166 
		0.72948503 -8.4966812 -4.1159058 0.72948503 -8.4589767 -4.0859795 0.72948503 -8.4290543 
		-4.0482731 0.72948503 -8.4098396 -4.0064735 0.72948503 -8.4032211 -3.9646759 0.72948503 
		-8.4098434 -3.9269695 0.72948503 -8.4290543 -3.8970432 0.72948503 -8.4589767 -3.8778324 
		0.72948503 -8.4966812 -3.871212 0.72948503 -8.5384827 -3.8778324 0.72948503 -8.5802841 
		-3.8970432 0.72948503 -8.6179886 -3.9269695 0.72948503 -8.6479111 -3.9646759 0.72948503 
		-8.6671257 -4.0064735 0.72948503 -8.6737442 -4.0482731 0.72948503 -8.6671219 -4.0859795 
		0.72948503 -8.6479111 -4.1159058 0.72948503 -8.6179886 -4.1351166 0.72948503 -8.5802841 
		-4.141737 0.72948503 -8.5384827 -4.0064735 2.4481578 -8.5384827 -4.0064735 0.71883917 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_BlackBall" -p "Lookdev_OverlayFull_grp";
	rename -uid "06326C83-4CAA-68D9-95BF-D4A86FD29842";
	setAttr ".rp" -type "double3" -4.0064740684350895 1.0472009014256791 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -4.0064740684350895 1.0472009014256791 -8.5384841367083908 ;
createNode mesh -n "Lookdev_BlackBallShape" -p "Lookdev_BlackBall";
	rename -uid "61BA9690-41E3-319D-D118-0684AB83E451";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.1351166 1.9012151 -8.4966812 -4.1159058 
		1.9012151 -8.4589767 -4.0859795 1.9012151 -8.4290543 -4.0482731 1.9012151 -8.4098396 
		-4.0064735 1.9012151 -8.4032211 -3.9646759 1.9012151 -8.4098434 -3.9269695 1.9012151 
		-8.4290543 -3.8970432 1.9012151 -8.4589767 -3.8778324 1.9012151 -8.4966812 -3.871212 
		1.9012151 -8.5384827 -3.8778324 1.9012151 -8.5802841 -3.8970432 1.9012151 -8.6179886 
		-3.9269695 1.9012151 -8.6479111 -3.9646759 1.9012151 -8.6671257 -4.0064735 1.9012151 
		-8.6737442 -4.0482731 1.9012151 -8.6671219 -4.0859795 1.9012151 -8.6479111 -4.1159058 
		1.9012151 -8.6179886 -4.1351166 1.9012151 -8.5802841 -4.141737 1.9012151 -8.5384827 
		-4.2605915 1.8695407 -8.4559135 -4.2226391 1.8695407 -8.3814316 -4.1635284 1.8695407 
		-8.322319 -4.0890427 1.8695407 -8.2843628 -4.0064735 1.8695407 -8.2712898 -3.9239063 
		1.8695407 -8.2843628 -3.8494205 1.8695407 -8.322319 -3.7903099 1.8695407 -8.3814316 
		-3.7523556 1.8695407 -8.4559135 -3.7392807 1.8695407 -8.5384827 -3.7523556 1.8695407 
		-8.6210518 -3.7903099 1.8695407 -8.6955338 -3.8494205 1.8695407 -8.7546463 -3.9239063 
		1.8695407 -8.7926025 -4.0064735 1.8695407 -8.8056755 -4.0890427 1.8695407 -8.7926025 
		-4.1635284 1.8695407 -8.7546463 -4.2226391 1.8695407 -8.6955338 -4.2605915 1.8695407 
		-8.6210518 -4.2736683 1.8695407 -8.5384827 -4.3798084 1.8176179 -8.4171791 -4.3240528 
		1.8176179 -8.3077507 -4.2372074 1.8176179 -8.2209053 -4.1277771 1.8176179 -8.1651497 
		-4.0064735 1.8176179 -8.1459351 -3.8851719 1.8176179 -8.1651497 -3.7757416 1.8176179 
		-8.2209053 -3.6888962 1.8176179 -8.3077507 -3.6331406 1.8176179 -8.4171791 -3.6139259 
		1.8176179 -8.5384827 -3.6331406 1.8176179 -8.6597862 -3.6888962 1.8176179 -8.7692146 
		-3.7757416 1.8176179 -8.85606 -3.8851719 1.8176179 -8.9118156 -4.0064735 1.8176179 
		-8.9310303 -4.1277771 1.8176179 -8.9118156 -4.2372074 1.8176179 -8.85606 -4.3240528 
		1.8176179 -8.7692146 -4.3798084 1.8176179 -8.6597862 -4.3990211 1.8176179 -8.5384827 
		-4.4898338 1.7467251 -8.3814316 -4.4176445 1.7467251 -8.2397499 -4.3052082 1.7467251 
		-8.1273117 -4.1635284 1.7467251 -8.0551224 -4.0064735 1.7467251 -8.0302467 -3.8494205 
		1.7467251 -8.0551224 -3.7077408 1.7467251 -8.1273117 -3.5953045 1.7467251 -8.2397499 
		-3.5231152 1.7467251 -8.3814316 -3.4982395 1.7467251 -8.5384827 -3.5231152 1.7467251 
		-8.6955338 -3.5953045 1.7467251 -8.8372154 -3.7077408 1.7467251 -8.9496536 -3.8494205 
		1.7467251 -9.021843 -4.0064735 1.7467251 -9.0467186 -4.1635284 1.7467251 -9.021843 
		-4.3052082 1.7467251 -8.9496536 -4.4176445 1.7467251 -8.8372154 -4.4898338 1.7467251 
		-8.6955338 -4.5147076 1.7467251 -8.5384827 -4.5879574 1.658607 -8.3495483 -4.5011139 
		1.658607 -8.1791077 -4.3658504 1.658607 -8.0438423 -4.1954098 1.658607 -7.9570007 
		-4.0064735 1.658607 -7.9270744 -3.8175392 1.658607 -7.9570007 -3.6470985 1.658607 
		-8.0438423 -3.5118351 1.658607 -8.1791077 -3.4249916 1.658607 -8.3495483 -3.3950672 
		1.658607 -8.5384827 -3.4249916 1.658607 -8.727417 -3.5118351 1.658607 -8.8978577 
		-3.6470985 1.658607 -9.033123 -3.8175392 1.658607 -9.1199646 -4.0064735 1.658607 
		-9.1498909 -4.1954098 1.658607 -9.1199646 -4.3658504 1.658607 -9.033123 -4.5011139 
		1.658607 -8.8978577 -4.5879574 1.658607 -8.727417 -4.6178818 1.658607 -8.5384827 
		-4.6717625 1.5554352 -8.322319 -4.572401 1.5554352 -8.1273117 -4.4176445 1.5554352 
		-7.9725571 -4.2226391 1.5554352 -7.8731956 -4.0064735 1.5554352 -7.8389587 -3.7903099 
		1.5554352 -7.8731956 -3.5953045 1.5554352 -7.9725571 -3.4405479 1.5554352 -8.1273117 
		-3.3411865 1.5554352 -8.322319 -3.3069515 1.5554352 -8.5384827 -3.3411865 1.5554352 
		-8.7546463 -3.4405479 1.5554352 -8.9496536 -3.5953045 1.5554352 -9.1044083 -3.7903099 
		1.5554352 -9.2037697 -4.0064735 1.5554352 -9.2380066 -4.2226391 1.5554352 -9.2037697 
		-4.4176445 1.5554352 -9.1044083 -4.572401 1.5554352 -8.9496536 -4.6717625 1.5554352 
		-8.7546463 -4.7059975 1.5554352 -8.5384827 -4.7391853 1.4397478 -8.3004112 -4.629755 
		1.4397478 -8.0856438 -4.4593143 1.4397478 -7.9152031 -4.2445469 1.4397478 -7.8057709 
		-4.0064735 1.4397478 -7.7680664 -3.7684021 1.4397478 -7.8057709 -3.5536346 1.4397478 
		-7.9152031 -3.383194 1.4397478 -8.0856438 -3.2737637 1.4397478 -8.3004112 -3.2360554 
		1.4397478 -8.5384827 -3.2737637 1.4397478 -8.7765541 -3.383194 1.4397478 -8.9913216 
		-3.5536346 1.4397478 -9.1617622 -3.768404 1.4397478 -9.2711945 -4.0064735 1.4397478 
		-9.3088989 -4.244545 1.4397478 -9.2711945 -4.4593143 1.4397478 -9.1617622 -4.629755 
		1.4397478 -8.9913216 -4.7391834 1.4397478 -8.7765541 -4.7768898 1.4397478 -8.5384827 
		-4.7885666 1.3143954 -8.2843628 -4.6717625 1.3143954 -8.0551224 -4.4898338 1.3143954 
		-7.8731956 -4.2605915 1.3143954 -7.7563896 -4.0064735 1.3143954 -7.7161446 -3.7523556 
		1.3143954 -7.7563896 -3.5231152 1.3143954 -7.8731956 -3.3411865 1.3143954 -8.0551224 
		-3.2243824 1.3143954 -8.2843666 -3.1841354 1.3143954 -8.5384827 -3.2243824 1.3143954 
		-8.7926025 -3.3411865 1.3143954 -9.021843 -3.5231152 1.3143954 -9.2037697 -3.7523556 
		1.3143954 -9.3205757 -4.0064735 1.3143954 -9.3608208 -4.2605915 1.3143954 -9.3205757 
		-4.4898338 1.3143954 -9.2037697 -4.6717625 1.3143954 -9.021843 -4.7885666 1.3143954 
		-8.7926025 -4.8288136 1.3143954 -8.5384827 -4.8186913 1.1824636 -8.2745781 -4.6973858 
		1.1824636 -8.0365028 -4.5084515 1.1824636 -7.8475723 -4.27038 1.1824636 -7.726265 
		-4.0064735 1.1824636 -7.6844711 -3.742569 1.1824636 -7.726265;
	setAttr ".pt[166:331]" -3.5044975 1.1824636 -7.8475723 -3.3155632 1.1824636 
		-8.0365028 -3.1942577 1.1824636 -8.2745781 -3.1524601 1.1824636 -8.5384827 -3.1942577 
		1.1824636 -8.8023872 -3.3155632 1.1824636 -9.0404625 -3.5044975 1.1824636 -9.229393 
		-3.742569 1.1824636 -9.3507004 -4.0064735 1.1824636 -9.3924942 -4.27038 1.1824636 
		-9.3507004 -4.5084515 1.1824636 -9.229393 -4.6973858 1.1824636 -9.0404625 -4.8186913 
		1.1824636 -8.8023872 -4.8604889 1.1824636 -8.5384827 -4.8288136 1.0472007 -8.2712898 
		-4.7059975 1.0472007 -8.0302467 -4.5147095 1.0472007 -7.8389587 -4.2736683 1.0472007 
		-7.7161446 -4.0064735 1.0472007 -7.6738243 -3.7392807 1.0472007 -7.7161446 -3.4982395 
		1.0472007 -7.8389587 -3.3069515 1.0472007 -8.0302467 -3.1841354 1.0472007 -8.2712898 
		-3.1418152 1.0472007 -8.5384827 -3.1841354 1.0472007 -8.8056755 -3.3069515 1.0472007 
		-9.0467186 -3.4982395 1.0472007 -9.2380066 -3.7392807 1.0472007 -9.3608208 -4.0064735 
		1.0472007 -9.403141 -4.2736683 1.0472007 -9.3608208 -4.5147076 1.0472007 -9.2380066 
		-4.7059975 1.0472007 -9.0467186 -4.8288136 1.0472007 -8.8056755 -4.8711338 1.0472007 
		-8.5384827 -4.8186913 0.91193819 -8.2745781 -4.6973858 0.91193819 -8.0365028 -4.5084515 
		0.91193819 -7.8475723 -4.27038 0.91193819 -7.726265 -4.0064735 0.91193819 -7.6844711 
		-3.742569 0.91193819 -7.726265 -3.5044975 0.91193819 -7.8475723 -3.3155632 0.91193819 
		-8.0365028 -3.1942577 0.91193819 -8.2745781 -3.1524601 0.91193819 -8.5384827 -3.1942577 
		0.91193819 -8.8023872 -3.3155632 0.91193819 -9.0404625 -3.5044975 0.91193819 -9.229393 
		-3.742569 0.91193819 -9.3507004 -4.0064735 0.91193819 -9.3924942 -4.27038 0.91193819 
		-9.3507004 -4.5084515 0.91193819 -9.229393 -4.6973858 0.91193819 -9.0404625 -4.8186913 
		0.91193819 -8.8023872 -4.8604889 0.91193819 -8.5384827 -4.7885666 0.78000641 -8.2843628 
		-4.6717625 0.78000641 -8.0551224 -4.4898338 0.78000641 -7.8731956 -4.2605915 0.78000641 
		-7.7563896 -4.0064735 0.78000641 -7.7161446 -3.7523556 0.78000641 -7.7563896 -3.5231152 
		0.78000641 -7.8731956 -3.3411865 0.78000641 -8.0551224 -3.2243824 0.78000641 -8.2843666 
		-3.1841354 0.78000641 -8.5384827 -3.2243824 0.78000641 -8.7926025 -3.3411865 0.78000641 
		-9.021843 -3.5231152 0.78000641 -9.2037697 -3.7523556 0.78000641 -9.3205757 -4.0064735 
		0.78000641 -9.3608208 -4.2605915 0.78000641 -9.3205757 -4.4898338 0.78000641 -9.2037697 
		-4.6717625 0.78000641 -9.021843 -4.7885666 0.78000641 -8.7926025 -4.8288136 0.78000641 
		-8.5384827 -4.7391853 0.65465355 -8.3004112 -4.629755 0.65465355 -8.0856438 -4.4593143 
		0.65465355 -7.9152031 -4.2445469 0.65465355 -7.8057709 -4.0064735 0.65465355 -7.7680664 
		-3.7684021 0.65465355 -7.8057709 -3.5536346 0.65465355 -7.9152031 -3.383194 0.65465355 
		-8.0856438 -3.2737637 0.65465355 -8.3004112 -3.2360554 0.65465355 -8.5384827 -3.2737637 
		0.65465355 -8.7765541 -3.383194 0.65465355 -8.9913216 -3.5536346 0.65465355 -9.1617622 
		-3.768404 0.65465355 -9.2711945 -4.0064735 0.65465355 -9.3088989 -4.244545 0.65465355 
		-9.2711945 -4.4593143 0.65465355 -9.1617622 -4.629755 0.65465355 -8.9913216 -4.7391834 
		0.65465355 -8.7765541 -4.7768898 0.65465355 -8.5384827 -4.6717625 0.53896666 -8.322319 
		-4.572401 0.53896666 -8.1273117 -4.4176445 0.53896666 -7.9725571 -4.2226391 0.53896666 
		-7.8731956 -4.0064735 0.53896666 -7.8389587 -3.7903099 0.53896666 -7.8731956 -3.5953045 
		0.53896666 -7.9725571 -3.4405479 0.53896666 -8.1273117 -3.3411865 0.53896666 -8.322319 
		-3.3069515 0.53896666 -8.5384827 -3.3411865 0.53896666 -8.7546463 -3.4405479 0.53896666 
		-8.9496536 -3.5953045 0.53896666 -9.1044083 -3.7903099 0.53896666 -9.2037697 -4.0064735 
		0.53896666 -9.2380066 -4.2226391 0.53896666 -9.2037697 -4.4176445 0.53896666 -9.1044083 
		-4.572401 0.53896666 -8.9496536 -4.6717625 0.53896666 -8.7546463 -4.7059975 0.53896666 
		-8.5384827 -4.5879574 0.43579435 -8.3495483 -4.5011139 0.43579435 -8.1791077 -4.3658504 
		0.43579435 -8.0438423 -4.1954098 0.43579435 -7.9570007 -4.0064735 0.43579435 -7.9270744 
		-3.8175392 0.43579435 -7.9570007 -3.6470985 0.43579435 -8.0438423 -3.5118351 0.43579435 
		-8.1791077 -3.4249916 0.43579435 -8.3495483 -3.3950672 0.43579435 -8.5384827 -3.4249916 
		0.43579435 -8.727417 -3.5118351 0.43579435 -8.8978577 -3.6470985 0.43579435 -9.033123 
		-3.8175392 0.43579435 -9.1199646 -4.0064735 0.43579435 -9.1498909 -4.1954098 0.43579435 
		-9.1199646 -4.3658504 0.43579435 -9.033123 -4.5011139 0.43579435 -8.8978577 -4.5879574 
		0.43579435 -8.727417 -4.6178818 0.43579435 -8.5384827 -4.4898338 0.34767675 -8.3814316 
		-4.4176445 0.34767675 -8.2397499 -4.3052082 0.34767675 -8.1273117 -4.1635284 0.34767675 
		-8.0551224 -4.0064735 0.34767675 -8.0302467 -3.8494205 0.34767675 -8.0551224 -3.7077408 
		0.34767675 -8.1273117 -3.5953045 0.34767675 -8.2397499 -3.5231152 0.34767675 -8.3814316 
		-3.4982395 0.34767675 -8.5384827 -3.5231152 0.34767675 -8.6955338 -3.5953045 0.34767675 
		-8.8372154 -3.7077408 0.34767675 -8.9496536 -3.8494205 0.34767675 -9.021843 -4.0064735 
		0.34767675 -9.0467186 -4.1635284 0.34767675 -9.021843 -4.3052082 0.34767675 -8.9496536 
		-4.4176445 0.34767675 -8.8372154 -4.4898338 0.34767675 -8.6955338 -4.5147076 0.34767675 
		-8.5384827 -4.3798084 0.27678347 -8.4171791 -4.3240528 0.27678347 -8.3077507 -4.2372074 
		0.27678347 -8.2209053 -4.1277771 0.27678347 -8.1651497 -4.0064735 0.27678347 -8.1459351 
		-3.8851719 0.27678347 -8.1651497 -3.7757416 0.27678347 -8.2209053 -3.6888962 0.27678347 
		-8.3077507 -3.6331406 0.27678347 -8.4171791 -3.6139259 0.27678347 -8.5384827 -3.6331406 
		0.27678347 -8.6597862 -3.6888962 0.27678347 -8.7692146;
	setAttr ".pt[332:381]" -3.7757416 0.27678347 -8.85606 -3.8851719 0.27678347 
		-8.9118156 -4.0064735 0.27678347 -8.9310303 -4.1277771 0.27678347 -8.9118156 -4.2372074 
		0.27678347 -8.85606 -4.3240528 0.27678347 -8.7692146 -4.3798084 0.27678347 -8.6597862 
		-4.3990211 0.27678347 -8.5384827 -4.2605915 0.22486116 -8.4559135 -4.2226391 0.22486116 
		-8.3814316 -4.1635284 0.22486116 -8.322319 -4.0890427 0.22486116 -8.2843628 -4.0064735 
		0.22486116 -8.2712898 -3.9239063 0.22486116 -8.2843628 -3.8494205 0.22486116 -8.322319 
		-3.7903099 0.22486116 -8.3814316 -3.7523556 0.22486116 -8.4559135 -3.7392807 0.22486116 
		-8.5384827 -3.7523556 0.22486116 -8.6210518 -3.7903099 0.22486116 -8.6955338 -3.8494205 
		0.22486116 -8.7546463 -3.9239063 0.22486116 -8.7926025 -4.0064735 0.22486116 -8.8056755 
		-4.0890427 0.22486116 -8.7926025 -4.1635284 0.22486116 -8.7546463 -4.2226391 0.22486116 
		-8.6955338 -4.2605915 0.22486116 -8.6210518 -4.2736683 0.22486116 -8.5384827 -4.1351166 
		0.19318677 -8.4966812 -4.1159058 0.19318677 -8.4589767 -4.0859795 0.19318677 -8.4290543 
		-4.0482731 0.19318677 -8.4098396 -4.0064735 0.19318677 -8.4032211 -3.9646759 0.19318677 
		-8.4098434 -3.9269695 0.19318677 -8.4290543 -3.8970432 0.19318677 -8.4589767 -3.8778324 
		0.19318677 -8.4966812 -3.871212 0.19318677 -8.5384827 -3.8778324 0.19318677 -8.5802841 
		-3.8970432 0.19318677 -8.6179886 -3.9269695 0.19318677 -8.6479111 -3.9646759 0.19318677 
		-8.6671257 -4.0064735 0.19318677 -8.6737442 -4.0482731 0.19318677 -8.6671219 -4.0859795 
		0.19318677 -8.6479111 -4.1159058 0.19318677 -8.6179886 -4.1351166 0.19318677 -8.5802841 
		-4.141737 0.19318677 -8.5384827 -4.0064735 1.9118605 -8.5384827 -4.0064735 0.18254139 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_ChromeBall" -p "Lookdev_OverlayFull_grp";
	rename -uid "EAD9059C-44AB-BA53-5FCB-F3A3137BE63F";
	setAttr ".rp" -type "double3" -4.0064740684350895 0.51090317619534886 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -4.0064740684350895 0.51090317619534886 -8.5384841367083908 ;
createNode mesh -n "Lookdev_ChromeBallShape" -p "Lookdev_ChromeBall";
	rename -uid "E0FF7D4B-46E1-4558-387A-D986CFF4EAA0";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.025 1 0.075000003 1 0.125 1 0.17500001
		 1 0.22500001 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47500002 1 0.52499998
		 1 0.57499999 1 0.625 1 0.67500001 1 0.72499996 1 0.77499998 1 0.82499999 1 0.875
		 1 0.92500001 1 0.97499996 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -4.5425758 -5.9300985 -8.3642921 -4.4625111 
		-5.9300985 -8.2071533 -4.3378029 -5.9300985 -8.0824471 -4.1806641 -5.9300985 -8.0023842 
		-4.0064735 -5.9300985 -7.9747925 -3.8322849 -5.9300985 -8.0023842 -3.6751461 -5.9300985 
		-8.0824471 -3.5504398 -5.9300985 -8.2071533 -3.4703732 -5.9300985 -8.3642921 -3.4427853 
		-5.9300985 -8.5384827 -3.4703732 -5.9300985 -8.7126732 -3.5504398 -5.9300985 -8.869812 
		-3.6751461 -5.9300985 -8.9945183 -3.8322849 -5.9300985 -9.0745811 -4.0064735 -5.9300985 
		-9.1021729 -4.1806641 -5.9300985 -9.0745811 -4.3378029 -5.9300985 -8.9945183 -4.4625092 
		-5.9300985 -8.869812 -4.5425758 -5.9300985 -8.7126732 -4.5701637 -5.9300985 -8.5384827 
		-5.0654755 -6.0620961 -8.1943893 -4.9073143 -6.0620961 -7.8839836 -4.6609745 -6.0620961 
		-7.6376419 -4.350565 -6.0620961 -7.4794807 -4.0064735 -6.0620961 -7.424984 -3.662384 
		-6.0620961 -7.4794807 -3.3519745 -6.0620961 -7.6376419 -3.1056347 -6.0620961 -7.8839836 
		-2.9474716 -6.0620961 -8.1943893 -2.8929749 -6.0620961 -8.5384827 -2.9474716 -6.0620961 
		-8.882576 -3.1056347 -6.0620961 -9.1929817 -3.3519745 -6.0620961 -9.4393234 -3.662384 
		-6.0620961 -9.5974846 -4.0064735 -6.0620961 -9.6519814 -4.350565 -6.0620961 -9.5974846 
		-4.6609745 -6.0620961 -9.4393234 -4.9073143 -6.0620961 -9.1929817 -5.0654755 -6.0620961 
		-8.882576 -5.1199741 -6.0620961 -8.5384827 -5.5623016 -6.2784781 -8.0329666 -5.3299408 
		-6.2784781 -7.576931 -4.9680271 -6.2784781 -7.2150192 -4.5119934 -6.2784781 -6.9826584 
		-4.0064735 -6.2784781 -6.9025879 -3.5009556 -6.2784781 -6.9826584 -3.0449219 -6.2784781 
		-7.2150192 -2.6830082 -6.2784781 -7.576931 -2.4506474 -6.2784781 -8.0329666 -2.3705807 
		-6.2784781 -8.5384827 -2.4506474 -6.2784781 -9.0439987 -2.6830082 -6.2784781 -9.5000343 
		-3.0449219 -6.2784781 -9.8619461 -3.5009556 -6.2784781 -10.094307 -4.0064735 -6.2784781 
		-10.174374 -4.5119934 -6.2784781 -10.094307 -4.9680271 -6.2784781 -9.8619461 -5.3299389 
		-6.2784781 -9.5000343 -5.5622997 -6.2784781 -9.0439987 -5.6423664 -6.2784781 -8.5384827 
		-6.0208168 -6.573916 -7.8839836 -5.7199764 -6.573916 -7.2935524 -5.2514076 -6.573916 
		-6.8249817 -4.6609745 -6.573916 -6.5241394 -4.0064735 -6.573916 -6.4204788 -3.3519745 
		-6.573916 -6.5241394 -2.7615433 -6.573916 -6.8249817 -2.2929745 -6.573916 -7.2935524 
		-1.9921322 -6.573916 -7.8839836 -1.8884697 -6.573916 -8.5384827 -1.9921322 -6.573916 
		-9.1929817 -2.2929745 -6.573916 -9.7834129 -2.7615433 -6.573916 -10.251984 -3.3519745 
		-6.573916 -10.552826 -4.0064735 -6.573916 -10.656487 -4.6609745 -6.573916 -10.552826 
		-5.2514057 -6.573916 -10.251984 -5.7199745 -6.573916 -9.7834129 -6.0208149 -6.573916 
		-9.1929817 -6.1244774 -6.573916 -8.5384827 -6.4297314 -6.9411359 -7.7511177 -6.0678196 
		-6.9411359 -7.0408287 -5.5041294 -6.9411359 -6.4771347 -4.7938385 -6.9411359 -6.1152267 
		-4.0064735 -6.9411359 -5.9905205 -3.2191105 -6.9411359 -6.1152267 -2.5088196 -6.9411359 
		-6.4771347 -1.9451294 -6.9411359 -7.0408287 -1.5832195 -6.9411359 -7.7511177 -1.4585114 
		-6.9411359 -8.5384827 -1.5832195 -6.9411359 -9.3258476 -1.9451294 -6.9411359 -10.036137 
		-2.5088196 -6.9411359 -10.599827 -3.2191105 -6.9411359 -10.961739 -4.0064735 -6.9411359 
		-11.086445 -4.7938385 -6.9411359 -10.961739 -5.5041294 -6.9411359 -10.599827 -6.0678196 
		-6.9411359 -10.036137 -6.4297295 -6.9411359 -9.3258476 -6.5544357 -6.9411359 -8.5384827 
		-6.7789783 -7.3710942 -7.6376419 -6.3649063 -7.3710942 -6.8249817 -5.7199764 -7.3710942 
		-6.1800499 -4.9073143 -7.3710942 -5.7659798 -4.0064735 -7.3710942 -5.6232986 -3.1056347 
		-7.3710942 -5.7659798 -2.2929726 -7.3710942 -6.1800537 -1.6480427 -7.3710942 -6.8249817 
		-1.2339725 -7.3710942 -7.6376419 -1.0912933 -7.3710942 -8.5384827 -1.2339725 -7.3710942 
		-9.4393234 -1.6480427 -7.3710942 -10.251984 -2.2929745 -7.3710942 -10.896912 -3.1056347 
		-7.3710942 -11.310986 -4.0064735 -7.3710942 -11.453663 -4.9073143 -7.3710942 -11.310986 
		-5.7199745 -7.3710942 -10.896912 -6.3649063 -7.3710942 -10.251984 -6.7789764 -7.3710942 
		-9.4393234 -6.9216557 -7.3710942 -8.5384827 -7.0599575 -7.8532052 -7.5463486 -6.60392 
		-7.8532052 -6.6513252 -5.8936291 -7.8532052 -5.9410362 -4.9986095 -7.8532052 -5.4850006 
		-4.0064735 -7.8532052 -5.3278618 -3.0143394 -7.8532052 -5.4850006 -2.1193199 -7.8532052 
		-5.9410362 -1.409029 -7.8532052 -6.651329 -0.95299339 -7.8532052 -7.5463486 -0.79585457 
		-7.8532052 -8.5384827 -0.95299339 -7.8532052 -9.5306168 -1.409029 -7.8532052 -10.425636 
		-2.1193199 -7.8532052 -11.135929 -3.0143394 -7.8532052 -11.591961 -4.0064735 -7.8532052 
		-11.749104 -4.9986095 -7.8532052 -11.591961 -5.8936291 -7.8532052 -11.135929 -6.6039181 
		-7.8532052 -10.425636 -7.0599537 -7.8532052 -9.5306168 -7.2170944 -7.8532052 -8.5384827 
		-7.265749 -8.375597 -7.4794807 -6.7789783 -8.375597 -6.5241394 -6.0208168 -8.375597 
		-5.7659798 -5.0654755 -8.375597 -5.2792091 -4.0064735 -8.375597 -5.1114807 -2.9474716 
		-8.375597 -5.2792091 -1.9921322 -8.375597 -5.7659798 -1.2339725 -8.375597 -6.5241394 
		-0.74720192 -8.375597 -7.4794846 -0.5794735 -8.375597 -8.5384827 -0.74720192 -8.375597 
		-9.5974846 -1.2339725 -8.375597 -10.552826 -1.9921322 -8.375597 -11.310986 -2.9474716 
		-8.375597 -11.797756 -4.0064735 -8.375597 -11.965481 -5.0654755 -8.375597 -11.797756 
		-6.0208149 -8.375597 -11.310986 -6.7789764 -8.375597 -10.552826 -7.2657471 -8.375597 
		-9.5974846 -7.4334755 -8.375597 -8.5384827 -7.3912849 -8.9254065 -7.4386902 -6.8857651 
		-8.9254065 -6.4465523 -6.098402 -8.9254065 -5.6591911 -5.106266 -8.9254065 -5.1536713 
		-4.0064735 -8.9254065 -4.9794846 -2.906683 -8.9254065 -5.1536713;
	setAttr ".pt[166:331]" -1.914547 -8.9254065 -5.6591911 -1.1271839 -8.9254065 
		-6.4465523 -0.62166405 -8.9254065 -7.438694 -0.44747543 -8.9254065 -8.5384827 -0.62166405 
		-8.9254065 -9.6382713 -1.1271839 -8.9254065 -10.630413 -1.914547 -8.9254065 -11.41777 
		-2.906683 -8.9254065 -11.923294 -4.0064735 -8.9254065 -12.097481 -5.106266 -8.9254065 
		-11.923294 -6.098402 -8.9254065 -11.41777 -6.8857651 -8.9254065 -10.630413 -7.391283 
		-8.9254065 -9.6382713 -7.5654736 -8.9254065 -8.5384827 -7.4334774 -9.4890966 -7.424984 
		-6.9216557 -9.4890966 -6.4204788 -6.1244793 -9.4890966 -5.6232986 -5.1199741 -9.4890966 
		-5.1114807 -4.0064735 -9.4890966 -4.9351196 -2.8929749 -9.4890966 -5.1114807 -1.8884697 
		-9.4890966 -5.6232986 -1.0912933 -9.4890966 -6.4204788 -0.5794735 -9.4890966 -7.424984 
		-0.40311241 -9.4890966 -8.5384827 -0.5794735 -9.4890966 -9.6519814 -1.0912933 -9.4890966 
		-10.656487 -1.8884697 -9.4890966 -11.453663 -2.8929749 -9.4890966 -11.965481 -4.0064735 
		-9.4890966 -12.141842 -5.1199741 -9.4890966 -11.965481 -6.1244774 -9.4890966 -11.453663 
		-6.9216557 -9.4890966 -10.656487 -7.4334755 -9.4890966 -9.6519814 -7.6098366 -9.4890966 
		-8.5384827 -7.3912849 -10.052786 -7.4386902 -6.8857651 -10.052786 -6.4465523 -6.098402 
		-10.052786 -5.6591911 -5.106266 -10.052786 -5.1536713 -4.0064735 -10.052786 -4.9794846 
		-2.906683 -10.052786 -5.1536713 -1.914547 -10.052786 -5.6591911 -1.1271839 -10.052786 
		-6.4465523 -0.62166405 -10.052786 -7.438694 -0.44747543 -10.052786 -8.5384827 -0.62166405 
		-10.052786 -9.6382713 -1.1271839 -10.052786 -10.630413 -1.914547 -10.052786 -11.41777 
		-2.906683 -10.052786 -11.923294 -4.0064735 -10.052786 -12.097481 -5.106266 -10.052786 
		-11.923294 -6.098402 -10.052786 -11.41777 -6.8857651 -10.052786 -10.630413 -7.391283 
		-10.052786 -9.6382713 -7.5654736 -10.052786 -8.5384827 -7.265749 -10.602596 -7.4794807 
		-6.7789783 -10.602596 -6.5241394 -6.0208168 -10.602596 -5.7659798 -5.0654755 -10.602596 
		-5.2792091 -4.0064735 -10.602596 -5.1114807 -2.9474716 -10.602596 -5.2792091 -1.9921322 
		-10.602596 -5.7659798 -1.2339725 -10.602596 -6.5241394 -0.74720192 -10.602596 -7.4794846 
		-0.5794735 -10.602596 -8.5384827 -0.74720192 -10.602596 -9.5974846 -1.2339725 -10.602596 
		-10.552826 -1.9921322 -10.602596 -11.310986 -2.9474716 -10.602596 -11.797756 -4.0064735 
		-10.602596 -11.965481 -5.0654755 -10.602596 -11.797756 -6.0208149 -10.602596 -11.310986 
		-6.7789764 -10.602596 -10.552826 -7.2657471 -10.602596 -9.5974846 -7.4334755 -10.602596 
		-8.5384827 -7.0599575 -11.124989 -7.5463486 -6.60392 -11.124989 -6.6513252 -5.8936291 
		-11.124989 -5.9410362 -4.9986095 -11.124989 -5.4850006 -4.0064735 -11.124989 -5.3278618 
		-3.0143394 -11.124989 -5.4850006 -2.1193199 -11.124989 -5.9410362 -1.409029 -11.124989 
		-6.651329 -0.95299339 -11.124989 -7.5463486 -0.79585457 -11.124989 -8.5384827 -0.95299339 
		-11.124989 -9.5306168 -1.409029 -11.124989 -10.425636 -2.1193199 -11.124989 -11.135929 
		-3.0143394 -11.124989 -11.591961 -4.0064735 -11.124989 -11.749104 -4.9986095 -11.124989 
		-11.591961 -5.8936291 -11.124989 -11.135929 -6.6039181 -11.124989 -10.425636 -7.0599537 
		-11.124989 -9.5306168 -7.2170944 -11.124989 -8.5384827 -6.7789783 -11.607099 -7.6376419 
		-6.3649063 -11.607099 -6.8249817 -5.7199764 -11.607099 -6.1800499 -4.9073143 -11.607099 
		-5.7659798 -4.0064735 -11.607099 -5.6232986 -3.1056347 -11.607099 -5.7659798 -2.2929726 
		-11.607099 -6.1800537 -1.6480427 -11.607099 -6.8249817 -1.2339725 -11.607099 -7.6376419 
		-1.0912933 -11.607099 -8.5384827 -1.2339725 -11.607099 -9.4393234 -1.6480427 -11.607099 
		-10.251984 -2.2929745 -11.607099 -10.896912 -3.1056347 -11.607099 -11.310986 -4.0064735 
		-11.607099 -11.453663 -4.9073143 -11.607099 -11.310986 -5.7199745 -11.607099 -10.896912 
		-6.3649063 -11.607099 -10.251984 -6.7789764 -11.607099 -9.4393234 -6.9216557 -11.607099 
		-8.5384827 -6.4297314 -12.037058 -7.7511177 -6.0678196 -12.037058 -7.0408287 -5.5041294 
		-12.037058 -6.4771347 -4.7938385 -12.037058 -6.1152267 -4.0064735 -12.037058 -5.9905205 
		-3.2191105 -12.037058 -6.1152267 -2.5088196 -12.037058 -6.4771347 -1.9451294 -12.037058 
		-7.0408287 -1.5832195 -12.037058 -7.7511177 -1.4585114 -12.037058 -8.5384827 -1.5832195 
		-12.037058 -9.3258476 -1.9451294 -12.037058 -10.036137 -2.5088196 -12.037058 -10.599827 
		-3.2191105 -12.037058 -10.961739 -4.0064735 -12.037058 -11.086445 -4.7938385 -12.037058 
		-10.961739 -5.5041294 -12.037058 -10.599827 -6.0678196 -12.037058 -10.036137 -6.4297295 
		-12.037058 -9.3258476 -6.5544357 -12.037058 -8.5384827 -6.0208168 -12.404277 -7.8839836 
		-5.7199764 -12.404277 -7.2935524 -5.2514076 -12.404277 -6.8249817 -4.6609745 -12.404277 
		-6.5241394 -4.0064735 -12.404277 -6.4204788 -3.3519745 -12.404277 -6.5241394 -2.7615433 
		-12.404277 -6.8249817 -2.2929745 -12.404277 -7.2935524 -1.9921322 -12.404277 -7.8839836 
		-1.8884697 -12.404277 -8.5384827 -1.9921322 -12.404277 -9.1929817 -2.2929745 -12.404277 
		-9.7834129 -2.7615433 -12.404277 -10.251984 -3.3519745 -12.404277 -10.552826 -4.0064735 
		-12.404277 -10.656487 -4.6609745 -12.404277 -10.552826 -5.2514057 -12.404277 -10.251984 
		-5.7199745 -12.404277 -9.7834129 -6.0208149 -12.404277 -9.1929817 -6.1244774 -12.404277 
		-8.5384827 -5.5623016 -12.699716 -8.0329666 -5.3299408 -12.699716 -7.576931 -4.9680271 
		-12.699716 -7.2150192 -4.5119934 -12.699716 -6.9826584 -4.0064735 -12.699716 -6.9025879 
		-3.5009556 -12.699716 -6.9826584 -3.0449219 -12.699716 -7.2150192 -2.6830082 -12.699716 
		-7.576931 -2.4506474 -12.699716 -8.0329666 -2.3705807 -12.699716 -8.5384827 -2.4506474 
		-12.699716 -9.0439987 -2.6830082 -12.699716 -9.5000343;
	setAttr ".pt[332:381]" -3.0449219 -12.699716 -9.8619461 -3.5009556 -12.699716 
		-10.094307 -4.0064735 -12.699716 -10.174374 -4.5119934 -12.699716 -10.094307 -4.9680271 
		-12.699716 -9.8619461 -5.3299389 -12.699716 -9.5000343 -5.5622997 -12.699716 -9.0439987 
		-5.6423664 -12.699716 -8.5384827 -5.0654755 -12.916098 -8.1943893 -4.9073143 -12.916098 
		-7.8839836 -4.6609745 -12.916098 -7.6376419 -4.350565 -12.916098 -7.4794807 -4.0064735 
		-12.916098 -7.424984 -3.662384 -12.916098 -7.4794807 -3.3519745 -12.916098 -7.6376419 
		-3.1056347 -12.916098 -7.8839836 -2.9474716 -12.916098 -8.1943893 -2.8929749 -12.916098 
		-8.5384827 -2.9474716 -12.916098 -8.882576 -3.1056347 -12.916098 -9.1929817 -3.3519745 
		-12.916098 -9.4393234 -3.662384 -12.916098 -9.5974846 -4.0064735 -12.916098 -9.6519814 
		-4.350565 -12.916098 -9.5974846 -4.6609745 -12.916098 -9.4393234 -4.9073143 -12.916098 
		-9.1929817 -5.0654755 -12.916098 -8.882576 -5.1199741 -12.916098 -8.5384827 -4.5425758 
		-13.048095 -8.3642921 -4.4625111 -13.048095 -8.2071533 -4.3378029 -13.048095 -8.0824471 
		-4.1806641 -13.048095 -8.0023842 -4.0064735 -13.048095 -7.9747925 -3.8322849 -13.048095 
		-8.0023842 -3.6751461 -13.048095 -8.0824471 -3.5504398 -13.048095 -8.2071533 -3.4703732 
		-13.048095 -8.3642921 -3.4427853 -13.048095 -8.5384827 -3.4703732 -13.048095 -8.7126732 
		-3.5504398 -13.048095 -8.869812 -3.6751461 -13.048095 -8.9945183 -3.8322849 -13.048095 
		-9.0745811 -4.0064735 -13.048095 -9.1021729 -4.1806641 -13.048095 -9.0745811 -4.3378029 
		-13.048095 -8.9945183 -4.4625092 -13.048095 -8.869812 -4.5425758 -13.048095 -8.7126732 
		-4.5701637 -13.048095 -8.5384827 -4.0064735 -5.885735 -8.5384827 -4.0064735 -13.092459 
		-8.5384827;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.5562371 6.30732727 -0.1807324 0.47316355 6.30732727 -0.34377342
		 0.34377342 6.30732727 -0.47316355 0.18073237 6.30732727 -0.55623704 0 6.30732727 -0.58486223
		 -0.18073237 6.30732727 -0.55623698 -0.34377337 6.30732727 -0.47316343 -0.47316337 6.30732727 -0.34377331
		 -0.55623692 6.30732727 -0.18073232 -0.58486211 6.30732727 0 -0.55623692 6.30732727 0.18073232
		 -0.47316337 6.30732727 0.34377328 -0.34377328 6.30732727 0.47316331 -0.18073232 6.30732727 0.55623686
		 -1.7430244e-08 6.30732727 0.58486199 0.18073227 6.30732727 0.5562368 0.34377322 6.30732727 0.47316328
		 0.47316328 6.30732727 0.34377325 0.5562368 6.30732727 0.18073228 0.58486193 6.30732727 0
		 1.098777771 6.44428253 -0.35701454 0.93467623 6.44428253 -0.67908198 0.67908198 6.44428253 -0.93467611
		 0.35701448 6.44428253 -1.098777652 0 6.44428253 -1.15532315 -0.35701448 6.44428253 -1.098777533
		 -0.67908186 6.44428253 -0.93467593 -0.93467593 6.44428253 -0.6790818 -1.098777413 6.44428253 -0.35701439
		 -1.15532279 6.44428253 0 -1.098777413 6.44428253 0.35701439 -0.93467581 6.44428253 0.67908174
		 -0.67908174 6.44428253 0.93467581 -0.35701439 6.44428253 1.098777294 -3.4431295e-08 6.44428253 1.15532267
		 0.3570143 6.44428253 1.098777175 0.67908156 6.44428253 0.93467569 0.93467557 6.44428253 0.67908162
		 1.098777175 6.44428253 0.35701433 1.15532255 6.44428253 0 1.61426294 6.66879177 -0.52450579
		 1.37317407 6.66879177 -0.99766934 0.99766934 6.66879177 -1.37317395 0.52450573 6.66879177 -1.6142627
		 0 6.66879177 -1.6973362 -0.52450573 6.66879177 -1.61426258 -0.9976691 6.66879177 -1.37317371
		 -1.37317359 6.66879177 -0.99766898 -1.61426234 6.66879177 -0.52450556 -1.69733584 6.66879177 0
		 -1.61426234 6.66879177 0.52450556 -1.37317348 6.66879177 0.99766892 -0.99766892 6.66879177 1.37317348
		 -0.52450556 6.66879177 1.6142621 -5.0584536e-08 6.66879177 1.6973356 0.5245055 6.66879177 1.61426198
		 0.99766868 6.66879177 1.37317336 1.37317324 6.66879177 0.9976688 1.61426198 6.66879177 0.5245055
		 1.69733536 6.66879177 0 2.089999437 6.97532654 -0.67908198 1.77785981 6.97532654 -1.29169059
		 1.29169059 6.97532654 -1.77785969 0.67908192 6.97532654 -2.089999199 0 6.97532654 -2.19755507
		 -0.67908192 6.97532654 -2.08999896 -1.29169047 6.97532654 -1.77785921 -1.77785909 6.97532654 -1.29169023
		 -2.089998484 6.97532654 -0.67908168 -2.19755459 6.97532654 0 -2.089998484 6.97532654 0.67908168
		 -1.77785897 6.97532654 1.29169011 -1.29169011 6.97532654 1.77785885 -0.67908168 6.97532654 2.089998484
		 -6.5492216e-08 6.97532654 2.19755435 0.6790815 6.97532654 2.089998484 1.29168987 6.97532654 1.77785873
		 1.77785861 6.97532654 1.29168999 2.089998245 6.97532654 0.67908156 2.19755411 6.97532654 0
		 2.51427341 7.3563385 -0.81693691 2.13876867 7.3563385 -1.55390632 1.55390632 7.3563385 -2.13876843
		 0.81693685 7.3563385 -2.51427317 0 7.3563385 -2.64366293 -0.81693685 7.3563385 -2.51427293
		 -1.55390596 7.3563385 -2.13876796 -2.13876772 7.3563385 -1.55390584 -2.51427245 7.3563385 -0.81693655
		 -2.64366245 7.3563385 0 -2.51427245 7.3563385 0.81693655 -2.13876772 7.3563385 1.55390561
		 -1.55390561 7.3563385 2.13876748 -0.81693655 7.3563385 2.51427197 -7.8787259e-08 7.3563385 2.64366198
		 0.81693631 7.3563385 2.51427197 1.55390525 7.3563385 2.13876724 2.13876724 7.3563385 1.55390549
		 2.51427174 7.3563385 0.81693643 2.64366174 7.3563385 0 2.87663746 7.80244589 -0.93467611
		 2.44701409 7.80244589 -1.77785969 1.77785969 7.80244589 -2.44701385 0.93467599 7.80244589 -2.87663722
		 0 7.80244589 -3.024675131 -0.93467599 7.80244589 -2.87663698 -1.77785933 7.80244589 -2.44701338
		 -2.44701314 7.80244589 -1.77785909 -2.87663651 7.80244589 -0.93467581 -3.024674416 7.80244589 0
		 -2.87663651 7.80244589 0.93467581 -2.4470129 7.80244589 1.77785897 -1.77785897 7.80244589 2.44701266
		 -0.93467581 7.80244589 2.87663603 -9.0142301e-08 7.80244589 3.024674177 0.93467551 7.80244589 2.87663603
		 1.77785861 7.80244589 2.44701266 2.44701266 7.80244589 1.77785873 2.87663579 7.80244589 0.93467557
		 3.0246737 7.80244589 0 3.16816926 8.30266476 -1.029400587 2.69500589 8.30266476 -1.95803618
		 1.95803618 8.30266476 -2.69500566 1.029400468 8.30266476 -3.16816878 0 8.30266476 -3.33120966
		 -1.029400468 8.30266476 -3.16816878 -1.95803571 8.30266476 -2.69500494 -2.6950047 8.30266476 -1.95803547
		 -3.16816807 8.30266476 -1.02940011 -3.33120894 8.30266476 0 -3.16816807 8.30266476 1.02940011
		 -2.6950047 8.30266476 1.95803547 -1.95803547 8.30266476 2.69500446 -1.02940011 8.30266476 3.16816759
		 -9.9277742e-08 8.30266476 3.33120871 1.029399872 8.30266476 3.16816735 1.95803499 8.30266476 2.69500422
		 2.69500399 8.30266476 1.95803523 3.16816711 8.30266476 1.029399991 3.33120823 8.30266476 0
		 3.38169026 8.84467793 -1.098777652 2.87663746 8.84467793 -2.089999437 2.089999437 8.84467793 -2.87663722
		 1.098777533 8.84467793 -3.38168979 0 8.84467793 -3.55571914 -1.098777533 8.84467793 -3.38168979
		 -2.08999896 8.84467793 -2.87663698 -2.87663674 8.84467793 -2.089998722 -3.38168907 8.84467793 -1.098777413
		 -3.55571818 8.84467793 0 -3.38168907 8.84467793 1.098777413 -2.87663651 8.84467793 2.089998484
		 -2.089998484 8.84467793 2.87663627 -1.098777413 8.84467793 3.38168859 -1.0596863e-07 8.84467793 3.55571771
		 1.098777056 8.84467793 3.38168836 2.089998245 8.84467793 2.87663603 2.87663579 8.84467793 2.089998484
		 3.38168812 8.84467793 1.098777175 3.55571723 8.84467793 0 3.51194263 9.41513824 -1.14109933
		 2.98743701 9.41513824 -2.1704998 2.1704998 9.41513824 -2.98743677 1.14109921 9.41513824 -3.51194215
		 0 9.41513824 -3.69267464 -1.14109921 9.41513824 -3.51194191;
	setAttr ".vt[166:331]" -2.17049932 9.41513824 -2.98743606 -2.98743582 9.41513824 -2.17049932
		 -3.51194143 9.41513824 -1.14109886 -3.69267368 9.41513824 0 -3.51194143 9.41513824 1.14109886
		 -2.98743558 9.41513824 2.17049909 -2.17049909 9.41513824 2.98743534 -1.14109886 9.41513824 3.51194096
		 -1.1005022e-07 9.41513824 3.69267321 1.1410985 9.41513824 3.51194096 2.17049861 9.41513824 2.9874351
		 2.98743486 9.41513824 2.17049885 3.51194072 9.41513824 1.14109862 3.69267273 9.41513824 0
		 3.55571961 10 -1.15532327 3.024675846 10 -2.1975553 2.1975553 10 -3.024675608 1.15532315 10 -3.55571914
		 0 10 -3.73870397 -1.15532315 10 -3.5557189 -2.19755483 10 -3.024674892 -3.024674654 10 -2.19755483
		 -3.55571818 10 -1.15532279 -3.73870325 10 0 -3.55571818 10 1.15532279 -3.024674416 10 2.19755459
		 -2.19755459 10 3.024674177 -1.15532279 10 3.55571771 -1.1142201e-07 10 3.73870277
		 1.15532243 10 3.55571747 2.19755411 10 3.024673939 3.0246737 10 2.19755435 3.55571723 10 1.15532255
		 3.7387023 10 0 3.51194263 10.58486176 -1.14109933 2.98743701 10.58486176 -2.1704998
		 2.1704998 10.58486176 -2.98743677 1.14109921 10.58486176 -3.51194215 0 10.58486176 -3.69267464
		 -1.14109921 10.58486176 -3.51194191 -2.17049932 10.58486176 -2.98743606 -2.98743582 10.58486176 -2.17049932
		 -3.51194143 10.58486176 -1.14109886 -3.69267368 10.58486176 0 -3.51194143 10.58486176 1.14109886
		 -2.98743558 10.58486176 2.17049909 -2.17049909 10.58486176 2.98743534 -1.14109886 10.58486176 3.51194096
		 -1.1005022e-07 10.58486176 3.69267321 1.1410985 10.58486176 3.51194096 2.17049861 10.58486176 2.9874351
		 2.98743486 10.58486176 2.17049885 3.51194072 10.58486176 1.14109862 3.69267273 10.58486176 0
		 3.38169026 11.15532207 -1.098777652 2.87663746 11.15532207 -2.089999437 2.089999437 11.15532207 -2.87663722
		 1.098777533 11.15532207 -3.38168979 0 11.15532207 -3.55571914 -1.098777533 11.15532207 -3.38168979
		 -2.08999896 11.15532207 -2.87663698 -2.87663674 11.15532207 -2.089998722 -3.38168907 11.15532207 -1.098777413
		 -3.55571818 11.15532207 0 -3.38168907 11.15532207 1.098777413 -2.87663651 11.15532207 2.089998484
		 -2.089998484 11.15532207 2.87663627 -1.098777413 11.15532207 3.38168859 -1.0596863e-07 11.15532207 3.55571771
		 1.098777056 11.15532207 3.38168836 2.089998245 11.15532207 2.87663603 2.87663579 11.15532207 2.089998484
		 3.38168812 11.15532207 1.098777175 3.55571723 11.15532207 0 3.16816926 11.69733524 -1.029400587
		 2.69500589 11.69733524 -1.95803618 1.95803618 11.69733524 -2.69500566 1.029400468 11.69733524 -3.16816878
		 0 11.69733524 -3.33120966 -1.029400468 11.69733524 -3.16816878 -1.95803571 11.69733524 -2.69500494
		 -2.6950047 11.69733524 -1.95803547 -3.16816807 11.69733524 -1.02940011 -3.33120894 11.69733524 0
		 -3.16816807 11.69733524 1.02940011 -2.6950047 11.69733524 1.95803547 -1.95803547 11.69733524 2.69500446
		 -1.02940011 11.69733524 3.16816759 -9.9277742e-08 11.69733524 3.33120871 1.029399872 11.69733524 3.16816735
		 1.95803499 11.69733524 2.69500422 2.69500399 11.69733524 1.95803523 3.16816711 11.69733524 1.029399991
		 3.33120823 11.69733524 0 2.87663746 12.19755363 -0.93467611 2.44701409 12.19755363 -1.77785969
		 1.77785969 12.19755363 -2.44701385 0.93467599 12.19755363 -2.87663722 0 12.19755363 -3.024675131
		 -0.93467599 12.19755363 -2.87663698 -1.77785933 12.19755363 -2.44701338 -2.44701314 12.19755363 -1.77785909
		 -2.87663651 12.19755363 -0.93467581 -3.024674416 12.19755363 0 -2.87663651 12.19755363 0.93467581
		 -2.4470129 12.19755363 1.77785897 -1.77785897 12.19755363 2.44701266 -0.93467581 12.19755363 2.87663603
		 -9.0142301e-08 12.19755363 3.024674177 0.93467551 12.19755363 2.87663603 1.77785861 12.19755363 2.44701266
		 2.44701266 12.19755363 1.77785873 2.87663579 12.19755363 0.93467557 3.0246737 12.19755363 0
		 2.51427341 12.6436615 -0.81693691 2.13876867 12.6436615 -1.55390632 1.55390632 12.6436615 -2.13876843
		 0.81693685 12.6436615 -2.51427317 0 12.6436615 -2.64366293 -0.81693685 12.6436615 -2.51427293
		 -1.55390596 12.6436615 -2.13876796 -2.13876772 12.6436615 -1.55390584 -2.51427245 12.6436615 -0.81693655
		 -2.64366245 12.6436615 0 -2.51427245 12.6436615 0.81693655 -2.13876772 12.6436615 1.55390561
		 -1.55390561 12.6436615 2.13876748 -0.81693655 12.6436615 2.51427197 -7.8787259e-08 12.6436615 2.64366198
		 0.81693631 12.6436615 2.51427197 1.55390525 12.6436615 2.13876724 2.13876724 12.6436615 1.55390549
		 2.51427174 12.6436615 0.81693643 2.64366174 12.6436615 0 2.089999437 13.024673462 -0.67908198
		 1.77785981 13.024673462 -1.29169059 1.29169059 13.024673462 -1.77785969 0.67908192 13.024673462 -2.089999199
		 0 13.024673462 -2.19755507 -0.67908192 13.024673462 -2.08999896 -1.29169047 13.024673462 -1.77785921
		 -1.77785909 13.024673462 -1.29169023 -2.089998484 13.024673462 -0.67908168 -2.19755459 13.024673462 0
		 -2.089998484 13.024673462 0.67908168 -1.77785897 13.024673462 1.29169011 -1.29169011 13.024673462 1.77785885
		 -0.67908168 13.024673462 2.089998484 -6.5492216e-08 13.024673462 2.19755435 0.6790815 13.024673462 2.089998484
		 1.29168987 13.024673462 1.77785873 1.77785861 13.024673462 1.29168999 2.089998245 13.024673462 0.67908156
		 2.19755411 13.024673462 0 1.61426294 13.33120823 -0.52450579 1.37317407 13.33120823 -0.99766934
		 0.99766934 13.33120823 -1.37317395 0.52450573 13.33120823 -1.6142627 0 13.33120823 -1.6973362
		 -0.52450573 13.33120823 -1.61426258 -0.9976691 13.33120823 -1.37317371 -1.37317359 13.33120823 -0.99766898
		 -1.61426234 13.33120823 -0.52450556 -1.69733584 13.33120823 0 -1.61426234 13.33120823 0.52450556
		 -1.37317348 13.33120823 0.99766892;
	setAttr ".vt[332:381]" -0.99766892 13.33120823 1.37317348 -0.52450556 13.33120823 1.6142621
		 -5.0584536e-08 13.33120823 1.6973356 0.5245055 13.33120823 1.61426198 0.99766868 13.33120823 1.37317336
		 1.37317324 13.33120823 0.9976688 1.61426198 13.33120823 0.5245055 1.69733536 13.33120823 0
		 1.098777771 13.55571747 -0.35701454 0.93467623 13.55571747 -0.67908198 0.67908198 13.55571747 -0.93467611
		 0.35701448 13.55571747 -1.098777652 0 13.55571747 -1.15532315 -0.35701448 13.55571747 -1.098777533
		 -0.67908186 13.55571747 -0.93467593 -0.93467593 13.55571747 -0.6790818 -1.098777413 13.55571747 -0.35701439
		 -1.15532279 13.55571747 0 -1.098777413 13.55571747 0.35701439 -0.93467581 13.55571747 0.67908174
		 -0.67908174 13.55571747 0.93467581 -0.35701439 13.55571747 1.098777294 -3.4431295e-08 13.55571747 1.15532267
		 0.3570143 13.55571747 1.098777175 0.67908156 13.55571747 0.93467569 0.93467557 13.55571747 0.67908162
		 1.098777175 13.55571747 0.35701433 1.15532255 13.55571747 0 0.5562371 13.69267273 -0.1807324
		 0.47316355 13.69267273 -0.34377342 0.34377342 13.69267273 -0.47316355 0.18073237 13.69267273 -0.55623704
		 0 13.69267273 -0.58486223 -0.18073237 13.69267273 -0.55623698 -0.34377337 13.69267273 -0.47316343
		 -0.47316337 13.69267273 -0.34377331 -0.55623692 13.69267273 -0.18073232 -0.58486211 13.69267273 0
		 -0.55623692 13.69267273 0.18073232 -0.47316337 13.69267273 0.34377328 -0.34377328 13.69267273 0.47316331
		 -0.18073232 13.69267273 0.55623686 -1.7430244e-08 13.69267273 0.58486199 0.18073227 13.69267273 0.5562368
		 0.34377322 13.69267273 0.47316328 0.47316328 13.69267273 0.34377325 0.5562368 13.69267273 0.18073228
		 0.58486193 13.69267273 0 0 6.2612977 0 0 13.73870277 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_ColorChecker" -p "Lookdev_OverlayFull_grp";
	rename -uid "80107D30-4C13-2F57-C482-9E9F150495EE";
	setAttr ".rp" -type "double3" -3.9190760237162792 -0.025394547601006678 -8.5384841367083908 ;
	setAttr ".sp" -type "double3" -3.9190760237162792 -0.025394547601006678 -8.5384841367083908 ;
createNode mesh -n "Lookdev_ColorCheckerShape" -p "Lookdev_ColorChecker";
	rename -uid "A0BD7B04-48C6-00AA-6F4A-8D8A2A07275E";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 99 ".uvst[0].uvsp[0:98]" -type "float2" 0.022028999 0.73239398
		 0.179612 0.73239398 0.179612 0.968229 0.022028999 0.968229 0.33980599 0.269366 0.5
		 0.269366 0.5 0.5 0.33980599 0.5 0.98640102 0.269366 1 0.269366 1 0.5 0.98640102 0.5
		 0.022028999 0.269366 0.179612 0.269366 0.179612 0.5 0.022028999 0.5 0.33980599 0.98038697
		 0.5 0.98038697 0.5 1 0.33980599 1 0.66019398 0.269366 0.82038802 0.269366 0.82038802
		 0.5 0.66019398 0.5 0.98640102 0.98038697 0.99832302 0.98038697 0.99354798 0.990695
		 0.98640102 0.99758202 0.82038802 0.73239398 0.66019398 0.73239398 0.5 0.73239398
		 0.33980599 0.73239398 1 0.73239398 0.98640102 0.73239398 0.66019398 0.031771 0.82038802
		 0.031771 0.98640102 0.031771 1 0.031771 0.022028999 0.98038697 0.179612 0.98038697
		 0.179612 1 0.022028999 1 0.33980599 0.031771 0.5 0.031771 0.179612 0.031771 0.66019398
		 0.98038697 0.82038802 0.98038697 0.82038802 1 0.66019398 1 0.022028999 0.019613 0.022028999
		 0 0.179612 0 0.179612 0.019613 1 0.968229 0.98640102 0.968229 0.82038802 0.968229
		 0.66019398 0.968229 0.5 0.968229 0.33980599 0.968229 0.33980599 0.019613 0.5 0.019613
		 0.66019398 0.019613 0.82038802 0.019613 0.98640102 0.019613 0.99832302 0.019613 0.022028999
		 0.031771 0.97797102 0.031771 0.97797102 0.269366 0.97797102 0.5 0.97797102 0.73239398
		 0.97797102 0.968229 0.97797102 0.98038697 0.97797102 1 0.97797102 0.019613 0.013599
		 0.269366 0.013599 0.031771 0.013599 0.5 0.013599 0.73239398 0.013599 0.968229 0.013599
		 0.98038697 0.013599 0.99758202 0.013599 0.019613 0.013599 0.002418 0 0.269366 0 0.031771
		 0 0.5 0 0.73239398 0 0.968229 0.001677 0.98038697 0.0064519998 0.99069399 0.001677
		 0.019613 0.0064519998 0.0093059996 0.33980599 0 0.5 0 0.66019398 0 0.82038802 0 0.97797102
		 0 0.98640102 0.002418 0.99354798 0.0093059996;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 99 ".pt[0:98]" -type "float3"  -3.7799549 0.16088952 -8.0702553 
		-3.9190769 0.16088952 -8.0702553 -4.0581989 0.16088952 -8.0702553 -4.197319 0.16088952 
		-8.0702553 -3.9190769 -0.22431861 -9.0384827 -3.9190769 0.17352958 -8.0384827 -3.484848 
		-0.025394544 -8.5384827 -4.3533039 -0.025394544 -8.5384827 -3.9190769 -0.025394544 
		-8.5384827 -3.6408329 0.17352958 -8.0384827 -3.6408329 -0.22431861 -9.0384827 -3.6408329 
		-0.025394544 -8.5384827 -4.197319 -0.22431861 -9.0384827 -4.197319 0.17352958 -8.0384827 
		-4.197319 -0.025394544 -8.5384827 -4.3533039 0.067062989 -8.3060875 -3.9190769 0.067062989 
		-8.3060875 -3.484848 0.067062989 -8.3060875 -3.6408329 0.067062989 -8.3060875 -4.197319 
		0.067062989 -8.3060875 -3.484848 -0.1171519 -8.7691154 -4.3533039 -0.1171519 -8.7691154 
		-3.9190769 -0.1171519 -8.7691154 -3.6408329 -0.1171519 -8.7691154 -4.197319 -0.1171519 
		-8.7691154 -3.7799549 -0.22431861 -9.0384827 -3.7799549 0.17352958 -8.0384827 -3.7799549 
		-0.025394544 -8.5384827 -3.7799549 0.067062989 -8.3060875 -3.7799549 -0.1171519 -8.7691154 
		-4.0581989 0.17352958 -8.0384827 -4.0581989 -0.025394544 -8.5384827 -4.0581989 -0.22431861 
		-9.0384827 -4.0581989 0.067062989 -8.3060875 -4.0581989 -0.1171519 -8.7691154 -3.5039787 
		-0.22431861 -9.0384827 -3.484848 -0.21167861 -9.0067101 -3.4966602 -0.22335671 -9.0360641 
		-3.4904518 -0.22061633 -9.0291748 -3.4863052 -0.21651565 -9.0188713 -4.3533039 -0.21167861 
		-9.0067101 -4.3341732 -0.22431861 -9.0384827 -4.3518486 -0.21651565 -9.0188713 -4.3477001 
		-0.22061633 -9.0291748 -4.3414955 -0.22335671 -9.0360641 -3.484848 0.16088952 -8.0702553 
		-3.5039787 0.17352958 -8.0384827 -3.4863052 0.16572656 -8.058094 -3.4904518 0.16982718 
		-8.0477905 -3.4966602 0.17256756 -8.0409012 -4.3533039 0.16088952 -8.0702553 -4.3341732 
		0.17352958 -8.0384827 -4.3518486 0.16572656 -8.058094 -4.3477001 0.16982718 -8.0477905 
		-4.3414955 0.17256756 -8.0409012 -3.6408329 0.16088952 -8.0702553 -4.197319 -0.21167861 
		-9.0067101 -4.0581989 -0.21167861 -9.0067101 -3.9190769 -0.21167861 -9.0067101 -3.7799549 
		-0.21167861 -9.0067101 -3.6408329 -0.21167861 -9.0067101 -4.3341732 0.16088952 -8.0702553 
		-4.3341732 0.067062989 -8.3060875 -4.3341732 -0.025394544 -8.5384827 -4.3341732 -0.1171519 
		-8.7691154 -4.3341732 -0.21167861 -9.0067101 -3.5039787 0.16088952 -8.0702553 -3.5039787 
		0.067062989 -8.3060875 -3.5039787 -0.025394544 -8.5384827 -3.5039787 -0.1171519 -8.7691154 
		-3.5039787 -0.21167861 -9.0067101 -4.3341732 0.16572656 -8.058094 -4.197319 0.16572656 
		-8.058094 -4.0581989 0.16572656 -8.058094 -3.9190769 0.16572656 -8.058094 -3.7799549 
		0.16572656 -8.058094 -3.6408329 0.16572656 -8.058094 -3.5039787 0.16572656 -8.058094 
		-3.4966602 0.16572656 -8.058094 -3.4966602 0.16088952 -8.0702553 -3.4966602 0.067062989 
		-8.3060875 -3.4966602 -0.025394544 -8.5384827 -3.4966602 -0.1171519 -8.7691154 -3.4966602 
		-0.21167861 -9.0067101 -4.3341732 -0.21651565 -9.0188713 -4.197319 -0.21651565 -9.0188713 
		-4.0581989 -0.21651565 -9.0188713 -3.9190769 -0.21651565 -9.0188713 -3.7799549 -0.21651565 
		-9.0188713 -3.6408329 -0.21651565 -9.0188713 -3.5039787 -0.21651565 -9.0188713 -3.4966602 
		-0.21651565 -9.0188713 -4.3414955 0.16572656 -8.058094 -4.3414955 0.16088952 -8.0702553 
		-4.3414955 0.067062989 -8.3060875 -4.3414955 -0.025394544 -8.5384827 -4.3414955 -0.1171519 
		-8.7691154 -4.3414955 -0.21167861 -9.0067101 -4.3414955 -0.21651565 -9.0188713;
	setAttr -s 99 ".vt[0:98]"  -0.231041 0 -0.468229 0 0 -0.468229 0.231041 0 -0.468229
		 0.46208099 0 -0.468229 0 0 0.5 0 0 -0.5 -0.72112697 0 0 0.72112697 0 0 0 0 0 -0.46208099 0 -0.5
		 -0.46208099 0 0.5 -0.46208099 0 0 0.46208099 0 0.5 0.46208099 0 -0.5 0.46208099 0 0
		 0.72112697 0 -0.23239399 0 0 -0.23239399 -0.72112697 0 -0.23239399 -0.46208099 0 -0.23239399
		 0.46208099 0 -0.23239399 -0.72112697 0 0.230634 0.72112697 0 0.230634 0 0 0.230634
		 -0.46208099 0 0.230634 0.46208099 0 0.230634 -0.231041 0 0.5 -0.231041 0 -0.5 -0.231041 0 0
		 -0.231041 0 -0.23239399 -0.231041 0 0.230634 0.231041 0 -0.5 0.231041 0 0 0.231041 0 0.5
		 0.231041 0 -0.23239399 0.231041 0 0.230634 -0.68935603 0 0.5 -0.72112697 0 0.468229
		 -0.70151401 0 0.49758199 -0.71182102 0 0.49069399 -0.71870798 0 0.480387 0.72112697 0 0.468229
		 0.68935603 0 0.5 0.71870798 0 0.480387 0.71182102 0 0.49069399 0.70151401 0 0.49758199
		 -0.72112697 0 -0.468229 -0.68935603 0 -0.5 -0.71870798 0 -0.480387 -0.71182102 0 -0.49069399
		 -0.70151401 0 -0.49758199 0.72112697 0 -0.468229 0.68935603 0 -0.5 0.71870798 0 -0.480387
		 0.71182102 0 -0.49069399 0.70151401 0 -0.49758199 -0.46208099 0 -0.468229 0.46208099 0 0.468229
		 0.231041 0 0.468229 0 0 0.468229 -0.231041 0 0.468229 -0.46208099 0 0.468229 0.68935603 0 -0.468229
		 0.68935603 0 -0.23239399 0.68935603 0 0 0.68935603 0 0.230634 0.68935603 0 0.468229
		 -0.68935603 0 -0.468229 -0.68935603 0 -0.23239399 -0.68935603 0 0 -0.68935603 0 0.230634
		 -0.68935603 0 0.468229 0.68935603 0 -0.480387 0.46208099 0 -0.480387 0.231041 0 -0.480387
		 0 0 -0.480387 -0.231041 0 -0.480387 -0.46208099 0 -0.480387 -0.68935603 0 -0.480387
		 -0.70151401 0 -0.480387 -0.70151401 0 -0.468229 -0.70151401 0 -0.23239399 -0.70151401 0 0
		 -0.70151401 0 0.230634 -0.70151401 0 0.468229 0.68935603 0 0.480387 0.46208099 0 0.480387
		 0.231041 0 0.480387 0 0 0.480387 -0.231041 0 0.480387 -0.46208099 0 0.480387 -0.68935603 0 0.480387
		 -0.70151401 0 0.480387 0.70151401 0 -0.480387 0.70151401 0 -0.468229 0.70151401 0 -0.23239399
		 0.70151401 0 0 0.70151401 0 0.230634 0.70151401 0 0.468229 0.70151401 0 0.480387;
	setAttr -s 178 ".ed";
	setAttr ".ed[0:165]"  67 18 0 18 55 0 55 66 0 66 67 0 29 22 0 22 8 0 8 27 0
		 27 29 0 96 21 0 21 7 0 7 95 0 95 96 0 69 23 0 23 11 0 11 68 0 68 69 0 75 74 0 74 5 0
		 5 26 0 26 75 0 34 24 0 24 14 0 14 31 0 31 34 0 92 52 0 52 53 0 53 54 0 54 92 0 14 19 0
		 19 33 0 33 31 0 11 18 0 67 68 0 8 16 0 16 28 0 28 27 0 7 15 0 15 94 0 94 95 0 57 56 0
		 56 24 0 34 57 0 97 40 0 40 21 0 96 97 0 77 76 0 76 9 0 9 46 0 46 77 0 59 58 0 58 22 0
		 29 59 0 60 59 0 29 23 0 23 60 0 11 27 0 28 18 0 73 72 0 72 13 0 13 30 0 30 73 0 58 57 0
		 34 22 0 8 31 0 33 16 0 76 75 0 26 9 0 74 73 0 30 5 0 90 35 0 35 10 0 10 89 0 89 90 0
		 15 50 0 50 93 0 93 94 0 19 3 0 3 2 0 2 33 0 2 1 0 1 16 0 28 0 0 0 55 0 1 0 0 89 88 0
		 88 59 0 60 89 0 88 87 0 87 58 0 87 86 0 86 57 0 86 85 0 85 56 0 98 42 0 42 40 0 97 98 0
		 69 70 0 70 60 0 56 65 0 65 64 0 64 24 0 64 63 0 63 14 0 63 62 0 62 19 0 62 61 0 61 3 0
		 72 71 0 71 51 0 51 13 0 85 84 0 84 65 0 82 83 0 83 70 0 69 82 0 68 81 0 81 82 0 67 80 0
		 80 81 0 66 79 0 79 80 0 78 77 0 46 49 0 49 78 0 91 37 0 37 35 0 90 91 0 55 76 0 77 66 0
		 0 75 0 1 74 0 2 73 0 3 72 0 61 71 0 50 52 0 92 93 0 78 79 0 20 36 0 36 83 0 82 20 0
		 81 6 0 6 20 0 80 17 0 17 6 0 79 45 0 45 17 0 78 47 0 47 45 0 49 48 0 48 47 0 39 38 0
		 38 37 0 91 39 0 83 91 0 90 70 0 10 25 0 25 88 0 25 4 0 4 87 0 4 32 0 32 86 0 32 12 0
		 12 85 0 12 41 0 41 84 0 44 43 0;
	setAttr ".ed[166:177]" 43 42 0 98 44 0 36 39 0 84 98 0 97 65 0 96 64 0 95 63 0
		 94 62 0 93 61 0 92 71 0 54 51 0 41 44 0;
	setAttr -s 320 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119;
	setAttr ".n[166:319]" -type "float3"  0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15
		 2.51352119 0 -1.1162276e-15 2.51352119 0 -1.1162276e-15 2.51352119;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 15
		f 4 16 17 18 19
		mu 0 4 16 17 18 19
		f 4 20 21 22 23
		mu 0 4 20 21 22 23
		f 4 24 25 26 27
		mu 0 4 24 25 26 27
		f 4 -23 28 29 30
		mu 0 4 23 22 28 29
		f 4 -15 31 -1 32
		mu 0 4 15 14 1 0
		f 4 -7 33 34 35
		mu 0 4 7 6 30 31
		f 4 -11 36 37 38
		mu 0 4 11 10 32 33
		f 4 39 40 -21 41
		mu 0 4 34 35 21 20
		f 4 42 43 -9 44
		mu 0 4 36 37 9 8
		f 4 45 46 47 48
		mu 0 4 38 39 40 41
		f 4 49 50 -5 51
		mu 0 4 42 43 5 4
		f 4 52 -52 53 54
		mu 0 4 44 42 4 13
		f 4 55 -36 56 -32
		mu 0 4 14 7 31 1
		f 4 -54 -8 -56 -14
		mu 0 4 13 4 7 14
		f 4 57 58 59 60
		mu 0 4 45 46 47 48
		f 4 61 -42 62 -51
		mu 0 4 43 34 20 5
		f 4 63 -31 64 -34
		mu 0 4 6 23 29 30
		f 4 65 -20 66 -47
		mu 0 4 39 16 19 40
		f 4 -63 -24 -64 -6
		mu 0 4 5 20 23 6
		f 4 67 -61 68 -18
		mu 0 4 17 45 48 18
		f 4 69 70 71 72
		mu 0 4 49 50 51 52
		f 4 -38 73 74 75
		mu 0 4 33 32 53 54
		f 4 -30 76 77 78
		mu 0 4 29 28 55 56
		f 4 -65 -79 79 80
		mu 0 4 30 29 56 57
		f 4 -57 81 82 -2
		mu 0 4 1 31 58 2
		f 4 -35 -81 83 -82
		mu 0 4 31 30 57 58
		f 4 84 85 -53 86
		mu 0 4 52 59 42 44
		f 4 87 88 -50 -86
		mu 0 4 59 60 43 42
		f 4 89 90 -62 -89
		mu 0 4 60 61 34 43
		f 4 91 92 -40 -91
		mu 0 4 61 62 35 34
		f 4 93 94 -43 95
		mu 0 4 63 64 37 36
		f 4 96 97 -55 -13
		mu 0 4 12 65 44 13
		f 4 98 99 100 -41
		mu 0 4 35 66 67 21
		f 4 -101 101 102 -22
		mu 0 4 21 67 68 22
		f 4 -103 103 104 -29
		mu 0 4 22 68 69 28
		f 4 -105 105 106 -77
		mu 0 4 28 69 70 55
		f 4 107 108 109 -59
		mu 0 4 46 71 72 47
		f 4 110 111 -99 -93
		mu 0 4 62 73 66 35
		f 4 112 113 -97 114
		mu 0 4 74 75 65 12
		f 4 -115 -16 115 116
		mu 0 4 74 12 15 76
		f 4 -116 -33 117 118
		mu 0 4 76 15 0 77
		f 4 -118 -4 119 120
		mu 0 4 77 0 3 78
		f 4 121 -49 122 123
		mu 0 4 79 38 41 80
		f 4 124 125 -70 126
		mu 0 4 81 82 50 49
		f 4 -3 127 -46 128
		mu 0 4 3 2 39 38
		f 4 -83 129 -66 -128
		mu 0 4 2 58 16 39
		f 4 -84 130 -17 -130
		mu 0 4 58 57 17 16
		f 4 -80 131 -68 -131
		mu 0 4 57 56 45 17
		f 4 -78 132 -58 -132
		mu 0 4 56 55 46 45
		f 4 -107 133 -108 -133
		mu 0 4 55 70 71 46
		f 4 -75 134 -25 135
		mu 0 4 54 53 25 24
		f 4 -120 -129 -122 136
		mu 0 4 78 3 38 79
		f 4 137 138 -113 139
		mu 0 4 83 84 75 74
		f 4 -140 -117 140 141
		mu 0 4 83 74 76 85
		f 4 -141 -119 142 143
		mu 0 4 85 76 77 86
		f 4 -143 -121 144 145
		mu 0 4 86 77 78 87
		f 4 -145 -137 146 147
		mu 0 4 87 78 79 88
		f 4 -147 -124 148 149
		mu 0 4 88 79 80 89
		f 4 150 151 -125 152
		mu 0 4 90 91 82 81
		f 4 153 -127 154 -114
		mu 0 4 75 81 49 65
		f 4 -155 -73 -87 -98
		mu 0 4 65 49 52 44
		f 4 155 156 -85 -72
		mu 0 4 51 92 59 52
		f 4 157 158 -88 -157
		mu 0 4 92 93 60 59
		f 4 159 160 -90 -159
		mu 0 4 93 94 61 60
		f 4 161 162 -92 -161
		mu 0 4 94 95 62 61
		f 4 163 164 -111 -163
		mu 0 4 95 96 73 62
		f 4 165 166 -94 167
		mu 0 4 97 98 64 63
		f 4 168 -153 -154 -139
		mu 0 4 84 90 81 75
		f 4 169 -96 170 -112
		mu 0 4 73 63 36 66
		f 4 -171 -45 171 -100
		mu 0 4 66 36 8 67
		f 4 -172 -12 172 -102
		mu 0 4 67 8 11 68
		f 4 -173 -39 173 -104
		mu 0 4 68 11 33 69
		f 4 -174 -76 174 -106
		mu 0 4 69 33 54 70
		f 4 -175 -136 175 -134
		mu 0 4 70 54 24 71
		f 4 -176 -28 176 -109
		mu 0 4 71 24 27 72
		f 4 177 -168 -170 -165
		mu 0 4 96 97 63 73;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".rman_subdivScheme" 1;
createNode transform -n "Lookdev_Cam" -p "Lookdev_CAM_grp";
	rename -uid "9F941194-4A1B-B2AA-C652-308FA3BB1DE9";
	setAttr ".rp" -type "double3" 0 3.5527136788005009e-15 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005009e-15 2.8421709430404007e-14 ;
createNode camera -n "Lookdev_CamShape" -p "Lookdev_Cam";
	rename -uid "FAFA87A0-4AB8-5300-8CE4-4F964F68ECA4";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 50;
	setAttr ".coi" 370.08133225111789;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".tp" -type "double3" -3.939158095083847 22.780758024780091 123.59014959721593 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".lls" 10;
	setAttr ".dr" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode pointConstraint -n "Lookdev_Cam_pointConstraint1" -p "Lookdev_Cam";
	rename -uid "7CB523CE-4065-C5EC-AFC8-4E80FB20EB1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "locator1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -4.0686974132214675e-07 24.797966767514776 133.10299999999998 ;
	setAttr -k on ".w0";
createNode transform -n "transform1";
	rename -uid "0304496E-47B3-F34F-3B03-8882D89148D9";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints1" -p "transform1";
	rename -uid "C0BD8207-47F4-3258-CF4A-6F98F37332EB";
	setAttr -k off ".v";
	setAttr ".boundingBoxes" -type "vectorArray" 0 ;
	setAttr ".hio" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A789AAEA-4A23-2799-D83D-D8BA5CA3E4C8";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".ign";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "00ECB8A4-4B0B-9DFA-E629-D0A4A2E653F5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "28BD342B-49A1-9926-E30C-28838093B2BA";
createNode displayLayerManager -n "layerManager";
	rename -uid "DA846B2D-4927-D1B1-C6EB-6095195CE77C";
createNode displayLayer -n "defaultLayer";
	rename -uid "BDAFE2CC-46FC-F1EE-1149-C28B675936F4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C4DBF07B-47A7-FA83-3BBE-F084D05F4B1D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F0906C98-4D82-5983-D8EF-C4AE2B205A7B";
	setAttr ".g" yes;
createNode rmanGlobals -s -n "rmanGlobals";
	rename -uid "2151904D-4E30-CA9C-F7F5-5495B6745E4E";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".hider_minSamples" 0;
	setAttr ".hider_maxSamples" 128;
	setAttr ".ri_pixelVariance" 0.0099999997764825821;
	setAttr ".hider_darkfalloff" 0.02500000037252903;
	setAttr ".hider_incremental" yes;
	setAttr ".ipr_hider_maxSamples" 64;
	setAttr ".ipr_ri_pixelVariance" 0.05000000074505806;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".ri_displayFilter" -type "string" "gaussian";
	setAttr ".ri_displayFilterSize" -type "float2" 2 2 ;
	setAttr ".motionBlur" 0;
	setAttr ".cameraBlur" no;
	setAttr ".shutterAngle" 180;
	setAttr ".shutterOpenEnd" 0;
	setAttr ".shutterCloseStart" 1;
	setAttr ".shutterTiming" 0;
	setAttr ".motionSamples" 2;
	setAttr ".displayFilters[0]" -type "string" "";
	setAttr ".sampleFilters[0]" -type "string" "";
	setAttr ".outputAllShaders" no;
	setAttr ".reentrantProcedurals" yes;
	setAttr ".outputShadowAOV" 1;
	setAttr ".enableImagePlaneFilter" yes;
	setAttr ".learnLightSelection" no;
	setAttr ".ri_hider_adaptAll" no;
	setAttr ".adaptiveSampler" 0;
	setAttr ".opt_bucket_order" -type "string" "circle";
	setAttr ".limits_bucketsize" -type "long2" 16 16 ;
	setAttr ".limits_othreshold" -type "float3" 0.99599999 0.99599999 0.99599999 ;
	setAttr ".rfm_referenceFrame" 0;
	setAttr ".dice_micropolygonlength" 1;
	setAttr ".dice_watertight" no;
	setAttr ".dice_referenceCameraType" 0;
	setAttr ".dice_referenceCamera" -type "string" "";
	setAttr ".hair_minWidth" 0.5;
	setAttr ".trace_autobias" yes;
	setAttr ".trace_bias" 0.0010000000474974513;
	setAttr ".trace_worldorigin" -type "string" "camera";
	setAttr ".trace_worldoffset" -type "float3" 0 0 0 ;
	setAttr ".opt_oslSIMDEnable" yes;
	setAttr ".opt_oslVerbosity" 0;
	setAttr ".opt_oslStatistics" 0;
	setAttr ".deep_quality" 0.75;
	setAttr ".opt_cropWindowEnable" no;
	setAttr ".opt_cropWindowTopLeft" -type "float2" 0 0 ;
	setAttr ".opt_cropWindowBottomRight" -type "float2" 1 1 ;
	setAttr ".user_sceneUnits" 1;
	setAttr ".user_iesIgnoreWatts" yes;
	setAttr ".limits_texturememory" 4096;
	setAttr ".limits_geocachememory" 4096;
	setAttr ".limits_opacitycachememory" 2048;
	setAttr ".statistics_level" 1;
	setAttr ".statistics_xmlfilename" -type "string" "";
	setAttr ".lpe_reload_definitions" -type "string" "";
	setAttr ".lpe_diffuse2" -type "string" "Diffuse,HairDiffuse";
	setAttr ".lpe_diffuse3" -type "string" "Subsurface";
	setAttr ".lpe_specular2" -type "string" "Specular,HairSpecularR";
	setAttr ".lpe_specular3" -type "string" "RoughSpecular,HairSpecularTRT";
	setAttr ".lpe_specular4" -type "string" "Clearcoat";
	setAttr ".lpe_specular5" -type "string" "Iridescence";
	setAttr ".lpe_specular6" -type "string" "Fuzz,HairSpecularGLINTS";
	setAttr ".lpe_specular7" -type "string" "SingleScatter,HairSpecularTT";
	setAttr ".lpe_specular8" -type "string" "Glass";
	setAttr ".lpe_user2" -type "string" "Albedo,DiffuseAlbedo,SubsurfaceAlbedo,HairAlbedo";
	setAttr ".lpe_user3" -type "string" "Position";
	setAttr ".lpe_user4" -type "string" "UserColor";
	setAttr ".lpe_user5" -type "string" "";
	setAttr ".lpe_user6" -type "string" "DiffuseNormal,HairTangent,SubsurfaceNormal,SpecularNormal,RoughSpecularNormal,SingleScatterNormal,FuzzNormal,IridescenceNormal,GlassNormal";
	setAttr ".lpe_user7" -type "string" "";
	setAttr ".lpe_user8" -type "string" "";
	setAttr ".lpe_user9" -type "string" "";
	setAttr ".lpe_user10" -type "string" "";
	setAttr ".lpe_user11" -type "string" "";
	setAttr ".lpe_user12" -type "string" "";
	setAttr ".imageFileFormat" -type "string" "<scene>_<layer>_<camera>_<aov>.<f4>.<ext>";
	setAttr ".ribFileFormat" -type "string" "<camera><layer>.<f4>.rib";
	setAttr ".version" 1;
	setAttr ".take" 1;
	setAttr ".imageOutputDir" -type "string" "<ws>/images/<scene>_v<version>_t<take>";
	setAttr ".ribOutputDir" -type "string" "<ws>/renderman/rib/<scene>/v<version>_t<take>";
	setAttr -s 10 ".UserTokens";
	setAttr ".UserTokens[0].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[0].userTokenValues" -type "string" "";
	setAttr ".UserTokens[1].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[1].userTokenValues" -type "string" "";
	setAttr ".UserTokens[2].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[2].userTokenValues" -type "string" "";
	setAttr ".UserTokens[3].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[3].userTokenValues" -type "string" "";
	setAttr ".UserTokens[4].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[4].userTokenValues" -type "string" "";
	setAttr ".UserTokens[5].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[5].userTokenValues" -type "string" "";
	setAttr ".UserTokens[6].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[6].userTokenValues" -type "string" "";
	setAttr ".UserTokens[7].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[7].userTokenValues" -type "string" "";
	setAttr ".UserTokens[8].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[8].userTokenValues" -type "string" "";
	setAttr ".UserTokens[9].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[9].userTokenValues" -type "string" "";
	setAttr ".rlfData" -type "string" "init";
	setAttr ".jobid" -type "string" "";
createNode rmanDisplay -s -n "rmanDefaultDisplay";
	rename -uid "8B4C8C29-46CC-F386-3F33-DBAFE6B44C2E";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".denoise" no;
	setAttr ".frameMode" 0;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr -s 2 ".displayChannels";
	setAttr ".name" -type "string" "";
createNode d_openexr -n "d_openexr";
	rename -uid "329A0EEE-4B56-7D6B-1858-C7ACDE695250";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".asrgba" yes;
	setAttr ".storage" -type "string" "scanline";
	setAttr ".exrpixeltype" -type "string" "half";
	setAttr ".compression" -type "string" "zips";
	setAttr ".compressionlevel" 45;
createNode rmanDisplayChannel -n "Ci";
	rename -uid "44F9C133-4B05-2083-DB22-9C848BEA754B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "color";
	setAttr ".channelSource" -type "string" "Ci";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "";
createNode rmanDisplayChannel -n "a";
	rename -uid "36072EDA-4407-308C-360D-2EA20E8F6965";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "float";
	setAttr ".channelSource" -type "string" "a";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "";
createNode PxrPathTracer -s -n "PxrPathTracer";
	rename -uid "F1CE3D4F-4010-D09B-A9A2-7592710AB52F";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxPathLength" 10;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "FEC66AF0-4FC1-16FF-D2FE-2CA0BB1D8B0E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1018\n            -height 693\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 995\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"Lookdev_CamShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 994\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"rmanNodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"rmanNodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"Lookdev_CamShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 995\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 995\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Lookdev_CamShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 994\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"Lookdev_CamShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 994\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "414AA38F-4556-635A-34FB-2A8261C86031";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode PxrSurface -n "_Lookdev_Grey_Surface";
	rename -uid "607310F0-48A7-A797-B9DA-9E946B7F10A2";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 1;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularModelType" 0;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 1;
	setAttr ".clearcoatEnergyCompensation" 1;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceAnisotropy" 0;
	setAttr ".iridescenceAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".iridescenceBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassAnisotropy" 0;
	setAttr ".glassAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".glassBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".blocksVolumes" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" no;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_Grey_SG";
	rename -uid "437E135B-4BBD-5475-FB5F-DDA475EABA04";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "675C9B77-46DC-4A7A-520B-16B7224809BC";
createNode lambert -n "lambert2";
	rename -uid "CF42ED67-4F55-4237-AF6A-5DB297D711CA";
createNode PxrSurface -n "_Lookdev_ColorChecker_Surface";
	rename -uid "68C3F620-4FB7-2E69-8E5A-499CBB305740";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularModelType" 0;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 1;
	setAttr ".clearcoatEnergyCompensation" 1;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceAnisotropy" 0;
	setAttr ".iridescenceAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".iridescenceBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassAnisotropy" 0;
	setAttr ".glassAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".glassBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".blocksVolumes" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" no;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_ColorChecker_SG";
	rename -uid "81A81FD1-4982-6E23-2897-6EAC082D0323";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "123FA8D9-41FE-FBEC-B9E5-009B74FC5E0D";
createNode lambert -n "lambert3";
	rename -uid "221AA33D-48CB-F95C-CF37-27972641F2F7";
createNode PxrTexture -n "_Lookdev_ColorChecker_Texture";
	rename -uid "6B78235C-48DA-BAA6-7069-29B0CD32DDA1";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".filename" -type "string" "C:/Users/3D3/Documents/maya/2019/scripts/AutoLookdev_Rman_v01_0/DefaultColorChecker.png.tex";
	setAttr ".firstChannel" 0;
	setAttr ".atlasStyle" 0;
	setAttr ".invertT" yes;
	setAttr ".filter" 1;
	setAttr ".blur" 0;
	setAttr ".lerp" yes;
	setAttr ".missingColor" -type "float3" 1 0 1 ;
	setAttr ".missingAlpha" 1;
	setAttr ".linearize" yes;
	setAttr ".manifold" -type "string" "";
	setAttr ".colorScale" -type "float3" 1 1 1 ;
	setAttr ".colorOffset" -type "float3" 0 0 0 ;
	setAttr ".saturation" 1;
	setAttr ".alphaScale" 1;
	setAttr ".alphaOffset" 0;
	setAttr ".mipBias" 0;
	setAttr ".maxResolution" 0;
	setAttr ".optimizeIndirect" yes;
createNode PxrSurface -n "_Lookdev_ChromeBall_Surface";
	rename -uid "BE512082-498D-F9A9-4180-4A9C1F8C645F";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 0;
	setAttr ".diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 1;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 1 1 1 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.097 1.097 1.097 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 6.7940001 6.7940001 6.7940001 ;
	setAttr ".specularRoughness" 0;
	setAttr ".specularModelType" 1;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 1;
	setAttr ".clearcoatEnergyCompensation" 1;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceAnisotropy" 0;
	setAttr ".iridescenceAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".iridescenceBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassAnisotropy" 0;
	setAttr ".glassAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".glassBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".blocksVolumes" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" no;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_ChromeBall_SG";
	rename -uid "CC24493A-4FF8-F0D3-B70D-A0BD64B8E8AB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "987F3DC5-440D-C30C-E3BA-919FE1DD37FB";
createNode lambert -n "lambert4";
	rename -uid "D16EFF0E-45B7-BB52-A1AC-75887A639AA6";
createNode PxrSurface -n "_Lookdev_BlackBall_Surface";
	rename -uid "DD610608-4B2C-3491-4C99-31A816CE4DCF";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0.015 0.015 0.015 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularModelType" 0;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 1;
	setAttr ".clearcoatEnergyCompensation" 1;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceAnisotropy" 0;
	setAttr ".iridescenceAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".iridescenceBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassAnisotropy" 0;
	setAttr ".glassAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".glassBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".blocksVolumes" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" no;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_BlackBall_SG";
	rename -uid "5295BEF1-4203-AA4E-FCC9-C893588F0CFD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "A989F3E1-462E-6628-F673-B286EC751CEB";
createNode lambert -n "lambert5";
	rename -uid "A6556219-4B97-DB80-063B-9181D0B26674";
createNode PxrSurface -n "_Lookdev_WhiteBall_Surface";
	rename -uid "531C71CA-4338-8B29-DBAB-029BC8014D3E";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0.85000002 0.85000002 0.85000002 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularModelType" 0;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 1;
	setAttr ".clearcoatEnergyCompensation" 1;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceAnisotropy" 0;
	setAttr ".iridescenceAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".iridescenceBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassAnisotropy" 0;
	setAttr ".glassAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".glassBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".blocksVolumes" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" no;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_WhiteBall_SG";
	rename -uid "DAB373ED-4A0A-3D25-FF96-0FABE7FF644F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "3EC164C8-4EC4-22FD-9C9D-F78A7ECA4646";
createNode lambert -n "lambert6";
	rename -uid "1CEA1A81-40A6-CDF2-9F5F-9BB6FE29F581";
createNode lightEditor -n "lightEditor";
	rename -uid "88A6C6A1-466B-7BD0-07CC-CAB5ADEE68D1";
createNode lightItem -n "Lookdev_KeytLightShape__LEItem";
	rename -uid "4C4F9ED4-4E48-8275-458E-3CA5914C0946";
createNode lightItem -n "Lookdev_DomelightShape__LEItem";
	rename -uid "B0D373BA-4319-4612-77FD-ED84E9112502";
createNode lightItem -n "Lookdev_RimLightShape__LEItem";
	rename -uid "5F379F21-4F6C-4BB3-036A-65880DB0CC2C";
createNode renderSetup -n "renderSetup";
	rename -uid "2263D8BE-445D-89C0-34CB-12A8AE5F5909";
createNode PxrLayerSurface -n "_Lookdev_BG_LayerSurface";
	rename -uid "F5312D42-4565-4DE8-616C-379E39B12804";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputMaterial" 0;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseExponent" 1;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseDoubleSided" no;
	setAttr ".diffuseBackUseDiffuseColor" yes;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".specularFresnelMode" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularFresnelShape" 5;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularModelType" 0;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".specularDoubleSided" no;
	setAttr ".roughSpecularFresnelMode" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularFresnelShape" 5;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularModelType" 0;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularDoubleSided" no;
	setAttr ".clearcoatFresnelMode" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatFresnelShape" 5;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatModelType" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatAnisotropyDirection" -type "float3" 0 0 0 ;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".clearcoatDoubleSided" no;
	setAttr ".specularEnergyCompensation" 0;
	setAttr ".clearcoatEnergyCompensation" 0;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescenceFresnelShape" 5;
	setAttr ".iridescenceMode" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".iridescenceCurve" 1;
	setAttr ".iridescenceScale" 1;
	setAttr ".iridescenceFlip" no;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceDoubleSided" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".fuzzDoubleSided" no;
	setAttr ".subsurfaceType" 0;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfaceDirectionality" 0;
	setAttr ".subsurfaceBleed" 0;
	setAttr ".subsurfaceDiffuseBlend" 0;
	setAttr ".subsurfaceResolveSelfIntersections" no;
	setAttr ".subsurfaceIor" 1.3999999761581421;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceDiffuseSwitch" 1;
	setAttr ".subsurfaceDoubleSided" no;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".considerBackside" yes;
	setAttr ".continuationRayMode" 0;
	setAttr ".maxContinuationHits" 2;
	setAttr ".followTopology" 0;
	setAttr ".subsurfaceSubset" -type "string" "";
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".singlescatterDoubleSided" no;
	setAttr ".singlescatterConsiderBackside" yes;
	setAttr ".singlescatterContinuationRayMode" 0;
	setAttr ".singlescatterMaxContinuationHits" 2;
	setAttr ".singlescatterDirectGainMode" 0;
	setAttr ".singlescatterSubset" -type "string" "";
	setAttr ".irradianceTint" -type "float3" 1 1 1 ;
	setAttr ".irradianceRoughness" 0;
	setAttr ".unitLength" 0.10000000149011612;
	setAttr ".refractionGain" 0;
	setAttr ".reflectionGain" 0;
	setAttr ".refractionColor" -type "float3" 1 1 1 ;
	setAttr ".glassRoughness" 0.10000000149011612;
	setAttr ".glassIor" 1.5;
	setAttr ".mwWalkable" no;
	setAttr ".mwIor" -1;
	setAttr ".thinGlass" no;
	setAttr ".ignoreFresnel" no;
	setAttr ".ignoreAccumOpacity" no;
	setAttr ".ssAlbedo" -type "float3" 0 0 0 ;
	setAttr ".extinction" -type "float3" 0 0 0 ;
	setAttr ".g" 0;
	setAttr ".multiScatter" 0;
	setAttr ".enableOverlappingVolumes" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".shadowColor" -type "float3" 0 0 0 ;
	setAttr ".shadowMode" 0;
	setAttr ".presence" 1;
	setAttr ".presenceCached" 1;
	setAttr ".mwStartable" no;
	setAttr ".roughnessMollificationClamp" 32;
	setAttr ".userColor" -type "float3" 0 0 0 ;
	setAttr ".utilityPattern[0]"  0;
createNode shadingEngine -n "_Lookdev_BG_SG";
	rename -uid "A201479B-460A-D89E-D150-D29FCBA3FBCA";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "00B9F55C-46DC-8D44-67EE-7FA9A6CB543A";
createNode lambert -n "lambert7";
	rename -uid "12A0B936-4D7C-FD77-09B1-6B86044E2AF4";
createNode PxrLayerMixer -n "_Lookdev_BG_LayerMixer";
	rename -uid "2D9846F2-40BC-8206-6BD4-3B85991957DB";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enableDiffuseAlways" 1;
	setAttr ".baselayer" 0;
	setAttr ".baselayer_bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableDiffuse" 0;
	setAttr ".baselayer_diffuseGain" 0;
	setAttr ".baselayer_diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_diffuseRoughness" 0;
	setAttr ".baselayer_diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_diffuseBackColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_diffuseTransmitGain" 0;
	setAttr ".baselayer_diffuseTransmitColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableSpecular" 0;
	setAttr ".baselayer_specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_specularIor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".baselayer_specularRoughness" 0.20000000298023224;
	setAttr ".baselayer_specularAnisotropy" 0;
	setAttr ".baselayer_specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableRoughSpecular" 0;
	setAttr ".baselayer_roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_roughSpecularIor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".baselayer_roughSpecularRoughness" 0.60000002384185791;
	setAttr ".baselayer_roughSpecularAnisotropy" 0;
	setAttr ".baselayer_roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableClearcoat" 0;
	setAttr ".baselayer_clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_clearcoatIor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".baselayer_clearcoatRoughness" 0;
	setAttr ".baselayer_clearcoatAnisotropy" 0;
	setAttr ".baselayer_clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_clearcoatThickness" 0;
	setAttr ".baselayer_clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableIridescence" 0;
	setAttr ".baselayer_iridescenceFaceGain" 0;
	setAttr ".baselayer_iridescenceEdgeGain" 0;
	setAttr ".baselayer_iridescencePrimaryColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_iridescenceSecondaryColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_iridescenceThickness" 0;
	setAttr ".baselayer_iridescenceRoughness" 0.20000000298023224;
	setAttr ".baselayer_enableFuzz" 0;
	setAttr ".baselayer_fuzzGain" 0;
	setAttr ".baselayer_fuzzColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_fuzzConeAngle" 0;
	setAttr ".baselayer_fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".baselayer_enableRR" 0;
	setAttr ".baselayer_refractionGain" 0;
	setAttr ".baselayer_refractionColor" -type "float3" 1 1 1 ;
	setAttr ".baselayer_reflectionGain" 0;
	setAttr ".baselayer_glassRoughness" 0.10000000149011612;
	setAttr ".baselayer_glassIor" 1.5;
	setAttr ".baselayer_enableSubsurface" 0;
	setAttr ".baselayer_subsurfaceGain" 0;
	setAttr ".baselayer_subsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_subsurfaceDmfp" 1;
	setAttr ".baselayer_subsurfaceDmfpColor" -type "float3" 1 1 1 ;
	setAttr ".baselayer_shortSubsurfaceGain" 0;
	setAttr ".baselayer_shortSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_shortSubsurfaceDmfp" 1;
	setAttr ".baselayer_longSubsurfaceGain" 0;
	setAttr ".baselayer_longSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_longSubsurfaceDmfp" 1;
	setAttr ".baselayer_subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".baselayer_subsurfaceTransmitGain" 0;
	setAttr ".baselayer_enableSinglescatter" 0;
	setAttr ".baselayer_singlescatterGain" 0;
	setAttr ".baselayer_singlescatterColor" -type "float3" 0 0 0 ;
	setAttr ".baselayer_singlescatterMfp" 1;
	setAttr ".baselayer_singlescatterMfpColor" -type "float3" 1 1 1 ;
	setAttr ".baselayer_singlescatterDirectionality" 0;
	setAttr ".baselayer_singlescatterIor" 0;
	setAttr ".baselayer_singlescatterBlur" 0;
	setAttr ".baselayer_singlescatterDirectGain" 0;
	setAttr ".baselayer_singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".baselayer_enableGlow" 0;
	setAttr ".baselayer_glowGain" 0;
	setAttr ".baselayer_glowColor" -type "float3" 0 0 0 ;
	setAttr ".layer1Enabled" yes;
	setAttr ".layer1" 0;
	setAttr ".layer1_bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableDiffuse" 0;
	setAttr ".layer1_diffuseGain" 0;
	setAttr ".layer1_diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_diffuseRoughness" 0;
	setAttr ".layer1_diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_diffuseBackColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_diffuseTransmitGain" 0;
	setAttr ".layer1_diffuseTransmitColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableSpecular" 0;
	setAttr ".layer1_specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_specularIor" -type "float3" 0 0 0 ;
	setAttr ".layer1_specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer1_specularRoughness" 0.20000000298023224;
	setAttr ".layer1_specularAnisotropy" 0;
	setAttr ".layer1_specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableRoughSpecular" 0;
	setAttr ".layer1_roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_roughSpecularIor" -type "float3" 0 0 0 ;
	setAttr ".layer1_roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer1_roughSpecularRoughness" 0.60000002384185791;
	setAttr ".layer1_roughSpecularAnisotropy" 0;
	setAttr ".layer1_roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableClearcoat" 0;
	setAttr ".layer1_clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_clearcoatIor" -type "float3" 0 0 0 ;
	setAttr ".layer1_clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer1_clearcoatRoughness" 0;
	setAttr ".layer1_clearcoatAnisotropy" 0;
	setAttr ".layer1_clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_clearcoatThickness" 0;
	setAttr ".layer1_clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableIridescence" 0;
	setAttr ".layer1_iridescenceFaceGain" 0;
	setAttr ".layer1_iridescenceEdgeGain" 0;
	setAttr ".layer1_iridescencePrimaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_iridescenceSecondaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_iridescenceThickness" 0;
	setAttr ".layer1_iridescenceRoughness" 0.20000000298023224;
	setAttr ".layer1_enableFuzz" 0;
	setAttr ".layer1_fuzzGain" 0;
	setAttr ".layer1_fuzzColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_fuzzConeAngle" 0;
	setAttr ".layer1_fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer1_enableRR" 0;
	setAttr ".layer1_refractionGain" 0;
	setAttr ".layer1_refractionColor" -type "float3" 1 1 1 ;
	setAttr ".layer1_reflectionGain" 0;
	setAttr ".layer1_glassRoughness" 0.10000000149011612;
	setAttr ".layer1_glassIor" 1.5;
	setAttr ".layer1_enableSubsurface" 0;
	setAttr ".layer1_subsurfaceGain" 0;
	setAttr ".layer1_subsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_subsurfaceDmfp" 1;
	setAttr ".layer1_subsurfaceDmfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer1_shortSubsurfaceGain" 0;
	setAttr ".layer1_shortSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_shortSubsurfaceDmfp" 1;
	setAttr ".layer1_longSubsurfaceGain" 0;
	setAttr ".layer1_longSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_longSubsurfaceDmfp" 1;
	setAttr ".layer1_subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".layer1_subsurfaceTransmitGain" 0;
	setAttr ".layer1_enableSinglescatter" 0;
	setAttr ".layer1_singlescatterGain" 0;
	setAttr ".layer1_singlescatterColor" -type "float3" 0 0 0 ;
	setAttr ".layer1_singlescatterMfp" 1;
	setAttr ".layer1_singlescatterMfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer1_singlescatterDirectionality" 0;
	setAttr ".layer1_singlescatterIor" 0;
	setAttr ".layer1_singlescatterBlur" 0;
	setAttr ".layer1_singlescatterDirectGain" 0;
	setAttr ".layer1_singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".layer1_enableGlow" 0;
	setAttr ".layer1_glowGain" 0;
	setAttr ".layer1_glowColor" -type "float3" 0 0 0 ;
	setAttr ".layer1Mask" 0;
	setAttr ".layer2Enabled" no;
	setAttr ".layer2" 0;
	setAttr ".layer2_bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableDiffuse" 0;
	setAttr ".layer2_diffuseGain" 0;
	setAttr ".layer2_diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_diffuseRoughness" 0;
	setAttr ".layer2_diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_diffuseBackColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_diffuseTransmitGain" 0;
	setAttr ".layer2_diffuseTransmitColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableSpecular" 0;
	setAttr ".layer2_specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_specularIor" -type "float3" 0 0 0 ;
	setAttr ".layer2_specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer2_specularRoughness" 0.20000000298023224;
	setAttr ".layer2_specularAnisotropy" 0;
	setAttr ".layer2_specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableRoughSpecular" 0;
	setAttr ".layer2_roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_roughSpecularIor" -type "float3" 0 0 0 ;
	setAttr ".layer2_roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer2_roughSpecularRoughness" 0.60000002384185791;
	setAttr ".layer2_roughSpecularAnisotropy" 0;
	setAttr ".layer2_roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableClearcoat" 0;
	setAttr ".layer2_clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_clearcoatIor" -type "float3" 0 0 0 ;
	setAttr ".layer2_clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer2_clearcoatRoughness" 0;
	setAttr ".layer2_clearcoatAnisotropy" 0;
	setAttr ".layer2_clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_clearcoatThickness" 0;
	setAttr ".layer2_clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableIridescence" 0;
	setAttr ".layer2_iridescenceFaceGain" 0;
	setAttr ".layer2_iridescenceEdgeGain" 0;
	setAttr ".layer2_iridescencePrimaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_iridescenceSecondaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_iridescenceThickness" 0;
	setAttr ".layer2_iridescenceRoughness" 0.20000000298023224;
	setAttr ".layer2_enableFuzz" 0;
	setAttr ".layer2_fuzzGain" 0;
	setAttr ".layer2_fuzzColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_fuzzConeAngle" 0;
	setAttr ".layer2_fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer2_enableRR" 0;
	setAttr ".layer2_refractionGain" 0;
	setAttr ".layer2_refractionColor" -type "float3" 1 1 1 ;
	setAttr ".layer2_reflectionGain" 0;
	setAttr ".layer2_glassRoughness" 0.10000000149011612;
	setAttr ".layer2_glassIor" 1.5;
	setAttr ".layer2_enableSubsurface" 0;
	setAttr ".layer2_subsurfaceGain" 0;
	setAttr ".layer2_subsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_subsurfaceDmfp" 1;
	setAttr ".layer2_subsurfaceDmfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer2_shortSubsurfaceGain" 0;
	setAttr ".layer2_shortSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_shortSubsurfaceDmfp" 1;
	setAttr ".layer2_longSubsurfaceGain" 0;
	setAttr ".layer2_longSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_longSubsurfaceDmfp" 1;
	setAttr ".layer2_subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".layer2_subsurfaceTransmitGain" 0;
	setAttr ".layer2_enableSinglescatter" 0;
	setAttr ".layer2_singlescatterGain" 0;
	setAttr ".layer2_singlescatterColor" -type "float3" 0 0 0 ;
	setAttr ".layer2_singlescatterMfp" 1;
	setAttr ".layer2_singlescatterMfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer2_singlescatterDirectionality" 0;
	setAttr ".layer2_singlescatterIor" 0;
	setAttr ".layer2_singlescatterBlur" 0;
	setAttr ".layer2_singlescatterDirectGain" 0;
	setAttr ".layer2_singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".layer2_enableGlow" 0;
	setAttr ".layer2_glowGain" 0;
	setAttr ".layer2_glowColor" -type "float3" 0 0 0 ;
	setAttr ".layer2Mask" 1;
	setAttr ".layer3Enabled" no;
	setAttr ".layer3" 0;
	setAttr ".layer3_bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableDiffuse" 0;
	setAttr ".layer3_diffuseGain" 0;
	setAttr ".layer3_diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_diffuseRoughness" 0;
	setAttr ".layer3_diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_diffuseBackColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_diffuseTransmitGain" 0;
	setAttr ".layer3_diffuseTransmitColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableSpecular" 0;
	setAttr ".layer3_specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_specularIor" -type "float3" 0 0 0 ;
	setAttr ".layer3_specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer3_specularRoughness" 0.20000000298023224;
	setAttr ".layer3_specularAnisotropy" 0;
	setAttr ".layer3_specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableRoughSpecular" 0;
	setAttr ".layer3_roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_roughSpecularIor" -type "float3" 0 0 0 ;
	setAttr ".layer3_roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer3_roughSpecularRoughness" 0.60000002384185791;
	setAttr ".layer3_roughSpecularAnisotropy" 0;
	setAttr ".layer3_roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableClearcoat" 0;
	setAttr ".layer3_clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_clearcoatIor" -type "float3" 0 0 0 ;
	setAttr ".layer3_clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer3_clearcoatRoughness" 0;
	setAttr ".layer3_clearcoatAnisotropy" 0;
	setAttr ".layer3_clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_clearcoatThickness" 0;
	setAttr ".layer3_clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableIridescence" 0;
	setAttr ".layer3_iridescenceFaceGain" 0;
	setAttr ".layer3_iridescenceEdgeGain" 0;
	setAttr ".layer3_iridescencePrimaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_iridescenceSecondaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_iridescenceThickness" 0;
	setAttr ".layer3_iridescenceRoughness" 0.20000000298023224;
	setAttr ".layer3_enableFuzz" 0;
	setAttr ".layer3_fuzzGain" 0;
	setAttr ".layer3_fuzzColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_fuzzConeAngle" 0;
	setAttr ".layer3_fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer3_enableRR" 0;
	setAttr ".layer3_refractionGain" 0;
	setAttr ".layer3_refractionColor" -type "float3" 1 1 1 ;
	setAttr ".layer3_reflectionGain" 0;
	setAttr ".layer3_glassRoughness" 0.10000000149011612;
	setAttr ".layer3_glassIor" 1.5;
	setAttr ".layer3_enableSubsurface" 0;
	setAttr ".layer3_subsurfaceGain" 0;
	setAttr ".layer3_subsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_subsurfaceDmfp" 1;
	setAttr ".layer3_subsurfaceDmfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer3_shortSubsurfaceGain" 0;
	setAttr ".layer3_shortSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_shortSubsurfaceDmfp" 1;
	setAttr ".layer3_longSubsurfaceGain" 0;
	setAttr ".layer3_longSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_longSubsurfaceDmfp" 1;
	setAttr ".layer3_subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".layer3_subsurfaceTransmitGain" 0;
	setAttr ".layer3_enableSinglescatter" 0;
	setAttr ".layer3_singlescatterGain" 0;
	setAttr ".layer3_singlescatterColor" -type "float3" 0 0 0 ;
	setAttr ".layer3_singlescatterMfp" 1;
	setAttr ".layer3_singlescatterMfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer3_singlescatterDirectionality" 0;
	setAttr ".layer3_singlescatterIor" 0;
	setAttr ".layer3_singlescatterBlur" 0;
	setAttr ".layer3_singlescatterDirectGain" 0;
	setAttr ".layer3_singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".layer3_enableGlow" 0;
	setAttr ".layer3_glowGain" 0;
	setAttr ".layer3_glowColor" -type "float3" 0 0 0 ;
	setAttr ".layer3Mask" 1;
	setAttr ".layer4Enabled" no;
	setAttr ".layer4" 0;
	setAttr ".layer4_bumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableDiffuse" 0;
	setAttr ".layer4_diffuseGain" 0;
	setAttr ".layer4_diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_diffuseRoughness" 0;
	setAttr ".layer4_diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_diffuseBackColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_diffuseTransmitGain" 0;
	setAttr ".layer4_diffuseTransmitColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableSpecular" 0;
	setAttr ".layer4_specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_specularIor" -type "float3" 0 0 0 ;
	setAttr ".layer4_specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer4_specularRoughness" 0.20000000298023224;
	setAttr ".layer4_specularAnisotropy" 0;
	setAttr ".layer4_specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableRoughSpecular" 0;
	setAttr ".layer4_roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_roughSpecularIor" -type "float3" 0 0 0 ;
	setAttr ".layer4_roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer4_roughSpecularRoughness" 0.60000002384185791;
	setAttr ".layer4_roughSpecularAnisotropy" 0;
	setAttr ".layer4_roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableClearcoat" 0;
	setAttr ".layer4_clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_clearcoatIor" -type "float3" 0 0 0 ;
	setAttr ".layer4_clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".layer4_clearcoatRoughness" 0;
	setAttr ".layer4_clearcoatAnisotropy" 0;
	setAttr ".layer4_clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_clearcoatThickness" 0;
	setAttr ".layer4_clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableIridescence" 0;
	setAttr ".layer4_iridescenceFaceGain" 0;
	setAttr ".layer4_iridescenceEdgeGain" 0;
	setAttr ".layer4_iridescencePrimaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_iridescenceSecondaryColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_iridescenceThickness" 0;
	setAttr ".layer4_iridescenceRoughness" 0.20000000298023224;
	setAttr ".layer4_enableFuzz" 0;
	setAttr ".layer4_fuzzGain" 0;
	setAttr ".layer4_fuzzColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_fuzzConeAngle" 0;
	setAttr ".layer4_fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".layer4_enableRR" 0;
	setAttr ".layer4_refractionGain" 0;
	setAttr ".layer4_refractionColor" -type "float3" 1 1 1 ;
	setAttr ".layer4_reflectionGain" 0;
	setAttr ".layer4_glassRoughness" 0.10000000149011612;
	setAttr ".layer4_glassIor" 1.5;
	setAttr ".layer4_enableSubsurface" 0;
	setAttr ".layer4_subsurfaceGain" 0;
	setAttr ".layer4_subsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_subsurfaceDmfp" 1;
	setAttr ".layer4_subsurfaceDmfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer4_shortSubsurfaceGain" 0;
	setAttr ".layer4_shortSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_shortSubsurfaceDmfp" 1;
	setAttr ".layer4_longSubsurfaceGain" 0;
	setAttr ".layer4_longSubsurfaceColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_longSubsurfaceDmfp" 1;
	setAttr ".layer4_subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".layer4_subsurfaceTransmitGain" 0;
	setAttr ".layer4_enableSinglescatter" 0;
	setAttr ".layer4_singlescatterGain" 0;
	setAttr ".layer4_singlescatterColor" -type "float3" 0 0 0 ;
	setAttr ".layer4_singlescatterMfp" 1;
	setAttr ".layer4_singlescatterMfpColor" -type "float3" 1 1 1 ;
	setAttr ".layer4_singlescatterDirectionality" 0;
	setAttr ".layer4_singlescatterIor" 0;
	setAttr ".layer4_singlescatterBlur" 0;
	setAttr ".layer4_singlescatterDirectGain" 0;
	setAttr ".layer4_singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".layer4_enableGlow" 0;
	setAttr ".layer4_glowGain" 0;
	setAttr ".layer4_glowColor" -type "float3" 0 0 0 ;
	setAttr ".layer4Mask" 1;
createNode PxrLayer -n "_Lookdev_BG_BaseLayer";
	rename -uid "741B0D61-43B7-EEF1-4194-D4BCF80BA08A";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enableDiffuseAlways" 1;
	setAttr ".enableDiffuse" yes;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0.02 0.02 0.02 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".enableSpecular" no;
	setAttr ".specularGain" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableRoughSpecular" no;
	setAttr ".roughSpecularGain" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableClearcoat" no;
	setAttr ".clearcoatGain" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".enableIridescence" no;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".enableFuzz" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableSubsurface" no;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".enableSinglescatter" no;
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".enableRR" no;
	setAttr ".rrRefractionGain" 0;
	setAttr ".rrReflectionGain" 0;
	setAttr ".rrRefractionColor" -type "float3" 1 1 1 ;
	setAttr ".rrRoughness" 0.10000000149011612;
	setAttr ".rrIor" 1.5;
	setAttr ".enableGlow" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
createNode PxrLayer -n "_Lookdev_BG_GridLayer";
	rename -uid "0D2C448B-4FFD-084E-5066-B3BBE3F70D31";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enableDiffuseAlways" 1;
	setAttr ".enableDiffuse" yes;
	setAttr ".diffuseGain" 1;
	setAttr ".diffuseColor" -type "float3" 0 0 0 ;
	setAttr ".diffuseRoughness" 0;
	setAttr ".diffuseBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".diffuseBackColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".diffuseTransmitGain" 0;
	setAttr ".diffuseTransmitColor" -type "float3" 0.18000001 0.18000001 0.18000001 ;
	setAttr ".enableSpecular" no;
	setAttr ".specularGain" 0;
	setAttr ".specularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".specularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".specularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".specularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".specularRoughness" 0.20000000298023224;
	setAttr ".specularAnisotropy" 0;
	setAttr ".specularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableRoughSpecular" no;
	setAttr ".roughSpecularGain" 0;
	setAttr ".roughSpecularFaceColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".roughSpecularExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".roughSpecularRoughness" 0.60000002384185791;
	setAttr ".roughSpecularAnisotropy" 0;
	setAttr ".roughSpecularBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableClearcoat" no;
	setAttr ".clearcoatGain" 0;
	setAttr ".clearcoatFaceColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatEdgeColor" -type "float3" 0 0 0 ;
	setAttr ".clearcoatIor" -type "float3" 1.5 1.5 1.5 ;
	setAttr ".clearcoatExtinctionCoeff" -type "float3" 0 0 0 ;
	setAttr ".clearcoatRoughness" 0;
	setAttr ".clearcoatAnisotropy" 0;
	setAttr ".clearcoatBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".clearcoatThickness" 0;
	setAttr ".clearcoatAbsorptionTint" -type "float3" 0 0 0 ;
	setAttr ".enableIridescence" no;
	setAttr ".iridescenceFaceGain" 0;
	setAttr ".iridescenceEdgeGain" 0;
	setAttr ".iridescencePrimaryColor" -type "float3" 1 0 0 ;
	setAttr ".iridescenceSecondaryColor" -type "float3" 0 0 1 ;
	setAttr ".iridescenceThickness" 800;
	setAttr ".iridescenceRoughness" 0.20000000298023224;
	setAttr ".enableFuzz" no;
	setAttr ".fuzzGain" 0;
	setAttr ".fuzzColor" -type "float3" 1 1 1 ;
	setAttr ".fuzzConeAngle" 8;
	setAttr ".fuzzBumpNormal" -type "float3" 0 0 0 ;
	setAttr ".enableSubsurface" no;
	setAttr ".subsurfaceGain" 0;
	setAttr ".subsurfaceColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".subsurfaceDmfp" 10;
	setAttr ".subsurfaceDmfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".shortSubsurfaceGain" 0;
	setAttr ".shortSubsurfaceColor" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".shortSubsurfaceDmfp" 5;
	setAttr ".longSubsurfaceGain" 0;
	setAttr ".longSubsurfaceColor" -type "float3" 0.80000001 0 0 ;
	setAttr ".longSubsurfaceDmfp" 20;
	setAttr ".subsurfacePostTint" -type "float3" 1 1 1 ;
	setAttr ".subsurfaceTransmitGain" 0;
	setAttr ".enableSinglescatter" no;
	setAttr ".singlescatterGain" 0;
	setAttr ".singlescatterColor" -type "float3" 0.82999998 0.79100001 0.75300002 ;
	setAttr ".singlescatterMfp" 10;
	setAttr ".singlescatterMfpColor" -type "float3" 0.85100001 0.55699998 0.39500001 ;
	setAttr ".singlescatterDirectionality" 0;
	setAttr ".singlescatterIor" 1.2999999523162842;
	setAttr ".singlescatterBlur" 0;
	setAttr ".singlescatterDirectGain" 0;
	setAttr ".singlescatterDirectGainTint" -type "float3" 1 1 1 ;
	setAttr ".enableRR" no;
	setAttr ".rrRefractionGain" 0;
	setAttr ".rrReflectionGain" 0;
	setAttr ".rrRefractionColor" -type "float3" 1 1 1 ;
	setAttr ".rrRoughness" 0.10000000149011612;
	setAttr ".rrIor" 1.5;
	setAttr ".enableGlow" no;
	setAttr ".glowGain" 0;
	setAttr ".glowColor" -type "float3" 1 1 1 ;
	setAttr ".bumpNormal" -type "float3" 0 0 0 ;
createNode colorConstant -n "_Lookdev_BG_ConstantColor";
	rename -uid "105277DB-45E5-FF38-9031-4DA6F17DB1A5";
createNode PxrChecker -n "_Lookdev_BG_Grid_Pattern";
	rename -uid "3EB06222-47E3-7B44-40E7-EA977420216B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".colorA" -type "float3" 0.02 0.02 0.02 ;
	setAttr ".colorB" -type "float3" 0 0 0 ;
	setAttr ".dimensions" 2;
	setAttr ".manifold" -type "string" "";
createNode blinn -n "typeBlinn";
	rename -uid "66FB4B06-45E4-063B-D57B-34A568F6CE1A";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeBlinnSG";
	rename -uid "9AEEF232-490A-B380-3E59-9D99B49F8DE6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "8BD7C5A1-4353-923C-5988-32A0613120A3";
createNode expression -n "expression1";
	rename -uid "3309C3C9-491E-2193-3BFB-758B509C5FDB";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression2";
	rename -uid "B4952455-4FB9-8D5B-5D3E-A792DD2A8D0D";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression3";
	rename -uid "A3534F66-42D4-0D2E-DDAC-0A9E2AAE2FFF";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression4";
	rename -uid "D64DD81B-4178-D303-193E-3393E54AFEEE";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression5";
	rename -uid "C08AC45B-47E6-3ED9-A1A0-AF9F1029770C";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression6";
	rename -uid "530BDE37-41D0-156A-F0A5-FBA1D1770435";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression7";
	rename -uid "4E866092-49AF-58BB-6C37-9C8C282B7383";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression8";
	rename -uid "ED81B143-4838-8CF3-9A9A-368FAE10E608";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression9";
	rename -uid "8504BF7A-48C8-BE2B-B618-28BACF435645";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression10";
	rename -uid "74180FC6-4F61-5F6E-8DA1-AE98C5D24C13";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "expression11";
	rename -uid "A78A2C43-420A-2609-6DCC-B193A2E13ACE";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression12";
	rename -uid "3DC461EF-4242-6582-F8D3-529FF37AAEB0";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression13";
	rename -uid "11AA7FE2-42B7-4384-4976-E5A24FC76979";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression14";
	rename -uid "C9892A11-4F1B-99D6-DE47-8A985393CB08";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "CF8BFD23-46FE-C1F5-EBF1-C2B6C7F93492";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -806.97242809774627 -515.47616999300794 ;
	setAttr ".tgi[0].vh" -type "double2" 883.16290126068543 334.52379623102826 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -517.14288330078125;
	setAttr ".tgi[0].ni[0].y" -191.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -210;
	setAttr ".tgi[0].ni[1].y" -282.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 101.42857360839844;
	setAttr ".tgi[0].ni[2].y" -157.14285278320313;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 408.57144165039063;
	setAttr ".tgi[0].ni[3].y" 140;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 101.42857360839844;
	setAttr ".tgi[0].ni[4].y" -315.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -102.85713958740234;
	setAttr ".tgi[0].ni[5].y" 277.14285278320313;
	setAttr ".tgi[0].ni[5].nvs" 18304;
createNode expression -n "expression15";
	rename -uid "59B3DBE8-4341-60DE-2B4F-FFA389CFB30F";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression16";
	rename -uid "10E7AE72-4F19-8961-E9E2-3AB446D6355A";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "expression17";
	rename -uid "C8CF10CB-4C7E-424C-D4B9-B6B026B62B61";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode expression -n "expression18";
	rename -uid "A2E2DBB4-49D9-51BF-A9E8-48B48477AC92";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "expression19";
	rename -uid "79901160-48C0-AD25-6349-E589E766C243";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode PxrRemap -n "_Lookdev_BG_ConstantColor_Rmap";
	rename -uid "7B037795-48B4-A1EA-E6FC-53BF7481A58B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".inputRGB" -type "float3" 0.02 0.02 0.02 ;
	setAttr ".inputMin" 0;
	setAttr ".inputMax" 1;
	setAttr ".clampInput" yes;
	setAttr ".bias" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".gain" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".outputMin" 0;
	setAttr ".outputMax" 0.80000001192092896;
	setAttr ".clampOutput" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "73E3D175-4283-29FA-3775-92AD6909AE0C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2153.8079907576107 -864.76207675714193 ;
	setAttr ".tgi[0].vh" -type "double2" -1081.9376321122552 356.16737095393927 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1150.59521484375;
	setAttr ".tgi[0].ni[0].y" -142.55458068847656;
	setAttr ".tgi[0].ni[0].nvs" 2227;
	setAttr ".tgi[0].ni[1].x" -1158.59619140625;
	setAttr ".tgi[0].ni[1].y" 343.20578002929688;
	setAttr ".tgi[0].ni[1].nvs" 2227;
	setAttr ".tgi[0].ni[2].x" -1783.648681640625;
	setAttr ".tgi[0].ni[2].y" 16.012847900390625;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -318.08578491210938;
	setAttr ".tgi[0].ni[3].y" -28.571428298950195;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -1455.1705322265625;
	setAttr ".tgi[0].ni[4].y" -219.44036865234375;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" -626.17156982421875;
	setAttr ".tgi[0].ni[5].y" -56.657211303710938;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -10;
	setAttr ".tgi[0].ni[6].y" -28.571428298950195;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -2039.778564453125;
	setAttr ".tgi[0].ni[7].y" 151.57736206054688;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 5 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "renderman";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "expression4.out[0]" "Lookdev_LIGHT_grp.sx";
connectAttr "expression5.out[0]" "Lookdev_LIGHT_grp.sy";
connectAttr "expression6.out[0]" "Lookdev_LIGHT_grp.sz";
connectAttr "Lookdev_RimLightShape__LEItem.en" "Lookdev_RimLightShape.v";
connectAttr "Lookdev_DomelightShape__LEItem.en" "Lookdev_DomelightShape.v";
connectAttr "Lookdev_KeytLightShape__LEItem.en" "Lookdev_KeytLightShape.v";
connectAttr "expression1.out[0]" "Lookdev_BG_grp.sx";
connectAttr "expression2.out[0]" "Lookdev_BG_grp.sy";
connectAttr "expression3.out[0]" "Lookdev_BG_grp.sz";
connectAttr "expression11.out[0]" "Lookdev_Backdrop.v";
connectAttr "expression10.out[0]" "Lookdev_Ground.v";
connectAttr "expression7.out[0]" "Lookdev_CameraScale_LOC.sx";
connectAttr "expression8.out[0]" "Lookdev_CameraScale_LOC.sz";
connectAttr "expression9.out[0]" "Lookdev_CameraScale_LOC.sy";
connectAttr "expression17.out[0]" "Lookdev_OverlayMinimal_grp.v";
connectAttr "expression19.out[0]" "Lookdev_MinimalColorChecker.v";
connectAttr "expression16.out[0]" "Lookdev_OverlayFull_grp.v";
connectAttr "expression18.out[0]" "Lookdev_ColorChecker.v";
connectAttr "Lookdev_Cam_pointConstraint1.ctx" "Lookdev_Cam.tx";
connectAttr "Lookdev_Cam_pointConstraint1.cty" "Lookdev_Cam.ty";
connectAttr "Lookdev_Cam_pointConstraint1.ctz" "Lookdev_Cam.tz";
connectAttr "_Lookdev_BG_ConstantColor.oc" "Lookdev_CamShape.col";
connectAttr "Lookdev_Cam.pim" "Lookdev_Cam_pointConstraint1.cpim";
connectAttr "Lookdev_Cam.rp" "Lookdev_Cam_pointConstraint1.crp";
connectAttr "Lookdev_Cam.rpt" "Lookdev_Cam_pointConstraint1.crt";
connectAttr "Lookdev_NoScaleCam_LOC.t" "Lookdev_Cam_pointConstraint1.tg[0].tt";
connectAttr "Lookdev_NoScaleCam_LOC.rp" "Lookdev_Cam_pointConstraint1.tg[0].trp"
		;
connectAttr "Lookdev_NoScaleCam_LOC.rpt" "Lookdev_Cam_pointConstraint1.tg[0].trt"
		;
connectAttr "Lookdev_NoScaleCam_LOC.pm" "Lookdev_Cam_pointConstraint1.tg[0].tpm"
		;
connectAttr "Lookdev_Cam_pointConstraint1.w0" "Lookdev_Cam_pointConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_Grey_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_ColorChecker_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_ChromeBall_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_BlackBall_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_WhiteBall_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "_Lookdev_BG_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_Grey_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_ColorChecker_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_ChromeBall_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_BlackBall_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_WhiteBall_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "_Lookdev_BG_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeBlinnSG.message" ":defaultLightSet.message";
relationship "ignore" ":lightLinker1" "Lookdev_BackdropShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_BlackBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_WhiteBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_GreyBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_MinimalChromeBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_MinimalGreyBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_MinimalColorCheckerShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_ChromeBallShape.message" "Lookdev_RimLightShape.message";
relationship "ignore" ":lightLinker1" "Lookdev_ColorCheckerShape.message" "Lookdev_RimLightShape.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":rmanDefaultDisplay.msg" ":rmanGlobals.displays[0]";
connectAttr ":PxrPathTracer.msg" ":rmanGlobals.ri_integrator";
connectAttr "d_openexr.msg" ":rmanDefaultDisplay.displayType";
connectAttr "Ci.msg" ":rmanDefaultDisplay.displayChannels[0]";
connectAttr "a.msg" ":rmanDefaultDisplay.displayChannels[1]";
connectAttr "_Lookdev_Grey_Surface.oc" "_Lookdev_Grey_SG.rman__surface";
connectAttr "lambert2.oc" "_Lookdev_Grey_SG.ss";
connectAttr "Lookdev_MinimalGreyBallShape.iog" "_Lookdev_Grey_SG.dsm" -na;
connectAttr "Lookdev_GreyBallShape.iog" "_Lookdev_Grey_SG.dsm" -na;
connectAttr "_Lookdev_Grey_SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "_Lookdev_ColorChecker_Texture.resultRGB" "_Lookdev_ColorChecker_Surface.diffuseColor"
		;
connectAttr "_Lookdev_ColorChecker_Surface.oc" "_Lookdev_ColorChecker_SG.rman__surface"
		;
connectAttr "lambert3.oc" "_Lookdev_ColorChecker_SG.ss";
connectAttr "Lookdev_MinimalColorCheckerShape.iog" "_Lookdev_ColorChecker_SG.dsm"
		 -na;
connectAttr "Lookdev_ColorCheckerShape.iog" "_Lookdev_ColorChecker_SG.dsm" -na;
connectAttr "_Lookdev_ColorChecker_SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "_Lookdev_ChromeBall_Surface.oc" "_Lookdev_ChromeBall_SG.rman__surface"
		;
connectAttr "lambert4.oc" "_Lookdev_ChromeBall_SG.ss";
connectAttr "Lookdev_MinimalChromeBallShape.iog" "_Lookdev_ChromeBall_SG.dsm" -na
		;
connectAttr "Lookdev_ChromeBallShape.iog" "_Lookdev_ChromeBall_SG.dsm" -na;
connectAttr "_Lookdev_ChromeBall_SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "_Lookdev_BlackBall_Surface.oc" "_Lookdev_BlackBall_SG.rman__surface"
		;
connectAttr "lambert5.oc" "_Lookdev_BlackBall_SG.ss";
connectAttr "Lookdev_BlackBallShape.iog" "_Lookdev_BlackBall_SG.dsm" -na;
connectAttr "_Lookdev_BlackBall_SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "_Lookdev_WhiteBall_Surface.oc" "_Lookdev_WhiteBall_SG.rman__surface"
		;
connectAttr "lambert6.oc" "_Lookdev_WhiteBall_SG.ss";
connectAttr "Lookdev_WhiteBallShape.iog" "_Lookdev_WhiteBall_SG.dsm" -na;
connectAttr "_Lookdev_WhiteBall_SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "Lookdev_KeytLightShape__LEItem.msg" "lightEditor.fi";
connectAttr "Lookdev_RimLightShape__LEItem.msg" "lightEditor.li";
connectAttr "Lookdev_KeytLightShape.msg" "Lookdev_KeytLightShape__LEItem.lgt";
connectAttr "lightEditor.lit" "Lookdev_KeytLightShape__LEItem.pls";
connectAttr "lightEditor.en" "Lookdev_KeytLightShape__LEItem.pen";
connectAttr "lightEditor.nic" "Lookdev_KeytLightShape__LEItem.pic";
connectAttr "Lookdev_DomelightShape.msg" "Lookdev_DomelightShape__LEItem.lgt";
connectAttr "Lookdev_KeytLightShape__LEItem.nxt" "Lookdev_DomelightShape__LEItem.prv"
		;
connectAttr "lightEditor.lit" "Lookdev_DomelightShape__LEItem.pls";
connectAttr "lightEditor.en" "Lookdev_DomelightShape__LEItem.pen";
connectAttr "lightEditor.nic" "Lookdev_DomelightShape__LEItem.pic";
connectAttr "Lookdev_RimLightShape.msg" "Lookdev_RimLightShape__LEItem.lgt";
connectAttr "Lookdev_DomelightShape__LEItem.nxt" "Lookdev_RimLightShape__LEItem.prv"
		;
connectAttr "lightEditor.lit" "Lookdev_RimLightShape__LEItem.pls";
connectAttr "lightEditor.en" "Lookdev_RimLightShape__LEItem.pen";
connectAttr "lightEditor.nic" "Lookdev_RimLightShape__LEItem.pic";
connectAttr "_Lookdev_BG_LayerMixer.pxrMaterialOut" "_Lookdev_BG_LayerSurface.inputMaterial"
		;
connectAttr "_Lookdev_BG_LayerSurface.oc" "_Lookdev_BG_SG.rman__surface";
connectAttr "lambert7.oc" "_Lookdev_BG_SG.ss";
connectAttr "Lookdev_BackdropShape.iog" "_Lookdev_BG_SG.dsm" -na;
connectAttr "Lookdev_GroundShape.iog" "_Lookdev_BG_SG.dsm" -na;
connectAttr "_Lookdev_BG_SG.msg" "materialInfo6.sg";
connectAttr "lambert7.msg" "materialInfo6.m";
connectAttr "_Lookdev_BG_BaseLayer.pxrMaterialOut" "_Lookdev_BG_LayerMixer.baselayer"
		;
connectAttr "_Lookdev_BG_GridLayer.pxrMaterialOut" "_Lookdev_BG_LayerMixer.layer1"
		;
connectAttr "expression15.out[0]" "_Lookdev_BG_LayerMixer.layer1Mask";
connectAttr "_Lookdev_BG_ConstantColor.oc" "_Lookdev_BG_BaseLayer.diffuseColor";
connectAttr "_Lookdev_BG_Grid_Pattern.resultRGB" "_Lookdev_BG_GridLayer.diffuseColor"
		;
connectAttr "expression12.out[0]" "_Lookdev_BG_ConstantColor._cr";
connectAttr "expression13.out[0]" "_Lookdev_BG_ConstantColor._cg";
connectAttr "expression14.out[0]" "_Lookdev_BG_ConstantColor._cb";
connectAttr "_Lookdev_BG_ConstantColor_Rmap.resultRGB" "_Lookdev_BG_Grid_Pattern.colorB"
		;
connectAttr "_Lookdev_BG_ConstantColor.oc" "_Lookdev_BG_Grid_Pattern.colorA";
connectAttr "typeBlinn.oc" "typeBlinnSG.ss";
connectAttr "typeBlinnSG.msg" "materialInfo7.sg";
connectAttr "typeBlinn.msg" "materialInfo7.m";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression1.in[0]";
connectAttr "Lookdev_BG_grp.msg" "expression1.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression2.in[0]";
connectAttr "Lookdev_BG_grp.msg" "expression2.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression3.in[0]";
connectAttr "Lookdev_BG_grp.msg" "expression3.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression4.in[0]";
connectAttr "Lookdev_LIGHT_grp.msg" "expression4.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression5.in[0]";
connectAttr "Lookdev_LIGHT_grp.msg" "expression5.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression6.in[0]";
connectAttr "Lookdev_LIGHT_grp.msg" "expression6.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression7.in[0]";
connectAttr "Lookdev_CameraScale_LOC.msg" "expression7.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression8.in[0]";
connectAttr "Lookdev_CameraScale_LOC.msg" "expression8.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_GlobalScale" "expression9.in[0]";
connectAttr "Lookdev_CameraScale_LOC.msg" "expression9.obm";
connectAttr "Rman_Lookdev_CTRL.BackgroundType" "expression10.in[0]";
connectAttr "Lookdev_Ground.msg" "expression10.obm";
connectAttr "Rman_Lookdev_CTRL.BackgroundType" "expression11.in[0]";
connectAttr "Lookdev_Backdrop.msg" "expression11.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_Background_Color" "expression12.in[0]";
connectAttr "_Lookdev_BG_ConstantColor.msg" "expression12.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_Background_Color" "expression13.in[0]";
connectAttr "_Lookdev_BG_ConstantColor.msg" "expression13.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_Background_Color" "expression14.in[0]";
connectAttr "_Lookdev_BG_ConstantColor.msg" "expression14.obm";
connectAttr "expression13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "_Lookdev_BG_ConstantColor.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "expression12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Lookdev_CamShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "expression14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Lookdev_Cam.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "Rman_Lookdev_CTRL.Lookdev_Cyclo_Type" "expression15.in[0]";
connectAttr "_Lookdev_BG_LayerMixer.msg" "expression15.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_ShaderBalls" "expression16.in[0]";
connectAttr "Lookdev_OverlayFull_grp.msg" "expression16.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_ShaderBalls" "expression17.in[0]";
connectAttr "Lookdev_OverlayMinimal_grp.msg" "expression17.obm";
connectAttr "Rman_Lookdev_CTRL.Lookdev_ColorChecker" "expression18.in[0]";
connectAttr "Lookdev_ColorChecker.msg" "expression18.obm";
connectAttr "Lookdev_ColorChecker.v" "expression19.in[0]";
connectAttr "Lookdev_MinimalColorChecker.msg" "expression19.obm";
connectAttr "_Lookdev_BG_ConstantColor.oc" "_Lookdev_BG_ConstantColor_Rmap.inputRGB"
		;
connectAttr "_Lookdev_BG_GridLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "_Lookdev_BG_BaseLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "_Lookdev_BG_ConstantColor_Rmap.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "_Lookdev_BG_LayerSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "_Lookdev_BG_Grid_Pattern.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "_Lookdev_BG_LayerMixer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "_Lookdev_BG_SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "_Lookdev_BG_ConstantColor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "_Lookdev_Grey_SG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_ColorChecker_SG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_ChromeBall_SG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_BlackBall_SG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_WhiteBall_SG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_BG_SG.pa" ":renderPartition.st" -na;
connectAttr "typeBlinnSG.pa" ":renderPartition.st" -na;
connectAttr "_Lookdev_Grey_Surface.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_ColorChecker_Surface.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_ChromeBall_Surface.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_BlackBall_Surface.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_WhiteBall_Surface.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_BG_LayerSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "typeBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "_Lookdev_BG_ConstantColor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanDefaultDisplay.msg" ":defaultRenderingList1.r" -na;
connectAttr "d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr ":PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Lookdev_DomelightShape.msg" ":lightList1.l" -na;
connectAttr "Lookdev_KeytLightShape.msg" ":lightList1.l" -na;
connectAttr "Lookdev_RimLightShape.msg" ":lightList1.l" -na;
connectAttr "_Lookdev_ColorChecker_Texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "_Lookdev_BG_LayerMixer.msg" ":defaultTextureList1.tx" -na;
connectAttr "_Lookdev_BG_BaseLayer.msg" ":defaultTextureList1.tx" -na;
connectAttr "_Lookdev_BG_GridLayer.msg" ":defaultTextureList1.tx" -na;
connectAttr "_Lookdev_BG_Grid_Pattern.msg" ":defaultTextureList1.tx" -na;
connectAttr "_Lookdev_BG_ConstantColor_Rmap.msg" ":defaultTextureList1.tx" -na;
connectAttr "Lookdev_Domelight.iog" ":defaultLightSet.dsm" -na;
connectAttr "Lookdev_KeytLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "Lookdev_RimLight.iog" ":defaultLightSet.dsm" -na;
// End of Lookdev_Scene_v01.ma
