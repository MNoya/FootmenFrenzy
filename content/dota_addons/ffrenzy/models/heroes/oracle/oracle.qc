// Created by Crowbar 0.24.0.0

$modelname "heroes/oracle/oracle.mdl"

$model "default" "oracle_reference.smd" {

	flexfile "oracle.vta" 
	{
		defaultflex frame 0
		flex "innerBrowRaiser" frame 1
		flex "outerBrowRaiser" frame 2
		flex "browLowerer" frame 3
		flex "eyeUp" frame 4
		flex "eyeDown" frame 5
		flex "eyeLeft" frame 6
		flex "eyeRight" frame 7
		flex "upperLidRaiser" frame 8
		flex "eyeClosed" frame 9
		flex "squint" frame 10
		flex "cheekRaiser" frame 11
		flex "dimpler" frame 12
		flex "noseWrinkler" frame 13
		flex "nostrilDilator" frame 14
		flex "upperLipsToward" frame 15
		flex "lowerLipsToward" frame 16
		flex "upperLipsPart" frame 17
		flex "lowerLipsPart" frame 18
		flex "upperLipRaiser" frame 19
		flex "lowerLipDepressor" frame 20
		flex "chinRaiser" frame 21
		flex "lipCornerDepressor" frame 22
		flex "lipPressor" frame 23
		flex "sharpLipPuller" frame 24
		flex "lipCornerPuller" frame 25
		flex "lipStretcher" frame 26
		flex "lipPuckerer" frame 27
		flex "upperLipFunneler" frame 28
		flex "lowerLipFunneler" frame 29
		flex "lowerLipSuck" frame 30
		flex "lipSidewaysL" frame 31
		flex "lipSidewaysR" frame 32
		flex "jawThrust" frame 33
		flex "jawSuck" frame 34
		flex "jawSidewaysL" frame 35
		flex "jawSidewaysR" frame 36
		flex "jawOpen" frame 37
		flex "jawClencher" frame 38
		flex "eyeClosed__eyeUp" frame 39
		flex "eyeClosed__eyeDown" frame 40
		flex "jawOpen__lipCornerPuller" frame 41
		flex "lipPuckerer__lowerLipFunneler" frame 42
		flex "lipPuckerer__upperLipFunneler" frame 43
		flex "phonemeBMP" frame 44
		flex "phonemeFV" frame 45
	}

	flexcontroller default range 0 1 innerBrowRaiser
	flexcontroller default range 0 1 outerBrowRaiser
	flexcontroller default range 0 1 browLowerer
	flexcontroller default range -1 1 eyeDownAndUp
	flexcontroller default range -1 1 eyeRightAndLeft
	flexcontroller default range -1 1 eyeClosedAndLidRaiser
	flexcontroller default range 0 1 squint
	flexcontroller default range 0 1 cheekRaiser
	flexcontroller default range 0 1 dimpler
	flexcontroller default range 0 1 noseWrinkler
	flexcontroller default range 0 1 nostrilDilator
	flexcontroller default range -1 1 upperLipsTowardAndPart
	flexcontroller default range 0 1 phonemeFV
	flexcontroller default range 0 1 phonemeBMP
	flexcontroller default range -1 1 lowerLipsTowardAndPart
	flexcontroller default range 0 1 upperLipRaiser
	flexcontroller default range -1 1 lowerLipDepressorAndChinRaiser
	flexcontroller default range -1 1 lipCornerDepressorAndSharpLipPuller
	flexcontroller default range 0 1 lipPressor
	flexcontroller default range 0 1 lipCornerPuller
	flexcontroller default range 0 1 lipStretcher
	flexcontroller default range 0 1 lipPuckerer
	flexcontroller default range 0 1 upperLipFunneler
	flexcontroller default range 0 1 lowerLipFunneler
	flexcontroller default range 0 1 lowerLipSuck
	flexcontroller default range -1 1 lipSideways
	flexcontroller default range -1 1 jawSuckAndThrust
	flexcontroller default range -1 1 jawSideways
	flexcontroller default range 0 1 jawOpen
	flexcontroller default range 0 1 jawClencher

	%innerBrowRaiser = innerBrowRaiser
	%outerBrowRaiser = outerBrowRaiser
	%browLowerer = browLowerer
	%eyeUp =  max(eyeDownAndUp, 0)
	%eyeDown =  min(eyeDownAndUp, 0) * -1
	%eyeLeft =  max(eyeRightAndLeft, 0)
	%eyeRight =  min(eyeRightAndLeft, 0) * -1
	%upperLidRaiser =  max(eyeClosedAndLidRaiser, 0)
	%eyeClosed =  min(eyeClosedAndLidRaiser, 0) * -1
	%squint = squint
	%cheekRaiser = cheekRaiser
	%dimpler = dimpler
	%noseWrinkler = noseWrinkler
	%nostrilDilator = nostrilDilator
	%upperLipsToward =  max(( min(upperLipsTowardAndPart, 0) * -1 -  min(upperLipsTowardAndPart, 0) * -1 * 1 * phonemeFV +  min(upperLipsTowardAndPart, 0) * -1 * 1 * phonemeBMP), 0)
	%lowerLipsToward =  max(( min(lowerLipsTowardAndPart, 0) * -1 -  min(lowerLipsTowardAndPart, 0) * -1 * 1 * phonemeFV +  min(lowerLipsTowardAndPart, 0) * -1 * 1 * phonemeBMP), 0)
	%upperLipsPart =  max(( max(upperLipsTowardAndPart, 0) -  max(upperLipsTowardAndPart, 0) * 1 * phonemeFV +  max(upperLipsTowardAndPart, 0) * 1 * phonemeBMP), 0)
	%lowerLipsPart =  max(( max(lowerLipsTowardAndPart, 0) -  max(lowerLipsTowardAndPart, 0) * 1 * phonemeFV +  max(lowerLipsTowardAndPart, 0) * 1 * phonemeBMP), 0)
	%upperLipRaiser =  max((upperLipRaiser - upperLipRaiser * 1 * phonemeFV + upperLipRaiser * 1 * phonemeBMP), 0)
	%lowerLipDepressor =  max(( min(lowerLipDepressorAndChinRaiser, 0) * -1 -  min(lowerLipDepressorAndChinRaiser, 0) * -1 * 1 * phonemeFV +  min(lowerLipDepressorAndChinRaiser, 0) * -1 * 1 * phonemeBMP), 0)
	%chinRaiser =  max(( max(lowerLipDepressorAndChinRaiser, 0) -  max(lowerLipDepressorAndChinRaiser, 0) * 1 * phonemeFV +  max(lowerLipDepressorAndChinRaiser, 0) * 1 * phonemeBMP), 0)
	%lipCornerDepressor =  min(lipCornerDepressorAndSharpLipPuller, 0) * -1
	%lipPressor = lipPressor
	%sharpLipPuller =  max(lipCornerDepressorAndSharpLipPuller, 0)
	%lipCornerPuller = lipCornerPuller
	%lipStretcher = lipStretcher
	%lipPuckerer = lipPuckerer
	%upperLipFunneler =  max((upperLipFunneler - upperLipFunneler * 1 * phonemeFV + upperLipFunneler * 1 * phonemeBMP), 0)
	%lowerLipFunneler =  max((lowerLipFunneler - lowerLipFunneler * 1 * phonemeFV + lowerLipFunneler * 1 * phonemeBMP), 0)
	%lowerLipSuck = lowerLipSuck
	%lipSidewaysL =  max(lipSideways, 0)
	%lipSidewaysR =  min(lipSideways, 0) * -1
	%jawThrust =  max(( max(jawSuckAndThrust, 0) -  max(jawSuckAndThrust, 0) * 0.5 * phonemeFV +  max(jawSuckAndThrust, 0) * 1 * phonemeBMP), 0)
	%jawSuck =  max(( min(jawSuckAndThrust, 0) * -1 -  min(jawSuckAndThrust, 0) * -1 * 0.5 * phonemeFV +  min(jawSuckAndThrust, 0) * -1 * 1 * phonemeBMP), 0)
	%jawSidewaysL =  max(( max(jawSideways, 0) -  max(jawSideways, 0) * 0.7 * phonemeFV +  max(jawSideways, 0) * 0.7 * phonemeBMP), 0)
	%jawSidewaysR =  max(( min(jawSideways, 0) * -1 -  min(jawSideways, 0) * -1 * 0.7 * phonemeFV +  min(jawSideways, 0) * -1 * 0.7 * phonemeBMP), 0)
	%jawOpen =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP), 0)
	%jawClencher = jawClencher
	%eyeClosed__eyeUp =  min(eyeClosedAndLidRaiser, 0) * -1 *  max(eyeDownAndUp, 0)
	%eyeClosed__eyeDown =  min(eyeClosedAndLidRaiser, 0) * -1 *  min(eyeDownAndUp, 0) * -1
	%jawOpen__lipCornerPuller =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP), 0) * lipCornerPuller
	%lipPuckerer__lowerLipFunneler = lipPuckerer *  max((lowerLipFunneler - lowerLipFunneler * 1 * phonemeFV + lowerLipFunneler * 1 * phonemeBMP), 0)
	%lipPuckerer__upperLipFunneler = lipPuckerer *  max((upperLipFunneler - upperLipFunneler * 1 * phonemeFV + upperLipFunneler * 1 * phonemeBMP), 0)
	%phonemeBMP = phonemeBMP
	%phonemeFV = phonemeFV
}

