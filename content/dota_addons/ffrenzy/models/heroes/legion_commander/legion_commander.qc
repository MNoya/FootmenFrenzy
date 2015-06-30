// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander.mdl"

$model "default" "legion_commander_reference.smd" {

	flexfile "legion_commander.vta" 
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
		flex "phonemeBMP" frame 39
		flex "phonemeFV" frame 40
		flex "phonemeCloseJaw" frame 41
		flex "eyeClosed__eyeUp" frame 42
		flex "eyeClosed__eyeDown" frame 43
		flex "jawOpen__lipCornerPuller" frame 44
		flex "lipPuckerer__lowerLipFunneler" frame 45
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
	flexcontroller default range 0 1 phonemeCloseJaw
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
	%jawThrust =  max(( max(jawSuckAndThrust, 0) -  max(jawSuckAndThrust, 0) * 0.5 * phonemeFV +  max(jawSuckAndThrust, 0) * 1 * phonemeBMP +  max(jawSuckAndThrust, 0) * 1 * phonemeCloseJaw), 0)
	%jawSuck =  max(( min(jawSuckAndThrust, 0) * -1 -  min(jawSuckAndThrust, 0) * -1 * 0.5 * phonemeFV +  min(jawSuckAndThrust, 0) * -1 * 1 * phonemeBMP +  min(jawSuckAndThrust, 0) * -1 * 1 * phonemeCloseJaw), 0)
	%jawSidewaysL =  max(( max(jawSideways, 0) -  max(jawSideways, 0) * 0.7 * phonemeFV +  max(jawSideways, 0) * 0.7 * phonemeBMP +  max(jawSideways, 0) * 1 * phonemeCloseJaw), 0)
	%jawSidewaysR =  max(( min(jawSideways, 0) * -1 -  min(jawSideways, 0) * -1 * 0.7 * phonemeFV +  min(jawSideways, 0) * -1 * 0.7 * phonemeBMP +  min(jawSideways, 0) * -1 * 1 * phonemeCloseJaw), 0)
	%jawOpen =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP + jawOpen * 1 * phonemeCloseJaw), 0)
	%jawClencher = jawClencher
	%phonemeBMP = phonemeBMP
	%phonemeFV = phonemeFV
	%phonemeCloseJaw =  max((phonemeCloseJaw - phonemeCloseJaw * 1 * phonemeFV + phonemeCloseJaw * 1 * phonemeBMP), 0)
	%eyeClosed__eyeUp =  min(eyeClosedAndLidRaiser, 0) * -1 *  max(eyeDownAndUp, 0)
	%eyeClosed__eyeDown =  min(eyeClosedAndLidRaiser, 0) * -1 *  min(eyeDownAndUp, 0) * -1
	%jawOpen__lipCornerPuller =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP + jawOpen * 1 * phonemeCloseJaw), 0) * lipCornerPuller
	%lipPuckerer__lowerLipFunneler = lipPuckerer *  max((lowerLipFunneler - lowerLipFunneler * 1 * phonemeFV + lowerLipFunneler * 1 * phonemeBMP), 0)
}

$lod 1
{
	replacemodel "legion_commander_reference.smd" "legion_commander_model_lod1.smd"
}

$poseparameter "turn" -1 1 0

$cdmaterials ""

$texturegroup "skinfamilies"
{
	{
		"models\heroes\legion_commander\legion_base_color.vmt"
	}
	{
		"models\heroes\legion_commander\legion_base_voth_color.vmt"
	}
}

