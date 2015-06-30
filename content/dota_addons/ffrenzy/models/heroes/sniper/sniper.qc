// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/sniper.mdl"

$model "default" "sniper_reference.smd" {

	flexfile "sniper.vta" 
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
		flex "phonemeFV" frame 39
		flex "phonemeBMP" frame 40
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
	%phonemeFV = phonemeFV
	%phonemeBMP = phonemeBMP
}

$lod 1
{
	replacemodel "sniper_reference.smd" "sniper_model_lod1.smd"
}

$cdmaterials ""

$attachment "ArbitraryChain2_plc2" "beard2_0" 140.18 0 0 rotate 0 0 0
$attachment "attach_attack1" "WeaponRoot_0" -15.71 23.51 63.32 rotate -19.41 -73.43 6.1
$attachment "Thumb_plc1_R" "Cloth_test_R4C0" 11.79 0 0 rotate 0 0 0
$attachment "Index_plc1_R" "Cloth_test_R4C1" 13.9 0 0 rotate 0 0 0
$attachment "Mid_plc1_R" "Cloth_test_R4C2" 12.63 0 0 rotate 0 0 0
$attachment "attach_hitloc" "Spine_1" 0 0 0 rotate 70 0 0
$attachment "ArbitraryChain1_plc1" "bag1_1" 69.39 0 0 rotate 0 0 0
$attachment "attach_attack_tmp" "attach_attack_tmp" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "ankle_L" -3.852864 -6.985664 -8.258854 21.369644 14.832204 12.066071
// $hbox 0 "knee_L" 1.126437 -6.932925 -15.270861 15.681265 9.30722 6.926407
// $hbox 0 "ankle_R" -21.352613 -14.832205 -12.079629 3.79681 6.985668 8.262974
// $hbox 0 "knee_R" -13.81742 -9.30722 -6.926407 -1.126437 6.932925 15.270861
// $hbox 0 "head" -8.075072 -15.70496 -26.512384 20.998978 16.887871 13.005491
// $hbox 0 "wrist_L" -0.017026 -4.649646 -10.694317 19.684052 10.441888 5.366077
// $hbox 0 "elbow_L" 0.624899 -8.922032 -10.92693 27.486565 8.150064 8.741087
// $hbox 0 "bicep_L" 2.408892 -8.067914 -11.967195 23.064281 9.415325 8.529541
// $hbox 0 "wrist_R" -19.367504 -10.179688 -5.543176 -1.76432 4.625674 10.740271
// $hbox 0 "elbow_R" -27.570131 -8.159757 -8.638153 -0.625117 8.806315 10.823827
// $hbox 0 "bicep_R" -23.869862 -10.817214 -9.262478 -1.033864 8.927504 13.034106
// $hbox 0 "Spine_1" 2.862851 -11.16581 1.164278 11.989531 11.23236 7.219467
// $hbox 0 "Spine_0" -3.521321 -13.502 5.095987 18.28701 19.830549 11.099643
// $hbox 0 "root" -14.059097 -22.90605 -16.673098 21.720394 23.395121 17.62454
// $hboxset "select_high"
// $hbox 0 "root" -22.628054 -26.295937 5.288566 31.220814 26.548643 54.601974
// $hbox 0 "root" -27.072678 -29.978354 -52.791756 33.505447 30.114576 5.792593
// $hboxset "select_low"
// $hbox 0 "root" -72.422272 -77.613525 -52.052006 85.320213 77.755951 57.837181
// $hboxset "feet"
// $hbox 0 "ankle_L" -3.852864 -6.985664 -8.258854 21.369644 14.832204 12.066071
// $hbox 0 "ankle_R" -21.352613 -14.832205 -12.079629 3.79681 6.985668 8.262974
// $hboxset "head"
// $hbox 0 "head" -9.528215 -16.465677 -27.630968 22.267797 16.322062 13.507345
// $hboxset "hands"
// $hbox 0 "wrist_L" -0.753736 -5.690924 -6.942822 19.929024 11.371873 7.041101
// $hbox 0 "wrist_R" -18.712488 -10.381557 -6.894138 -1.689866 5.120855 10.990806
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 51.677372 -5.107393 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "vsDmxIO Scene" "" 0 0 0 0 0 0 0 0 0 0 0 0
// $definebone "Spine_0" "root" -5.967787 0 22.022251 0.000001 -1.468407 0 0 0 0 0 0 0
// $definebone "bag1_0" "root" 1.82523 20.097429 3.393505 1.766147 0.505638 1.666348 0 0 0 0 0 0
// $definebone "hip_R" "root" 0.831332 -15.068958 -6.05471 -2.218938 -1.362889 2.063272 0 0 0 0 0 0
// $definebone "hip_L" "root" 0.831332 15.068958 -6.05471 0.922655 1.362889 1.078321 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 20.591797 0.000001 0 0 0.223676 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 13.240479 0.000001 0.000004 0 0.619319 0 0 0 0 0 0 0
// $definebone "neck_1" "Spine_2" 7.900215 0 0.000008 0 0.076832 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" -0.656044 -9.765054 -8.795006 -1.570796 -0.477007 0.984978 0 0 0 0 0 0
// $definebone "Cloth_test_R0C0" "Spine_2" -0.269169 -3.465325 6.412254 -1.578359 0.333425 -3.134171 0 0 0 0 0 0
// $definebone "Cloth_test_R0C1" "Spine_2" 3.022766 8.61482 5.118248 -1.459257 0.023777 2.988564 0 0 0 0 0 0
// $definebone "Cloth_test_R0C2" "Spine_2" 9.131149 16.317993 -4.259682 -1.351414 -0.499684 2.762297 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" -0.65604 9.765052 -8.795006 1.570796 0.477008 2.156615 0 0 0 0 0 0
// $definebone "head" "neck_1" 6.880684 0 0 0 0.54858 0 0 0 0 0 0 0
// $definebone "beard2_0" "head" 12.863417 -0.390521 -18.168755 -1.570796 -0.041888 1.570796 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -18.647907 0.000004 -0.000004 -1.885416 -0.03586 0.051768 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -22.72097 0.000008 -0.000004 0 0.953987 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -26.806988 -0.000008 0.000004 -0.431386 -0.320252 0.420516 0 0 0 0 0 0
// $definebone "Index_0_R" "wrist_R" -8.346111 0.809723 -0.174816 1.312488 0.052607 0.564091 0 0 0 0 0 0
// $definebone "WeaponRoot_0" "wrist_R" -29.453142 11.003975 3.988226 0 0 0 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -2.84547 -0.892807 2.64362 2.164759 0.826687 0.126163 0 0 0 0 0 0
// $definebone "Index_1_R" "Index_0_R" -6.459446 -0.083387 -2.364155 0 0.395627 0 0 0 0 0 0 0
// $definebone "Index_2_R" "Index_1_R" -5.194641 0.000006 0 0 0 0 0 0 0 0 0 0
// $definebone "Gun_cock_0" "WeaponRoot_0" -1.107825 4.39476 -3.497442 1.27789 -1.216289 2.171174 0 0 0 0 0 0
// $definebone "crank" "WeaponRoot_0" 4.888919 4.90464 1.884235 2.798149 -0.089668 0.355021 0 0 0 0 0 0
// $definebone "barrel" "WeaponRoot_0" -8.35031 11.11515 17.412561 2.848686 -1.216289 2.171174 0 0 0 0 0 0
// $definebone "Thumb_1_R" "Thumb_0_R" -5.780602 -0.000003 0.000008 0 0.742922 0 0 0 0 0 0 0
// $definebone "Thumb_2_R" "Thumb_1_R" -6.163414 -0.000003 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "Cloth_test_R1C0" "Cloth_test_R0C0" 15.91452 -0.000008 0.000001 -0.231276 -0.058931 0.366909 0 0 0 0 0 0
// $definebone "Cloth_test_R2C0" "Cloth_test_R1C0" 19.961983 -0.000004 -0.000001 0.306736 -0.066278 0.193465 0 0 0 0 0 0
// $definebone "Cloth_test_R3C0" "Cloth_test_R2C0" 33.156685 0.000004 -0.000006 -0.003657 -0.049937 -0.019794 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "Cloth_test_R3C0" 21.074413 0 0.000001 -0.14323 -0.118016 0.201243 0 0 0 0 0 0
// $definebone "Cloth_test_R1C1" "Cloth_test_R0C1" 14.977009 0 -0.000002 -0.190782 -0.040665 0.722694 0 0 0 0 0 0
// $definebone "Cloth_test_R2C1" "Cloth_test_R1C1" 23.529106 -0.000004 0.000003 0.187483 -0.05539 0.090272 0 0 0 0 0 0
// $definebone "Cloth_test_R3C1" "Cloth_test_R2C1" 29.038918 -0.000011 -0.000001 -0.119643 -0.087045 0.116655 0 0 0 0 0 0
// $definebone "Cloth_test_R4C1" "Cloth_test_R3C1" 19.557243 0.000002 -0.000001 0.024963 0.058326 -0.079066 0 0 0 0 0 0
// $definebone "Cloth_test_R1C2" "Cloth_test_R0C2" 18.40144 0.000015 -0.000002 0.03513 0.009085 1.22884 0 0 0 0 0 0
// $definebone "Cloth_test_R2C2" "Cloth_test_R1C2" 27.277985 0.000004 0.000002 -0.085914 -0.003447 0.165989 0 0 0 0 0 0
// $definebone "Cloth_test_R3C2" "Cloth_test_R2C2" 27.018967 -0.000004 -0.000002 -0.128582 0.043042 0.020602 0 0 0 0 0 0
// $definebone "Cloth_test_R4C2" "Cloth_test_R3C2" 16.489975 -0.000002 0.000002 0.079209 -0.112971 0.007228 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 18.647903 -0.000004 -0.000008 -1.885416 -0.03586 0.051768 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 22.72097 0 -0.000004 0.000001 0.953987 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 26.806984 -0.000008 0.000001 -0.431386 -0.320252 0.420516 0 0 0 0 0 0
// $definebone "Mid_0_L" "wrist_L" 8.346104 -0.809731 0.174819 1.312488 0.052608 0.564091 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 2.845493 0.892815 -2.643634 2.164758 0.826688 0.126162 0 0 0 0 0 0
// $definebone "Mid_1_L" "Mid_0_L" 6.459461 0.083385 2.364166 0 0.395627 0.000001 0 0 0 0 0 0
// $definebone "Mid_2_L" "Mid_1_L" 5.194633 -0.000003 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_L" "Index_0_L" 5.7806 0 0 0 0.742922 0 0 0 0 0 0 0
// $definebone "Index_2_L" "Index_1_L" 6.163425 -0.000001 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "bag1_1" "bag1_0" 7.951967 0.000004 0 -0.009897 -0.027512 -0.711605 0 0 0 0 0 0
// $definebone "knee_R" "hip_R" -19.716015 0 -0.000001 0 0.396565 0 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -22.207924 0 -0.000003 1.332506 -1.194137 -1.382173 0 0 0 0 0 0
// $definebone "toe_R" "ankle_R" -11.840326 0 0.000008 3.141592 0.321751 -3.141593 0 0 0 0 0 0
// $definebone "knee_L" "hip_L" 19.716017 -0.000002 -0.000002 0 0.396565 0 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 22.207933 0.000004 0.000002 1.332507 -1.194137 -1.382174 0 0 0 0 0 0
// $definebone "toe_L" "ankle_L" 11.840331 0 -0.000006 -0.042414 -0.376575 -0.049152 0 0 0 0 0 0
// $definebone "attach_attack_tmp" "" 67 -17 55 0 0 0 0 0 0 0 0 0