$lod 1
{
	replacemodel "oracle_reference.smd" "oracle_model_lod1.smd"
}

$poseparameter "turn" -1 1 0

$cdmaterials ""

$attachment "attach_back" "backB_R0C0" 0 0 0 rotate 0 0 0
$attachment "attach_head" "head" 0 0 0 rotate 0 0 0
$attachment "attach_hitloc" "spine2" 0 0 0 rotate 0 0 0
$attachment "attach_attack2" "ball" 0 0 0 rotate 0 0 0
$attachment "attach_attack1" "ball" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "sh_pad_R" -23.396503 -10.341317 -17.81521 17.818769 31.737 24.137627
// $hbox 0 "wrist_R" -23.939674 -20.220743 -8.447072 0.271348 2.161321 6.436642
// $hbox 0 "elbow_R" -32.694866 -8.632118 -9.295162 7.596464 13.134514 8.428328
// $hbox 0 "bicep_R" -26.973045 -6.989889 -4.051887 -3.96835 8.048121 10.693419
// $hbox 0 "wrist_L" -6.071732 -5.15179 -6.436642 23.939674 20.220743 8.447072
// $hbox 0 "elbow_L" 3.24285 -5.964918 -5.781305 24.713348 8.114883 5.014531
// $hbox 0 "bicep_L" 3.96835 -12.769352 -17.300253 42.957893 8.568277 9.723641
// $hbox 0 "sh_pad_L" -17.818769 -10.341317 -17.81521 23.396503 31.737 24.137627
// $hbox 0 "head" -10.631395 -11.104596 -9.678091 14.565821 11.104596 15.525331
// $hbox 0 "spine2" 4.88615 -14.04608 -18.271709 16.510725 14.04608 8.965791
// $hbox 0 "spine1" 15.69424 -4.511688 10.330035 19.485582 4.511688 15.306384
// $hbox 0 "in_skirt_R2C0" 0.756915 -17.867477 -13.636341 40.293694 18.164141 13.636341
// $hbox 0 "in_skirt_R1C0" -2.540235 -17.867477 -13.636341 24.937063 18.164141 13.636341
// $hbox 0 "ball" -13.283669 -14.684735 -17.719406 12.814305 12.994053 18.062696
// $hbox 0 "root" -9.349216 -11.95768 -6.813565 14.6104 11.95768 4.879233
// $hboxset "hands"
// $hbox 0 "wrist_R" -23.939674 -20.220743 -8.447072 0.271348 2.161321 6.436642
// $hbox 0 "wrist_L" -6.071732 -5.15179 -6.436642 23.939674 20.220743 8.447072
// $hboxset "head"
// $hbox 0 "head" -10.631395 -11.104596 -9.678091 14.565821 11.104596 15.525331
// $hboxset "feet"
// $hbox 0 "in_skirt_R2C0" 0.756915 -17.867477 -13.636341 40.293694 18.164141 13.636341
// $hboxset "weapon"
// $hbox 0 "ball" -13.283669 -14.684735 -17.719406 12.814305 12.994053 18.062696
// $hboxset "select_high"
// $hbox 0 "root" -22.740061 -18.561222 -89.748322 20.673706 23.559801 60.107651
// $hboxset "select_low"
// $hbox 0 "root" -51.222034 -53.753155 -95.03286 56.483219 53.753155 78.215385
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 103.872482 -12.939198 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine1" "root" -2.998698 0 10.657211 -3.141593 -1.413377 -3.141592 0 0 0 0 0 0
// $definebone "in_skirt_R0C0" "root" 1.586938 0 -14.891716 1.570802 1.520888 -3.141592 0 0 0 0 0 0
// $definebone "ball" "root" 38.739197 0.252281 30.094025 1.570796 0 1.570796 0 0 0 0 0 0
// $definebone "back_cloth_R0C0" "spine1" 16.194038 0.141978 12.045102 1.570796 -0.519536 3.141593 0 0 0 0 0 0
// $definebone "spine2" "spine1" 11.20726 0 0.000003 0 0.189336 0 0 0 0 0 0 0
// $definebone "back_cloth_R1C0" "back_cloth_R0C0" 11.004005 -0.000015 0 0 0 0 0 0 0 0 0 0
// $definebone "back_cloth_R2C0" "back_cloth_R1C0" 38.619701 0 0.000001 0 0 0 0 0 0 0 0 0
// $definebone "back_cloth_R3C0" "back_cloth_R2C0" 38.619705 0 0.000002 0.010556 -0.002909 0.268912 0 0 0 0 0 0
// $definebone "clavicle_R" "spine2" 19.928429 -4.94096 -0.692898 -1.570796 0.371277 1.428564 0 0 0 0 0 0
// $definebone "back_armor0_0" "spine2" 17.653664 0.000003 30.123896 -3.14159 -1.536288 3.14159 0 0 0 0 0 0
// $definebone "clavicle_L" "spine2" 19.928444 4.940961 -0.6929 1.570797 -0.371277 1.713029 0 0 0 0 0 0
// $definebone "neck1" "spine2" 23.014885 0 -0.00001 0 0.268644 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -10.521059 0 -0.000031 -1.074331 0.772814 0.147307 0 0 0 0 0 0
// $definebone "sh_pad_R" "clavicle_R" -15.447826 4.326195 -6.618439 0 0 0 0 0 0 0 0 0
// $definebone "out_cloth_R0C0" "clavicle_R" -14.686613 16.612015 16.971916 -3.005101 -1.427236 2.632423 0 0 0 0 0 0
// $definebone "cloth_adj_R" "clavicle_R" -15.447826 4.326195 -6.618439 0 0 0 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -30.993301 -0.000008 -0.000008 0 0.797949 0 0 0 0 0 0 0
// $definebone "wrist_helper_R" "elbow_R" -18.49086 0 0.000013 0 0 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -26.393745 -0.000015 0.000003 -0.319875 -0.282436 0.56027 0 0 0 0 0 0
// $definebone "Pinky_0_R" "wrist_R" -12.1035 -6.615829 -3.375765 1.484562 -0.387144 0.501103 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -4.980919 -9.120934 3.450651 0.633453 0.224218 0.884052 0 0 0 0 0 0
// $definebone "Ring_0_R" "wrist_R" -12.253845 -7.047665 0.532536 1.629723 -0.108032 0.674462 0 0 0 0 0 0
// $definebone "Index_0_R" "wrist_R" -12.082115 -8.003571 3.396744 1.817959 0.303655 0.527298 0 0 0 0 0 0
// $definebone "Pinky_1_R" "Pinky_0_R" -4.647934 0.000004 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Thumb_1_R" "Thumb_0_R" -5.571602 0.000008 0 0 0 0 0 0 0 0 0 0
// $definebone "Ring_1_R" "Ring_0_R" -5.741219 0 0 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_R" "Index_0_R" -5.132446 0.000004 0.000006 0 0 0 0 0 0 0 0 0
// $definebone "out_cloth_R1C0" "out_cloth_R0C0" 23.660339 -0.000001 -0.000002 0.015035 -0.031065 -0.067729 0 0 0 0 0 0
// $definebone "out_cloth_R2C0" "out_cloth_R1C0" 53.15229 0.000001 -0.000004 -0.030856 -0.072075 -0.03085 0 0 0 0 0 0
// $definebone "out_cloth_R3C0" "out_cloth_R2C0" 39.999931 0.000004 0.000002 0 0 0 0 0 0 0 0 0
// $definebone "back_R0C0" "back_armor0_0" -0.000008 0 0.000015 1.570842 1.568205 -3.14157 0 0 0 0 0 0
// $definebone "backB_R0C0" "back_armor0_0" -0.000004 0.000001 15.300095 1.570842 1.568205 -3.14157 0 0 0 0 0 0
// $definebone "back_R1C0" "back_R0C0" 38.636108 0.000004 0.000003 0 0 0 0 0 0 0 0 0
// $definebone "back_R2C0" "back_R1C0" 32.167953 0 0 0 0 0 0 0 0 0 0 0
// $definebone "backB_R1C0" "backB_R0C0" 53.936142 -0.039635 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 10.521061 0 0 -1.074331 0.772813 0.147307 0 0 0 0 0 0
// $definebone "sh_pad_L" "clavicle_L" 15.447826 -4.3262 6.618439 0 0 0 0 0 0 0 0 0
// $definebone "out_cloth_R0C1" "clavicle_L" 14.406733 -16.369343 -17.019592 2.95975 1.381315 -0.377555 0 0 0 0 0 0
// $definebone "cloth_adj_L" "clavicle_L" 15.447826 -4.3262 6.618439 0 0 0 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 30.99334 0 0 -0.000001 0.797949 0 0 0 0 0 0 0
// $definebone "wrist_helper_L" "elbow_L" 18.490784 0.000015 0.000017 0 0 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 26.393776 0.000015 0.000023 -0.319875 -0.282436 0.56027 0 0 0 0 0 0
// $definebone "Pinky_0_L" "wrist_L" 12.103523 6.615833 3.375769 1.484562 -0.387144 0.501103 0 0 0 0 0 0
// $definebone "Thumb_0_L" "wrist_L" 4.980934 9.120934 -3.450651 0.633453 0.224218 0.884052 0 0 0 0 0 0
// $definebone "Ring_0_L" "wrist_L" 12.253876 7.04768 -0.532522 1.629722 -0.108033 0.674462 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 12.082161 8.003593 -3.396734 1.817958 0.303655 0.527298 0 0 0 0 0 0
// $definebone "Pinky_1_L" "Pinky_0_L" 4.647919 0 -0.000009 0 0 0 0 0 0 0 0 0
// $definebone "Thumb_1_L" "Thumb_0_L" 5.571609 0.000004 -0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Ring_1_L" "Ring_0_L" 5.741211 0.000004 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_L" "Index_0_L" 5.132431 -0.000002 -0.000009 0 0 0 0 0 0 0 0 0
// $definebone "out_cloth_R1C1" "out_cloth_R0C1" 23.674202 -0.000005 -0.000008 0.230054 -0.017408 -0.055863 0 0 0 0 0 0
// $definebone "out_cloth_R2C1" "out_cloth_R1C1" 53.094284 0.000004 -0.000002 -0.069554 0.077949 -0.029987 0 0 0 0 0 0
// $definebone "out_cloth_R3C1" "out_cloth_R2C1" 39.644066 0 0.000006 0 0 0 0 0 0 0 0 0
// $definebone "head" "neck1" 22.022095 0.000003 -0.000004 0 1.045757 0 0 0 0 0 0 0
// $definebone "eyeball" "head" 12.038221 0.000002 7.026154 1.795275 0 1.570796 0 0 0 0 0 0
// $definebone "in_skirt_R1C0" "in_skirt_R0C0" 11.003983 -0.000001 -0.000002 0 0 0 0 0 0 0 0 0
// $definebone "in_skirt_R2C0" "in_skirt_R1C0" 38.619713 -0.000001 0 0 0 0 0 0 0 0 0 0
// $definebone "in_skirt_end" "in_skirt_R2C0" 38.61972 0.000006 0.000006 0 0 0 0 0 0 0 0 0
// $definebone "ball_in" "ball" 0 0 0 0 0 0 0 0 0 0 0 0