$attachment "attach_eyeL" "Head0_JNT" 4 8.2 3 rotate 0 0 0
$attachment "attach_eyeR" "Head0_JNT" 4 8.2 -3 rotate 0 0 0
$attachment "attach_hitloc" "Spine2_JNT" 0 0 0 rotate 0 0 0
$attachment "attach_attack1" "weapon_0" 0 0 0 rotate 0 0 0
$attachment "attach_attack2" "Offhand0_JNT" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "RightArm3_JNT" -1.767298 -7.998954 -10 18.232702 7.998954 10
// $hbox 0 "RightArm2_JNT" -2.149164 -8.795566 -6.812055 23.254784 4.757779 5.517535
// $hbox 0 "RightArm1_JNT" -8.799403 -5.324478 -5.94882 24.666985 12.66957 3.829344
// $hbox 0 "Head0_JNT" -20.518969 -20.638899 -16.40802 32.043056 11.660134 22.192486
// $hbox 0 "LeftArm3_JNT" -1.767298 -7.998954 -10 18.232702 7.998954 10
// $hbox 0 "LeftArm2_JNT" -2.149165 -8.795564 -5.517536 23.254782 4.75778 6.812054
// $hbox 0 "LeftArm1_JNT" -8.799405 -5.324477 -3.829345 24.666983 12.66957 5.948819
// $hbox 0 "Spine2_JNT" -9.548653 -14.685823 -28.11937 37.821808 14.758648 28.11937
// $hbox 0 "LeftLeg2_JNT" -5.793598 -10 -10 26.017859 10 10
// $hbox 0 "LeftLeg1_JNT" -4.152943 -8.330864 -8.330864 41.527199 8.330864 8.330864
// $hbox 0 "LeftLeg0_JNT" -4.613749 -10 -10 38.784435 10 10
// $hbox 0 "RightLeg2_JNT" -5.793598 -10 -10 26.017859 10 10
// $hbox 0 "RightLeg1_JNT" -4.152943 -8.330864 -8.330864 41.527199 8.330864 8.330864
// $hbox 0 "RightLeg0_JNT" -4.613749 -10 -10 38.784435 10 10
// $hbox 0 "Root0_JNT" -12.953175 -11.588394 -14.602722 12.953175 11.588394 14.602722
// $hboxset "hands"
// $hbox 0 "RightArm3_JNT" -1.767298 -7.998954 -10 18.232702 7.998954 10
// $hbox 0 "LeftArm3_JNT" -1.767298 -7.998954 -10 18.232702 7.998954 10
// $hboxset "head"
// $hbox 0 "Head0_JNT" -20.518969 -20.638899 -16.40802 32.043056 11.660134 22.192486
// $hboxset "select_high"
// $hbox 0 "Spine2_JNT" -13.256508 -22.573933 -24.212736 69.731842 12.998615 24.212736
// $hbox 0 "Root0_JNT" -32.262642 -24.239742 -32.388676 87.150803 14.663838 29.734125
// $hboxset "feet"
// $hbox 0 "LeftLeg2_JNT" -5.793598 -10 -10 26.017859 10 10
// $hbox 0 "RightLeg2_JNT" -5.793598 -10 -10 26.017859 10 10
// $hboxset "weapon"
// $hbox 0 "weapon_0" -26.603392 -22.263962 -2.601724 82.169601 12.788534 2.812478
// $hbox 0 "Offhand0_JNT" -26.570074 -22.229731 -2.597397 82.136284 12.754302 2.808151
// $hboxset "select_low"
// $hbox 0 "Root0_JNT" -65.428627 -23.900209 -50.99543 104.5681 55.834648 48.340881

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root0_JNT" "" 0 89.343208 -1.171317 -1.570796 0.09066 -1.570796 0 0 0 0 0 0
// $definebone "LeftLeg0_JNT" "Root0_JNT" 8.071243 -2.464252 12.030269 -0.144878 -0.143803 -0.022816 0 0 0 0 0 0
// $definebone "Spine0_JNT" "Root0_JNT" -4.558647 -0.080284 0 0 0 3.115484 0 0 0 0 0 0
// $definebone "RightHip0_JNT" "Root0_JNT" 8.071266 -2.464255 -12.030299 -0.144878 -0.143803 3.118777 0 0 0 0 0 0
// $definebone "RightLeg0_JNT" "Root0_JNT" 8.071243 -2.464252 -12.030267 0.144879 0.143803 -0.022816 0 0 0 0 0 0
// $definebone "Skirt_F_R0C0" "Root0_JNT" 14.961502 -10.626094 0 3.141593 0 -0.096358 0 0 0 0 0 0
// $definebone "LeftHip0_JNT" "Root0_JNT" 8.071243 -2.464252 12.030269 -0.144878 -0.143803 -0.022816 0 0 0 0 0 0
// $definebone "weapon_0" "Root0_JNT" 93.367294 40.212219 0 1.570796 0 -1.661456 0 0 0 0 0 0
// $definebone "Skirt_B_R0C0" "Root0_JNT" 24.98745 11.0315 0 0 0 -0.059726 0 0 0 0 0 0
// $definebone "Offhand0_JNT" "Root0_JNT" 93.367294 40.212219 0 1.570796 0 -1.661456 0 0 0 0 0 0
// $definebone "LeftLeg1_JNT" "LeftLeg0_JNT" 37.437923 0.000001 0.000008 0 0 0.090546 0 0 0 0 0 0
// $definebone "LeftLeg2_JNT" "LeftLeg1_JNT" 36.544502 0 -0.000002 3.02135 0.001229 -1.276279 0 0 0 0 0 0
// $definebone "LeftLeg3_JNT" "LeftLeg2_JNT" 15.114826 -0.000004 -0.000002 -0.001409 -0.022499 0.41013 0 0 0 0 0 0
// $definebone "Spine2_JNT" "Spine0_JNT" 7.300995 -0.450907 0 0 0 -0.155479 0 0 0 0 0 0
// $definebone "Banner_R_R0C0" "Spine2_JNT" 38.165169 -26.26807 -30.378199 0 0 -3.050665 0 0 0 0 0 0
// $definebone "Banner_L_R0C0" "Spine2_JNT" 38.165169 -26.268066 30.563244 0 0 -3.050665 0 0 0 0 0 0
// $definebone "Spine3_JNT" "Spine2_JNT" 16.663361 0.000001 0.000001 0 0 0.102792 0 0 0 0 0 0
// $definebone "Banner_R_R0C1" "Banner_R_R0C0" 22.680809 -0.000019 0 0 0 0 0 0 0 0 0 0
// $definebone "Banner_R_R0C2" "Banner_R_R0C1" 23.952591 -0.000002 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Banner_R_R0C3" "Banner_R_R0C2" 30.029057 0 0.000002 -0.001455 0.002859 -0.000341 0 0 0 0 0 0
// $definebone "Banner_L_R0C1" "Banner_L_R0C0" 22.680809 -0.000019 0 0 0 0 0 0 0 0 0 0
// $definebone "Banner_L_R0C2" "Banner_L_R0C1" 23.952591 0.000002 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Banner_L_R0C3" "Banner_L_R0C2" 30.029049 0 0.000002 0.000386 -0.000996 -0.000123 0 0 0 0 0 0
// $definebone "LeftArm0_JNT" "Spine3_JNT" 1.977959 0.951894 3.217699 1.590958 -1.211918 -1.691692 0 0 0 0 0 0
// $definebone "RightArm0_JNT" "Spine3_JNT" 1.977951 0.951893 -3.217699 -1.590958 1.211918 -1.691692 0 0 0 0 0 0
// $definebone "LeftShoulderHlpr0_JNT" "Spine3_JNT" 12.720779 -1.938589 12.479684 1.508165 -0.917846 -3.107032 0 0 0 0 0 0
// $definebone "RightShoulderHlpr0_JNT" "Spine3_JNT" 12.720642 -1.938588 -12.4797 1.508165 -0.917846 0.034561 0 0 0 0 0 0
// $definebone "Neck0_JNT" "Spine3_JNT" 7.066261 0.000004 0.000002 0 0 0.266435 0 0 0 0 0 0
// $definebone "LeftArm1_JNT" "LeftArm0_JNT" 10.041401 -0.000003 -0.000015 -0.263219 -1.047835 0.256825 0 0 0 0 0 0
// $definebone "LeftArm2_JNT" "LeftArm1_JNT" 22.630379 0.000002 0 0 0 0.267626 0 0 0 0 0 0
// $definebone "LeftArm3_JNT" "LeftArm2_JNT" 22.330833 -0.000008 0 -1.369629 -0.00392 -0.088555 0 0 0 0 0 0
// $definebone "LeftThmbFng0_JNT" "LeftArm3_JNT" 7.658043 -2.188293 3.363127 1.395164 -0.089044 -0.256944 0 0 0 0 0 0
// $definebone "LeftIndFng1_JNT" "LeftArm3_JNT" 9.785202 1.79628 1.86492 0.109018 -0.00451 -0.134654 0 0 0 0 0 0
// $definebone "LeftRingFng1_JNT" "LeftArm3_JNT" 9.678448 1.597733 -1.920849 -0.120369 0.06714 -0.373801 0 0 0 0 0 0
// $definebone "LeftThmbFng1_JNT" "LeftThmbFng0_JNT" 3.790848 -0.000004 0.000004 -0.002906 0.030989 -0.058294 0 0 0 0 0 0
// $definebone "LeftIndFng2_JNT" "LeftIndFng1_JNT" 5.174824 0.000008 -0.000004 0.012195 -0.02014 -0.912398 0 0 0 0 0 0
// $definebone "LeftRingFng2_JNT" "LeftRingFng1_JNT" 4.847057 0 0.000004 -0.048605 0.043378 -0.740863 0 0 0 0 0 0
// $definebone "RightArm1_JNT" "RightArm0_JNT" 10.041399 0 0.000015 0.263219 1.047835 0.256826 0 0 0 0 0 0
// $definebone "RightArm2_JNT" "RightArm1_JNT" 22.630379 0.000004 -0.000008 0 0 0.267626 0 0 0 0 0 0
// $definebone "RightArm3_JNT" "RightArm2_JNT" 22.330837 0 0.000015 1.369629 0.00392 -0.088555 0 0 0 0 0 0
// $definebone "RightThmbFng0_JNT" "RightArm3_JNT" 7.658035 -2.188286 -3.363127 -1.395164 0.089044 -0.256944 0 0 0 0 0 0
// $definebone "RightIndFng1_JNT" "RightArm3_JNT" 9.785202 1.79628 -1.864914 -0.109018 0.004511 -0.134654 0 0 0 0 0 0
// $definebone "RightRingFng1_JNT" "RightArm3_JNT" 9.678471 1.597748 1.920874 0.120369 -0.06714 -0.373801 0 0 0 0 0 0
// $definebone "RightThmbFng1_JNT" "RightThmbFng0_JNT" 3.79084 -0.000011 0.000004 0.002907 -0.03099 -0.058294 0 0 0 0 0 0
// $definebone "RightIndFng2_JNT" "RightIndFng1_JNT" 5.174824 0 0 -0.012194 0.020139 -0.912397 0 0 0 0 0 0
// $definebone "RightRingFng2_JNT" "RightRingFng1_JNT" 4.847038 0.000011 -0.000002 0.048605 -0.043379 -0.740863 0 0 0 0 0 0
// $definebone "Head0_JNT" "Neck0_JNT" 10.372292 -2.02813 0.000001 0 0 -0.278299 0 0 0 0 0 0
// $definebone "RightLeg1_JNT" "RightLeg0_JNT" 37.437943 0.000001 -0.000004 0 0 0.090546 0 0 0 0 0 0
// $definebone "RightLeg2_JNT" "RightLeg1_JNT" 36.544495 0 -0.000004 -3.02135 -0.001229 -1.27628 0 0 0 0 0 0
// $definebone "RightLeg3_JNT" "RightLeg2_JNT" 15.114825 0 0.000004 0.001408 0.022499 0.41013 0 0 0 0 0 0
// $definebone "Skirt_F_R0C1" "Skirt_F_R0C0" 20.329437 -0.000002 -0.000001 0 0 0 0 0 0 0 0 0
// $definebone "Skirt_B_R0C1" "Skirt_B_R0C0" 3.95649 0 0 0 0 0 0 0 0 0 0 0
// $definebone "Skirt_B_R0C2" "Skirt_B_R0C1" 16.094669 -0.000002 0.000001 0 0 0 0 0 0 0 0 0