$sectionframes 30 122




$sequence "BindPose" "sniper_anims\BindPose.smd" {
	fps 30
}

$sequence "loadout_spawn" "sniper_anims\loadout_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
	fadeout 0.3
}

$sequence "loadout" "sniper_anims\loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 15
	loop
}

$sequence "spawn" "sniper_anims\spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
	{ event AE_CL_PLAYSOUND 4 "BodyImpact_Common.Light" }
	{ event AE_CL_PLAYSOUND 22 "BodyImpact_Common.Light" }
}

$sequence "sniper_run" "sniper_anims\sniper_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 1 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 11 "Hero_Sniper.Footsteps" }
}

$sequence "sniper_idle" "sniper_anims\sniper_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "sniper_portrait" "sniper_anims\sniper_portrait.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "sniper_portrait_instagib" "sniper_anims\sniper_portrait_instagib.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "sniper_portrait_great_safari" "sniper_anims\sniper_portrait_great_safari.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "sniper_attack" "sniper_anims\sniper_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "sniper_death" "sniper_anims\sniper_death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 2
	{ event AE_CL_PLAYSOUND 36 "BodyImpact_Common.Light" }
	{ event AE_CL_PLAYSOUND 67 "BodyImpact_Common.Light" }
}

$sequence "sniper_attack_schrapnel_cast1_aggressive" "sniper_anims\sniper_attack_schrapnel_cast1_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "sniper_assassinate_cast4_aggressive" "sniper_anims\sniper_assassinate_cast4_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "sniper_idle_aggressive" "sniper_anims\sniper_idle_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "sniper_run_aggressive" "sniper_anims\sniper_run_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 1 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 11 "Hero_Sniper.Footsteps" }
}