$sectionframes 30 150

// $weightlist "weights_attack" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack_fast" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack_faster" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack_fastest" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2_fast" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2_faster" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2_fastest" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2_injured" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_attack2_injured_duplicate" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_idle" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_run" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_stun" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_flail" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_cast1_FortunesEnd" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_cast1_FortunesEnd_Resolve" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_cast2_Fates_Edict" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_cast3_Purifying_Flames" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_cast4_False_Promise" {
// 	 "root" 1
// 	 "spine1" 1
// 	 "in_skirt_R0C0" 1
// 	 "ball" 1
// 	 "back_cloth_R0C0" 1
// 	 "spine2" 1
// 	 "back_cloth_R1C0" 1
// 	 "back_cloth_R2C0" 1
// 	 "back_cloth_R3C0" 1
// 	 "clavicle_R" 1
// 	 "back_armor0_0" 1
// 	 "clavicle_L" 1
// 	 "neck1" 1
// 	 "bicep_R" 1
// 	 "sh_pad_R" 1
// 	 "out_cloth_R0C0" 1
// 	 "cloth_adj_R" 1
// 	 "elbow_R" 1
// 	 "wrist_helper_R" 1
// 	 "wrist_R" 1
// 	 "Pinky_0_R" 1
// 	 "Thumb_0_R" 1
// 	 "Ring_0_R" 1
// 	 "Index_0_R" 1
// 	 "Pinky_1_R" 1
// 	 "Thumb_1_R" 1
// 	 "Ring_1_R" 1
// 	 "Index_1_R" 1
// 	 "out_cloth_R1C0" 1
// 	 "out_cloth_R2C0" 1
// 	 "out_cloth_R3C0" 1
// 	 "back_R0C0" 1
// 	 "backB_R0C0" 1
// 	 "back_R1C0" 1
// 	 "back_R2C0" 1
// 	 "backB_R1C0" 1
// 	 "bicep_L" 1
// 	 "sh_pad_L" 1
// 	 "out_cloth_R0C1" 1
// 	 "cloth_adj_L" 1
// 	 "elbow_L" 1
// 	 "wrist_helper_L" 1
// 	 "wrist_L" 1
// 	 "Pinky_0_L" 1
// 	 "Thumb_0_L" 1
// 	 "Ring_0_L" 1
// 	 "Index_0_L" 1
// 	 "Pinky_1_L" 1
// 	 "Thumb_1_L" 1
// 	 "Ring_1_L" 1
// 	 "Index_1_L" 1
// 	 "out_cloth_R1C1" 1
// 	 "out_cloth_R2C1" 1
// 	 "out_cloth_R3C1" 1
// 	 "head" 1
// 	 "eyeball" 1
// 	 "in_skirt_R1C0" 1
// 	 "in_skirt_R2C0" 1
// 	 "in_skirt_end" 1
// 	 "ball_in" 0
// }
// $weightlist "weights_ball_layer" {
// 	 "root" 0
// 	 "spine1" 0
// 	 "in_skirt_R0C0" 0
// 	 "ball" 0
// 	 "back_cloth_R0C0" 0
// 	 "spine2" 0
// 	 "back_cloth_R1C0" 0
// 	 "back_cloth_R2C0" 0
// 	 "back_cloth_R3C0" 0
// 	 "clavicle_R" 0
// 	 "back_armor0_0" 0
// 	 "clavicle_L" 0
// 	 "neck1" 0
// 	 "bicep_R" 0
// 	 "sh_pad_R" 0
// 	 "out_cloth_R0C0" 0
// 	 "cloth_adj_R" 0
// 	 "elbow_R" 0
// 	 "wrist_helper_R" 0
// 	 "wrist_R" 0
// 	 "Pinky_0_R" 0
// 	 "Thumb_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Index_0_R" 0
// 	 "Pinky_1_R" 0
// 	 "Thumb_1_R" 0
// 	 "Ring_1_R" 0
// 	 "Index_1_R" 0
// 	 "out_cloth_R1C0" 0
// 	 "out_cloth_R2C0" 0
// 	 "out_cloth_R3C0" 0
// 	 "back_R0C0" 0
// 	 "backB_R0C0" 0
// 	 "back_R1C0" 0
// 	 "back_R2C0" 0
// 	 "backB_R1C0" 0
// 	 "bicep_L" 0
// 	 "sh_pad_L" 0
// 	 "out_cloth_R0C1" 0
// 	 "cloth_adj_L" 0
// 	 "elbow_L" 0
// 	 "wrist_helper_L" 0
// 	 "wrist_L" 0
// 	 "Pinky_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Index_0_L" 0
// 	 "Pinky_1_L" 0
// 	 "Thumb_1_L" 0
// 	 "Ring_1_L" 0
// 	 "Index_1_L" 0
// 	 "out_cloth_R1C1" 0
// 	 "out_cloth_R2C1" 0
// 	 "out_cloth_R3C1" 0
// 	 "head" 0
// 	 "eyeball" 0
// 	 "in_skirt_R1C0" 0
// 	 "in_skirt_R2C0" 0
// 	 "in_skirt_end" 0
// 	 "ball_in" 1
// }