$sectionframes 30 144




$sequence "BindPose" "legion_commander_anims\BindPose.smd" {
	fps 30
}

$sequence "legion_commander_loadout_spawn" "legion_commander_anims\legion_commander_loadout_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "legion_commander_loadout" "legion_commander_anims\legion_commander_loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "legion_commander_capture" "legion_commander_anims\legion_commander_capture.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 10
	loop
}

$sequence "legion_commander_capture_alt1" "legion_commander_anims\legion_commander_capture_alt1.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
}

$sequence "legion_commander_spawn" "legion_commander_anims\legion_commander_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "legion_commander_idle" "legion_commander_anims\legion_commander_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "legion_commander_idle_injured" "legion_commander_anims\legion_commander_idle_injured.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "legion_commander_run" "legion_commander_anims\legion_commander_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns"
	{ event AE_CL_PLAYSOUND 6 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_LegionCommander.Footsteps" }
}

$sequence "legion_commander_run_haste" "legion_commander_anims\legion_commander_run_haste.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "run_haste_turns"
	{ event AE_CL_PLAYSOUND 5 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_LegionCommander.Footsteps" }
}

$sequence "legion_commander_run_overwhelmingodds" "legion_commander_anims\legion_commander_run_overwhelmingodds.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "run_haste_turns_dupe1"
	{ event AE_CL_PLAYSOUND 5 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_LegionCommander.Footsteps" }
}