$sequence "sniper_flail" "sniper_anims\sniper_flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "sniper_stun" "sniper_anims\sniper_stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "teleport" "sniper_anims\teleport.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
	loop
	{ event AE_CL_PLAYSOUND 12 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 28 "Hero_Sniper.Footsteps" }
}

$sequence "teleport_end" "sniper_anims\teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT_END" 1
	{ event AE_CL_PLAYSOUND 4 "BodyImpact_Common.Light" }
	{ event AE_CL_PLAYSOUND 22 "BodyImpact_Common.Light" }
}

$sequence "assassinate_instagib_aggressive" "sniper_anims\assassinate_instagib_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "workshop_anim_00" "sniper_anims\workshop_anim_00.smd" {
	fps 30
}

$sequence "workshop_anim_01" "sniper_anims\workshop_anim_01.smd" {
	fps 30
}

$sequence "workshop_anim_02" "sniper_anims\workshop_anim_02.smd" {
	fps 30
}

$sequence "workshop_anim_03" "sniper_anims\workshop_anim_03.smd" {
	fps 30
}

$sequence "workshop_anim_04" "sniper_anims\workshop_anim_04.smd" {
	fps 30
}

$sequence "workshop_anim_05" "sniper_anims\workshop_anim_05.smd" {
	fps 30
}