$sequence "BindPose" "oracle_anims\BindPose.smd" {
	fps 30
}

$sequence "attack" "oracle_anims\attack.smd" {
	fps 32
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack_fast" "oracle_anims\attack_fast.smd" {
	fps 29
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack_faster" "oracle_anims\attack_faster.smd" {
	fps 26
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack_fastest" "oracle_anims\attack_fastest.smd" {
	fps 22
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack2" "oracle_anims\attack2.smd" {
	fps 32
	activity "ACT_DOTA_ATTACK2" 1
}

$sequence "attack2_fast" "oracle_anims\attack2_fast.smd" {
	fps 29
	activity "ACT_DOTA_ATTACK2" 1
}

$sequence "attack2_faster" "oracle_anims\attack2_faster.smd" {
	fps 26
	activity "ACT_DOTA_ATTACK2" 1
}

$sequence "attack2_fastest" "oracle_anims\attack2_fastest.smd" {
	fps 22
	activity "ACT_DOTA_ATTACK2" 1
}

$sequence "attack2_injured" "oracle_anims\attack2_injured.smd" {
	fps 32
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack2_injured_duplicate" "oracle_anims\attack2_injured_duplicate.smd" {
	fps 32
	activity "ACT_DOTA_ATTACK2" 1
}