$sequence "legion_commander_run_injured" "legion_commander_anims\legion_commander_run_injured.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "run_injured_turns"
	{ event AE_CL_PLAYSOUND 6 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_LegionCommander.Footsteps" }
}

$sequence "legion_commander_attack" "legion_commander_anims\legion_commander_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 10 "LEGION_WEAPON_BLUR follow_origin" }
}

$sequence "legion_commander_attack1" "legion_commander_anims\legion_commander_attack1.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 10 "LEGION_WEAPON_BLURB follow_origin" }
}

$sequence "legion_commander_attack2" "legion_commander_anims\legion_commander_attack2.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 10 "LEGION_WEAPON_BLURC follow_origin" }
}

$sequence "legion_commander_momentofcourage" "legion_commander_anims\legion_commander_momentofcourage.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_3" 1
}

$sequence "legion_commander_overodds" "legion_commander_anims\legion_commander_overodds.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "legion_commander_press" "legion_commander_anims\legion_commander_press.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "legion_commander_duel" "legion_commander_anims\legion_commander_duel.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "legion_commander_duel_kill" "legion_commander_anims\legion_commander_duel_kill.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "legion_commander_die" "legion_commander_anims\legion_commander_die.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "legion_commander_flail" "legion_commander_anims\legion_commander_flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "legion_commander_forcestaff_friendly" "legion_commander_anims\legion_commander_forcestaff_friendly.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "legion_commander_forcestaff_enemy" "legion_commander_anims\legion_commander_forcestaff_enemy.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "legion_commander_forcestaff_end" "legion_commander_anims\legion_commander_forcestaff_end.smd" {
	fps 30
	activity "ACT_DOTA_FORCESTAFF_END" 1
}