$sequence "workshop_anim_06" "sniper_anims\workshop_anim_06.smd" {
	fps 30
}

$sequence "workshop_anim_07" "sniper_anims\workshop_anim_07.smd" {
	fps 30
}

$sequence "workshop_anim_08" "sniper_anims\workshop_anim_08.smd" {
	fps 30
}

$sequence "workshop_anim_09" "sniper_anims\workshop_anim_09.smd" {
	fps 30
}

$sequence "sniper_victory" "sniper_anims\sniper_victory.smd" {
	fps 30
	activity "ACT_DOTA_VICTORY" 1
	loop
	{ event AE_CL_PLAYSOUND 13 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 30 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 42 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 60 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 72 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 90 "Hero_Sniper.Footsteps" }
}

$sequence "sniper_victory_alt" "sniper_anims\sniper_victory_alt.smd" {
	fps 30
	activity "ACT_DOTA_VICTORY" 1
	loop
	{ event AE_CL_PLAYSOUND 13 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 28 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 45 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 58 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 77 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 96 "Hero_Sniper.Tutorial_Intro_a" }
	{ event AE_CL_PLAYSOUND 107 "Hero_Sniper.Tutorial_Intro_b" }
	{ event AE_CL_PLAYSOUND 116 "Hero_Sniper.Tutorial_Intro_c" }
	{ event AE_CL_PLAYSOUND 143 "Hero_Sniper.Tutorial_Intro_a" }
	{ event AE_CL_PLAYSOUND 162 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 176 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 192 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 204 "Hero_Sniper.Footsteps" }
}

$sequence "sniper_intro_short" "sniper_anims\sniper_intro_short.smd" {
	fps 30
	activity "ACT_DOTA_INTRO" 1
	{ event AE_CL_SPEECH 10 "TLK_DOTA_TAUNT|taunt_type=sniper_here_salute" }
	{ event AE_CL_PLAYSOUND 71 "Hero_Sniper.Tutorial_Intro_a" }
	{ event AE_CL_PLAYSOUND 82 "Hero_Sniper.Tutorial_Intro_b" }
	{ event AE_CL_PLAYSOUND 102 "Hero_Sniper.Tutorial_Intro_c" }
	{ event AE_CL_PLAYSOUND 20 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 22 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 71 "Hero_Sniper.Footsteps" }
}

$sequence "sniper_death_fall_back_alt" "sniper_anims\sniper_death_fall_back_alt.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 9 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 48 "BodyImpact_Common.Light" }
	{ event AE_CL_PLAYSOUND 56 "Hero_Sniper.Tutorial_Intro_a" }
}

$sequence "sniper_idle_wolfhound" "sniper_anims\sniper_idle_wolfhound.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 3
	loop
}

$sequence "sniper_wolfhound_idle_alt" "sniper_anims\sniper_wolfhound_idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "sniper_loadout_wolfhound_alt" "sniper_anims\sniper_loadout_wolfhound_alt.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "sniper_portrait_wolfhound" "sniper_anims\sniper_portrait_wolfhound.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 2
	loop
}

$sequence "sniper_portrait_wolfhound_alt" "sniper_anims\sniper_portrait_wolfhound_alt.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "MGC_sniper_idle_short" "sniper_anims\MGC_sniper_idle_short.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "MGC_sniper_idle" "sniper_anims\MGC_sniper_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
	loop
}