$sequence "idle" "oracle_anims\idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "idle_alt" "oracle_anims\idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
	loop
}

$sequence "idle_alt_throw" "oracle_anims\idle_alt_throw.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
	loop
	{ event AE_CL_CREATE_PARTICLE_EFFECT 112 "ORACLE_IDLE_THROW follow_attachment attach_attack1" }
}

$sequence "idle_injured" "oracle_anims\idle_injured.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "loadout_spawn" "oracle_anims\loadout_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "loadout" "oracle_anims\loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "portrait" "oracle_anims\portrait.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	fadein 0.5
	fadeout 0.5
}

$sequence "run" "oracle_anims\run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns"
}

$sequence "run_injured" "oracle_anims\run_injured.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
}

$sequence "run_haste" "oracle_anims\run_haste.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
}

$sequence "death_dropB" "oracle_anims\death_dropB.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "stun" "oracle_anims\stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
	snap
}

$sequence "flail" "oracle_anims\flail.smd" {
	fps 28
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "cast1_FortunesEnd" "oracle_anims\cast1_FortunesEnd.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "cast1_FortunesEnd_Resolve" "oracle_anims\cast1_FortunesEnd_Resolve.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1_END" 1
	fadeout 0.4
}

$sequence "cast2_Fates_Edict" "oracle_anims\cast2_Fates_Edict.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "cast3_Purifying_Flames" "oracle_anims\cast3_Purifying_Flames.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_3" 1
}