$sequence "legion_commander_stun" "legion_commander_anims\legion_commander_stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "ARCANA_dualwield_legion_commander_loadout_spawn" "legion_commander_anims\ARCANA_dualwield_legion_commander_loadout_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "ARCANA_dualwield_legion_commander_loadout" "legion_commander_anims\ARCANA_dualwield_legion_commander_loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "ARCANA_dualwield_legion_commander_capture" "legion_commander_anims\ARCANA_dualwield_legion_commander_capture.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 10
	loop
}

$sequence "ARCANA_dualwield_legion_commander_capture_alt1" "legion_commander_anims\ARCANA_dualwield_legion_commander_capture_alt1.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
}

$sequence "dualwield_legion_commander_spawn" "legion_commander_anims\dualwield_legion_commander_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "dualwield_legion_commander_teleport_start" "legion_commander_anims\dualwield_legion_commander_teleport_start.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
}

$sequence "dualwield_legion_commander_teleport_end" "legion_commander_anims\dualwield_legion_commander_teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT_END" 1
}

$sequence "dualwield_legion_commander_idle" "legion_commander_anims\dualwield_legion_commander_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "dualwield_legion_commander_idle_injured" "legion_commander_anims\dualwield_legion_commander_idle_injured.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "dualwield_legion_commander_run" "legion_commander_anims\dualwield_legion_commander_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns_dupe1"
	{ event AE_CL_PLAYSOUND 6 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_LegionCommander.Footsteps" }
}

$sequence "dualwield_legion_commander_run_haste" "legion_commander_anims\dualwield_legion_commander_run_haste.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "dualwield_run_haste_turns"
	{ event AE_CL_PLAYSOUND 5 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_LegionCommander.Footsteps" }
}