$sequence "MGC_sniper_death" "sniper_anims\MGC_sniper_death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_CREATE_PARTICLE_EFFECT 30 "SNIPER_DEATH_CHARLIE follow_attachment attach_attack1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 36 "SNIPER_DEATH_CHARLIE follow_attachment attach_attack1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 42 "SNIPER_DEATH_CHARLIE follow_attachment attach_attack1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 48 "SNIPER_DEATH_CHARLIE follow_attachment attach_attack1" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 54 "SNIPER_DEATH_CHARLIE follow_attachment attach_attack1" }
	{ event AE_CL_PLAYSOUND 30 "Hero_Sniper.MKG_deathshot" }
	{ event AE_CL_PLAYSOUND 36 "Hero_Sniper.MKG_deathshot" }
	{ event AE_CL_PLAYSOUND 42 "Hero_Sniper.MKG_deathshot" }
	{ event AE_CL_PLAYSOUND 48 "Hero_Sniper.MKG_deathshot" }
	{ event AE_CL_PLAYSOUND 54 "Hero_Sniper.MKG_deathshot" }
}

$sequence "MGC_sniper_attack_fast" "sniper_anims\MGC_sniper_attack_fast.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "MGC_sniper_attack_faster" "sniper_anims\MGC_sniper_attack_faster.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "MGC_sniper_attack_fastest" "sniper_anims\MGC_sniper_attack_fastest.smd" {
	fps 20
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "MGC_sniper_attack" "sniper_anims\MGC_sniper_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "MGC_sniper_run" "sniper_anims\MGC_sniper_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 1 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 11 "Hero_Sniper.Footsteps" }
}

$sequence "MGC_sniper_run_aggressive" "sniper_anims\MGC_sniper_run_aggressive.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 1 "Hero_Sniper.Footsteps" }
	{ event AE_CL_PLAYSOUND 11 "Hero_Sniper.Footsteps" }
}

$sequence "MGC_sniper_aggressive_idle" "sniper_anims\MGC_sniper_aggressive_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "MGC_sniper_aggressive_idle_long" "sniper_anims\MGC_sniper_aggressive_idle_long.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "MGC_sniper_loadout" "sniper_anims\MGC_sniper_loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
}

$sequence "MGC_assassinate" "sniper_anims\MGC_assassinate.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "MGC_sniper_schrapnal" "sniper_anims\MGC_sniper_schrapnal.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "MGC_sniper_flail" "sniper_anims\MGC_sniper_flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "MGC_sniper_portrait" "sniper_anims\MGC_sniper_portrait.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "sniper_taunt_quickdraw" "sniper_anims\sniper_taunt_quickdraw.smd" {
	fps 30
	activity "ACT_DOTA_TAUNT" 1
	fadein 0.3
	fadeout 0.6
	{ event AE_CL_SPEECH 5 "TLK_DOTA_TAUNT|taunt_type=quick_draw" }
}

$sequence "sniper_attack_assassinate_dreamleague" "sniper_anims\sniper_attack_assassinate_dreamleague.smd" {
	fps 24
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$bonemerge "root"
$bonemerge "Spine_0"
$bonemerge "bag1_0"
$bonemerge "hip_R"
$bonemerge "hip_L"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "neck_1"
$bonemerge "clavicle_R"
$bonemerge "Cloth_test_R0C0"
$bonemerge "Cloth_test_R0C1"
$bonemerge "Cloth_test_R0C2"
$bonemerge "clavicle_L"
$bonemerge "head"
$bonemerge "beard2_0"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "Index_0_R"
$bonemerge "WeaponRoot_0"
$bonemerge "Thumb_0_R"
$bonemerge "Index_1_R"
$bonemerge "Index_2_R"
$bonemerge "Gun_cock_0"
$bonemerge "crank"
$bonemerge "barrel"
$bonemerge "Thumb_1_R"
$bonemerge "Thumb_2_R"
$bonemerge "Cloth_test_R1C0"
$bonemerge "Cloth_test_R2C0"
$bonemerge "Cloth_test_R3C0"
$bonemerge "Cloth_test_R1C1"
$bonemerge "Cloth_test_R2C1"
$bonemerge "Cloth_test_R3C1"
$bonemerge "Cloth_test_R1C2"
$bonemerge "Cloth_test_R2C2"
$bonemerge "Cloth_test_R3C2"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"
$bonemerge "Mid_0_L"
$bonemerge "Index_0_L"
$bonemerge "Mid_1_L"
$bonemerge "Mid_2_L"
$bonemerge "Index_1_L"
$bonemerge "Index_2_L"
$bonemerge "knee_R"
$bonemerge "ankle_R"
$bonemerge "toe_R"
$bonemerge "knee_L"
$bonemerge "ankle_L"
$bonemerge "toe_L"


$keyvalues
{
}