$sequence "cast4_False_Promise" "oracle_anims\cast4_False_Promise.smd" {
	fps 32
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "spawn" "oracle_anims\spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "teleport" "oracle_anims\teleport.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 20 "ORACLE_TELEPORT follow_attachment attach_attack1" }
}

$sequence "teleport_end" "oracle_anims\teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT_END" 1
}

$sequence "ball_layer" "oracle_anims\ball_layer.smd" {
	fps 30
	activity "ACT_DOTA_CONSTANT_LAYER" 1
	loop
}

$sequence "defeat" "oracle_anims\defeat.smd" {
	fps 30
	activity "ACT_DOTA_DEFEAT" 1
	loop
}

$sequence "victory" "oracle_anims\victory.smd" {
	fps 35
	activity "ACT_DOTA_VICTORY" 1
	loop
}

$sequence "forcestaff" "oracle_anims\forcestaff.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "forcestaff_end" "oracle_anims\forcestaff_end.smd" {
	fps 30
	activity "ACT_DOTA_FORCESTAFF_END" 1
}

$sequence "forcestaff_end_injured" "oracle_anims\forcestaff_end_injured.smd" {
	fps 30
	activity "ACT_DOTA_FORCESTAFF_END" 1
}

$sequence "turns_lookFrame_0" "oracle_anims\turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_1" "oracle_anims\turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_2" "oracle_anims\turns_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns" {
	"@turns_lookFrame_0"
	"@turns_lookFrame_1"
	"@turns_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$bonemerge "root"
$bonemerge "spine1"
$bonemerge "in_skirt_R0C0"
$bonemerge "ball"
$bonemerge "back_cloth_R0C0"
$bonemerge "spine2"
$bonemerge "back_cloth_R1C0"
$bonemerge "back_cloth_R2C0"
$bonemerge "back_cloth_R3C0"
$bonemerge "clavicle_R"
$bonemerge "back_armor0_0"
$bonemerge "clavicle_L"
$bonemerge "neck1"
$bonemerge "bicep_R"
$bonemerge "sh_pad_R"
$bonemerge "out_cloth_R0C0"
$bonemerge "cloth_adj_R"
$bonemerge "elbow_R"
$bonemerge "wrist_helper_R"
$bonemerge "wrist_R"
$bonemerge "Pinky_0_R"
$bonemerge "Thumb_0_R"
$bonemerge "Ring_0_R"
$bonemerge "Index_0_R"
$bonemerge "Pinky_1_R"
$bonemerge "Thumb_1_R"
$bonemerge "Ring_1_R"
$bonemerge "Index_1_R"
$bonemerge "out_cloth_R1C0"
$bonemerge "out_cloth_R2C0"
$bonemerge "out_cloth_R3C0"
$bonemerge "back_R0C0"
$bonemerge "backB_R0C0"
$bonemerge "back_R1C0"
$bonemerge "back_R2C0"
$bonemerge "backB_R1C0"
$bonemerge "bicep_L"
$bonemerge "sh_pad_L"
$bonemerge "out_cloth_R0C1"
$bonemerge "cloth_adj_L"
$bonemerge "elbow_L"
$bonemerge "wrist_helper_L"
$bonemerge "wrist_L"
$bonemerge "Pinky_0_L"
$bonemerge "Thumb_0_L"
$bonemerge "Ring_0_L"
$bonemerge "Index_0_L"
$bonemerge "Pinky_1_L"
$bonemerge "Thumb_1_L"
$bonemerge "Ring_1_L"
$bonemerge "Index_1_L"
$bonemerge "out_cloth_R1C1"
$bonemerge "out_cloth_R2C1"
$bonemerge "out_cloth_R3C1"
$bonemerge "head"
$bonemerge "eyeball"
$bonemerge "in_skirt_R1C0"
$bonemerge "in_skirt_R2C0"
$bonemerge "in_skirt_end"
$bonemerge "ball_in"


$keyvalues
{
}