$sequence "dualwield_legion_commander_run_overwhelmingodds" "legion_commander_anims\dualwield_legion_commander_run_overwhelmingodds.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "dualwield_run_haste_turns_dupe1"
	{ event AE_CL_PLAYSOUND 5 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_LegionCommander.Footsteps" }
}

$sequence "dualwield_legion_commander_run_injured" "legion_commander_anims\dualwield_legion_commander_run_injured.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "dualwield_run_injured_turns"
	{ event AE_CL_PLAYSOUND 6 "Hero_LegionCommander.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_LegionCommander.Footsteps" }
}

$sequence "dualwield_legion_commander_attack" "legion_commander_anims\dualwield_legion_commander_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 10 "LEGION_WEAPON_BLUR_DUAL follow_origin" }
}

$sequence "dualwield_legion_commander_attack1" "legion_commander_anims\dualwield_legion_commander_attack1.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 10 "LEGION_WEAPON_BLUR_DUALB follow_origin" }
}

$sequence "dualwield_legion_commander_attack_alt2" "legion_commander_anims\dualwield_legion_commander_attack_alt2.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "dualwield_legion_commander_momentofcourage" "legion_commander_anims\dualwield_legion_commander_momentofcourage.smd" {
	fps 30
	activity "ACT_DOTA_MOMENT_OF_COURAGE" 1
}

$sequence "dualwield_legion_commander_overodds" "legion_commander_anims\dualwield_legion_commander_overodds.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "dualwield_legion_commander_press" "legion_commander_anims\dualwield_legion_commander_press.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "dualwield_legion_commander_duel" "legion_commander_anims\dualwield_legion_commander_duel.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "dualwield_legion_commander_duel_kill" "legion_commander_anims\dualwield_legion_commander_duel_kill.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "dualwield_legion_commander_die" "legion_commander_anims\dualwield_legion_commander_die.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "dualwield_legion_commander_flail" "legion_commander_anims\dualwield_legion_commander_flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "dualwield_legion_commander_forcestaff_friendly" "legion_commander_anims\dualwield_legion_commander_forcestaff_friendly.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "dualwield_legion_commander_forcestaff_enemy" "legion_commander_anims\dualwield_legion_commander_forcestaff_enemy.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "dualwield_legion_commander_forcestaff_end" "legion_commander_anims\dualwield_legion_commander_forcestaff_end.smd" {
	fps 30
	activity "ACT_DOTA_FORCESTAFF_END" 1
}

$sequence "dualwield_legion_commander_stun" "legion_commander_anims\dualwield_legion_commander_stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "turns_lookFrame_0" "legion_commander_anims\turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_1" "legion_commander_anims\turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_2" "legion_commander_anims\turns_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_lookFrame_0" "legion_commander_anims\run_haste_turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_lookFrame_1" "legion_commander_anims\run_haste_turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_lookFrame_2" "legion_commander_anims\run_haste_turns_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_dupe1_lookFrame_0" "legion_commander_anims\run_haste_turns_dupe1_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_dupe1_lookFrame_1" "legion_commander_anims\run_haste_turns_dupe1_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_haste_turns_dupe1_lookFrame_2" "legion_commander_anims\run_haste_turns_dupe1_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_injured_turns_lookFrame_0" "legion_commander_anims\run_injured_turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_injured_turns_lookFrame_1" "legion_commander_anims\run_injured_turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "run_injured_turns_lookFrame_2" "legion_commander_anims\run_injured_turns_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_dupe1_lookFrame_0" "legion_commander_anims\turns_dupe1_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_dupe1_lookFrame_1" "legion_commander_anims\turns_dupe1_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_dupe1_lookFrame_2" "legion_commander_anims\turns_dupe1_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_lookFrame_0" "legion_commander_anims\dualwield_run_haste_turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_lookFrame_1" "legion_commander_anims\dualwield_run_haste_turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_lookFrame_2" "legion_commander_anims\dualwield_run_haste_turns_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_dupe1_lookFrame_0" "legion_commander_anims\dualwield_run_haste_turns_dupe1_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_dupe1_lookFrame_1" "legion_commander_anims\dualwield_run_haste_turns_dupe1_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_haste_turns_dupe1_lookFrame_2" "legion_commander_anims\dualwield_run_haste_turns_dupe1_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_injured_turns_lookFrame_0" "legion_commander_anims\dualwield_run_injured_turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_injured_turns_lookFrame_1" "legion_commander_anims\dualwield_run_injured_turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "dualwield_run_injured_turns_lookFrame_2" "legion_commander_anims\dualwield_run_injured_turns_lookFrame_2.smd" {
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

$sequence "run_haste_turns" {
	"@run_haste_turns_lookFrame_0"
	"@run_haste_turns_lookFrame_1"
	"@run_haste_turns_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "run_haste_turns_dupe1" {
	"@run_haste_turns_dupe1_lookFrame_0"
	"@run_haste_turns_dupe1_lookFrame_1"
	"@run_haste_turns_dupe1_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "run_injured_turns" {
	"@run_injured_turns_lookFrame_0"
	"@run_injured_turns_lookFrame_1"
	"@run_injured_turns_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "turns_dupe1" {
	"@turns_dupe1_lookFrame_0"
	"@turns_dupe1_lookFrame_1"
	"@turns_dupe1_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "dualwield_run_haste_turns" {
	"@dualwield_run_haste_turns_lookFrame_0"
	"@dualwield_run_haste_turns_lookFrame_1"
	"@dualwield_run_haste_turns_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "dualwield_run_haste_turns_dupe1" {
	"@dualwield_run_haste_turns_dupe1_lookFrame_0"
	"@dualwield_run_haste_turns_dupe1_lookFrame_1"
	"@dualwield_run_haste_turns_dupe1_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "dualwield_run_injured_turns" {
	"@dualwield_run_injured_turns_lookFrame_0"
	"@dualwield_run_injured_turns_lookFrame_1"
	"@dualwield_run_injured_turns_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$bonemerge "Root0_JNT"
$bonemerge "LeftLeg0_JNT"
$bonemerge "Spine0_JNT"
$bonemerge "RightHip0_JNT"
$bonemerge "RightLeg0_JNT"
$bonemerge "Skirt_F_R0C0"
$bonemerge "LeftHip0_JNT"
$bonemerge "weapon_0"
$bonemerge "Skirt_B_R0C0"
$bonemerge "Offhand0_JNT"
$bonemerge "LeftLeg1_JNT"
$bonemerge "LeftLeg2_JNT"
$bonemerge "LeftLeg3_JNT"
$bonemerge "Spine2_JNT"
$bonemerge "Banner_R_R0C0"
$bonemerge "Banner_L_R0C0"
$bonemerge "Spine3_JNT"
$bonemerge "Banner_R_R0C1"
$bonemerge "Banner_R_R0C2"
$bonemerge "Banner_R_R0C3"
$bonemerge "Banner_L_R0C1"
$bonemerge "Banner_L_R0C2"
$bonemerge "Banner_L_R0C3"
$bonemerge "LeftArm0_JNT"
$bonemerge "RightArm0_JNT"
$bonemerge "LeftShoulderHlpr0_JNT"
$bonemerge "RightShoulderHlpr0_JNT"
$bonemerge "Neck0_JNT"
$bonemerge "LeftArm1_JNT"
$bonemerge "LeftArm2_JNT"
$bonemerge "LeftArm3_JNT"
$bonemerge "LeftThmbFng0_JNT"
$bonemerge "LeftIndFng1_JNT"
$bonemerge "LeftRingFng1_JNT"
$bonemerge "LeftThmbFng1_JNT"
$bonemerge "LeftIndFng2_JNT"
$bonemerge "LeftRingFng2_JNT"
$bonemerge "RightArm1_JNT"
$bonemerge "RightArm2_JNT"
$bonemerge "RightArm3_JNT"
$bonemerge "RightThmbFng0_JNT"
$bonemerge "RightIndFng1_JNT"
$bonemerge "RightRingFng1_JNT"
$bonemerge "RightThmbFng1_JNT"
$bonemerge "RightIndFng2_JNT"
$bonemerge "RightRingFng2_JNT"
$bonemerge "Head0_JNT"
$bonemerge "RightLeg1_JNT"
$bonemerge "RightLeg2_JNT"
$bonemerge "RightLeg3_JNT"
$bonemerge "Skirt_F_R0C1"
$bonemerge "Skirt_B_R0C1"
$bonemerge "Skirt_B_R0C2"


$keyvalues
{
}
