// Created by Crowbar 0.24.0.0

$modelname "heroes/windrunner/windrunner.mdl"

$model "default" "windrunner_reference.smd" {

	flexfile "windrunner.vta" 
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
		flex "eyeClosed__eyeUp" frame 41
		flex "eyeClosed__eyeDown" frame 42
		flex "jawOpen__lipCornerPuller" frame 43
		flex "lipPuckerer__lowerLipFunneler" frame 44
		flex "lipPuckerer__upperLipFunneler" frame 45
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
	%eyeClosed__eyeUp =  min(eyeClosedAndLidRaiser, 0) * -1 *  max(eyeDownAndUp, 0)
	%eyeClosed__eyeDown =  min(eyeClosedAndLidRaiser, 0) * -1 *  min(eyeDownAndUp, 0) * -1
	%jawOpen__lipCornerPuller =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP), 0) * lipCornerPuller
	%lipPuckerer__lowerLipFunneler = lipPuckerer *  max((lowerLipFunneler - lowerLipFunneler * 1 * phonemeFV + lowerLipFunneler * 1 * phonemeBMP), 0)
	%lipPuckerer__upperLipFunneler = lipPuckerer *  max((upperLipFunneler - upperLipFunneler * 1 * phonemeFV + upperLipFunneler * 1 * phonemeBMP), 0)
}

$lod 1
{
	replacemodel "windrunner_reference.smd" "windrunner_windranger_base_lod1.smd"
}

$poseparameter "look" -1 1 0

$cdmaterials ""

$attachment "bow_top" "joint8" 22 1 -3 rotate 0 0 0
$attachment "bow_bot" "joint3" 17 2.35 1 rotate 0 0 0
$attachment "attach_attack1" "bowstring_jnt" -35 10 0 rotate 0 0 0
$attachment "bowstring" "bowstring_jnt" 0 0 0 rotate 0 0 0
$attachment "bow_mid1" "bow_1" 0 0 0 rotate 0 0 0
$attachment "bow_mid" "wrist_R" -13 0 0 rotate 0 0 0
$attachment "Thumb_plc0_L" "cape_R2C2" 12.57 0 0 rotate 0 138.45 90
$attachment "Index_plc0_L" "cape_R2C0" 12.57 0 0 rotate 0 138.45 90
$attachment "attach_hitloc" "spine2" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "ankle_R" -14.315421 -5.813373 -3.403958 1.122524 3.653087 13.673979
// $hbox 0 "knee_R" -39.76733 -7.344049 -8.285116 18.640673 7.447766 12.481486
// $hbox 0 "thigh_R" -46.989704 -10.010372 -10.781947 1.152623 11.335544 13.701055
// $hbox 0 "ankle_L" -1.227606 -4.167686 -13.742621 12.826746 5.298748 3.335316
// $hbox 0 "knee_L" -18.658747 -8.0421 -12.423656 39.729702 6.709383 8.492312
// $hbox 0 "thigh_L" -4.10282 -11.737531 -17.235136 47.006924 10.156638 8.63167
// $hbox 0 "bow_1" -5.711137 -46.614376 -1.839287 1.708994 55.442234 9.051746
// $hbox 0 "wrist_L" 0.27545 -2.720263 -4.616186 12.295736 5.068618 4.976845
// $hbox 0 "elbow_L" -4.323135 -4.669405 -6.343878 28.712301 7.204843 5.285072
// $hbox 0 "bicep_L" -5.901611 -5.324406 -7.287076 29.12571 5.60982 6.451486
// $hbox 0 "ponyTail_R1C0" 3.152583 -2.691355 -3.304278 4.121917 2.259508 -1.694481
// $hbox 0 "ponyTail_R0C0" -3.701473 -1.442168 -2.843853 -2.259372 0.22909 -1.628628
// $hbox 0 "head" -8.711854 -5.204617 -14.402476 10.898787 6.495194 14.138836
// $hbox 0 "head" -8.711854 -5.204617 -14.402476 10.898787 6.495194 14.138836
// $hbox 0 "head" -8.711854 -5.204617 -14.402476 10.898787 6.495194 14.138836
// $hbox 0 "wrist_R" -12.485704 -3.578565 -5.300963 0.59639 2.61379 4.302152
// $hbox 0 "elbow_R" -31.192112 -5.428512 -5.958916 0.371236 5.317583 4.901144
// $hbox 0 "bicep_R" -29.211817 -5.326541 -6.69538 5.799396 5.95347 6.234134
// $hbox 0 "spine3" -21.268412 -18.697113 -9.490499 14.608156 17.519421 19.145657
// $hbox 0 "spine2" -4.807434 -10.3935 -9.547452 6.572266 11.168535 11.186045
// $hbox 0 "root" -13.773732 -15.30527 -18.51548 12.283197 15.30527 9.909489
// $hboxset "feet"
// $hbox 0 "ankle_R" -14.315421 -5.813373 -3.403958 1.122524 3.653087 13.673979
// $hbox 0 "ankle_L" -1.227606 -4.167686 -11.655217 12.826746 5.298748 5.422721
// $hboxset "weapon"
// $hbox 0 "bow_1" -5.711137 -46.614376 -1.839287 1.708994 55.442234 9.051746
// $hboxset "hands"
// $hbox 0 "wrist_L" 0.27545 -1.757805 -4.616186 12.295736 6.031076 4.976845
// $hbox 0 "wrist_R" -12.485704 -2.980386 -5.300963 0.59639 3.211968 4.302152
// $hboxset "head"
// $hbox 0 "head" -8.711854 -5.204617 -14.402476 10.898787 6.495194 14.138836
// $hboxset "select_high"
// $hbox 0 "root" -22.923792 -20.256355 -92.187981 12.908685 20.218216 34.728401
// $hboxset "select_low"
// $hbox 0 "root" -62.070881 -59.003567 -91.740402 54.453854 58.965427 56.492764
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183856 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine2" "root" 1.468489 0 13.805962 -3.141593 -1.439985 -3.141592 0 0 0 0 0 0
// $definebone "thigh_R" "root" -0.718102 -10.135121 -3.070084 -1.446038 -1.417987 1.246474 0 0 0 0 0 0
// $definebone "thigh_L" "root" -0.782949 9.93711 -3.083984 1.778927 1.414539 1.887593 0 0 0 0 0 0
// $definebone "spine3" "spine2" 12.333145 0 -1.00086 0 -0.594358 0 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 5.647858 -3.095643 -3.190628 -1.570796 0.336288 1.723915 0 0 0 0 0 0
// $definebone "quiver" "spine3" 14.488457 -2.962095 16.347946 -0.515058 0.035037 -0.408486 0 0 0 0 0 0
// $definebone "clavicle_L" "spine3" 5.801483 3.303892 -3.141594 1.570796 -0.332645 1.41948 0 0 0 0 0 0
// $definebone "cape_R0C0" "spine3" 12.882019 8.98349 10.661125 1.640662 -0.722406 3.036146 0 0 0 0 0 0
// $definebone "cape_R0C2" "spine3" 12.882019 -8.064875 10.661133 1.483867 -0.720882 -3.010318 0 0 0 0 0 0
// $definebone "cape_R0C1" "spine3" 12.209137 1.034271 11.257477 1.561812 -0.725124 -3.128047 0 0 0 0 0 0
// $definebone "neck1" "spine3" 9.989594 0.000001 0 0 0.992816 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -10.069981 0.000008 -0.000008 -0.827928 0.738356 0.849272 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -24.952614 0.000004 -0.000002 0 0.452171 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -25.67514 0.967999 0.915592 0.716846 -0.07 0.34834 0 0 0 0 0 0
// $definebone "forearm_jnt" "elbow_R" -13.86591 0.430107 0.416599 0.692183 0.034036 -0.036899 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -6.056072 -0.512192 3.073547 2.79801 -0.109223 -0.093795 0 0 0 0 0 0
// $definebone "ring_0_R" "wrist_R" -6.860474 3.307983 -3.636777 1.304582 -0.098051 0.410108 0 0 0 0 0 0
// $definebone "mid_0_R" "wrist_R" -7.568501 3.83432 -0.683565 1.44692 0 0.162918 0 0 0 0 0 0
// $definebone "thumb_1_R" "thumb_0_R" -3.778385 0.000004 -0.010334 0 0.18463 0 0 0 0 0 0 0
// $definebone "ring_1_R" "ring_0_R" -4.875671 -0.000001 -0.58123 0 0.927103 0 0 0 0 0 0 0
// $definebone "mid_1_R" "mid_0_R" -4.871101 0.000006 -0.281052 0.000002 1.103229 0.000002 0 0 0 0 0 0
// $definebone "arrow_1" "quiver" -11.431305 12.463192 10.587372 0 0 0 0 0 0 0 0 0
// $definebone "arrow_2" "quiver" -12.087845 10.81171 11.169214 0 0 0 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 10.176103 -0.000015 -0.000015 -0.764474 0.736322 0.81671 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 26.5028 -0.000011 0.000006 0 0.447716 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 23.894051 0.000015 0.000004 0.650133 -0.03032 0.267044 0 0 0 0 0 0
// $definebone "bow_1" "wrist_L" 77.388779 26.545605 -51.488251 0 0 0 0 0 0 0 0 0
// $definebone "joint6" "bow_1" 2.443733 -11.098888 4.305389 -2.913244 0.773842 -1.138807 0 0 0 0 0 0
// $definebone "joint1" "bow_1" -2.989395 13.273392 -2.159805 -1.160985 1.393343 0.6866 0 0 0 0 0 0
// $definebone "bowstring_jnt" "bow_1" -4.694054 4.940876 19.505188 -0.519719 -1.238721 2.337621 0 0 0 0 0 0
// $definebone "joint7" "joint6" 6.289124 -0.112274 -21.863062 0.000001 1.521339 -0.000001 0 0 0 0 0 0
// $definebone "joint8" "joint7" 21.489466 1.280215 -2.082642 0 0.437664 0 0 0 0 0 0 0
// $definebone "joint2" "joint1" 0.157379 -0.072339 24.036352 -3.141571 -1.561992 3.141569 0 0 0 0 0 0
// $definebone "joint3" "joint2" 23.273912 0.739798 6.335163 0 -0.46709 0 0 0 0 0 0 0
// $definebone "cape_R1C0" "cape_R0C0" 25.017906 5.027225 -0.000002 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C0" "cape_R1C0" 27.6912 0.000004 0 0 0 0 0 0 0 0 0 0
// $definebone "cape_R1C2" "cape_R0C2" 25.017891 5.027228 0.000002 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C2" "cape_R1C2" 27.691212 -0.000004 0.000002 0 0 0 0 0 0 0 0 0
// $definebone "cape_R1C1" "cape_R0C1" 25.017876 5.02723 0.000001 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C1" "cape_R1C1" 33.304028 0.000004 -0.000002 0 0 0 0 0 0 0 0 0
// $definebone "head" "neck1" 12.274483 0.000002 -0.000011 -0.000001 1.30315 -0.000001 0 0 0 0 0 0
// $definebone "ponyTail_R0C0" "head" -6.112836 0.745099 7.28862 0 0.338953 -3.141593 0 0 0 0 0 0
// $definebone "ponyTail_R1C0" "ponyTail_R0C0" 8.482445 -0.078127 -4.394821 0 0.461756 0 0 0 0 0 0 0
// $definebone "ponyTip" "ponyTail_R1C0" 12.999191 -1.347978 -1.541313 2.371505 0 -1.570796 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -41.455303 0.000002 0.000005 0 0.130497 0 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -39.862682 0.230652 -1.943356 -0.264008 -1.014818 0.05167 0 0 0 0 0 0
// $definebone "toeBase_R" "ankle_R" -12.632463 0.297409 -3.67046 3.060436 0.685645 3.013835 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 41.477554 0 -0.000012 0 0.128362 0 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 39.779579 -1.27317 1.796588 -0.430457 -1.001857 0.177279 0 0 0 0 0 0
// $definebone "toeBase_L" "ankle_L" 12.955212 0.812107 3.936628 0.93576 -1.492775 -1.01061 0 0 0 0 0 0
// $definebone "spine1" "root" 1.343908 0.145949 8.508171 -2.451296 -1.414462 2.506524 0 0 0 0 0 0

$sectionframes 30 119




$sequence "BindPose" "windrunner_anims\BindPose.smd" {
	fps 30
}

$sequence "runN" "windrunner_anims\runN.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 2 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "focus_fire_run" "windrunner_anims\focus_fire_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 2 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "runN_windrun" "windrunner_anims\runN_windrun.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 2 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "runN_windrun_windy" "windrunner_anims\runN_windrun_windy.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 3 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "idle" "windrunner_anims\idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 5
	loop
}

$sequence "idle_alt" "windrunner_anims\idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
	loop
}

$sequence "portrait" "windrunner_anims\portrait.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 5
	loop
}

$sequence "attack_1" "windrunner_anims\attack_1.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "death" "windrunner_anims\death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 28 "BodyImpact_Common.Light" }
	{ event AE_CL_PLAYSOUND 36 "BodyImpact_Common.Light" }
}

$sequence "powershot_cast" "windrunner_anims\powershot_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "powershot_release" "windrunner_anims\powershot_release.smd" {
	fps 30
	activity "ACT_DOTA_OVERRIDE_ABILITY_2" 1
}

$sequence "sparrowhawk_attack_base" "windrunner_anims\sparrowhawk_attack_base.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 4
}

$sequence "sparrowhawk_attack_alt01" "windrunner_anims\sparrowhawk_attack_alt01.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "sparrowhawk_runN" "windrunner_anims\sparrowhawk_runN.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 3 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 15 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_powershot_cast" "windrunner_anims\sparrowhawk_powershot_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
	{ event AE_CL_PLAYSOUND 16 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 27 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_powershot_release" "windrunner_anims\sparrowhawk_powershot_release.smd" {
	fps 30
	activity "ACT_DOTA_OVERRIDE_ABILITY_2" 1
	{ event AE_CL_PLAYSOUND 16 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_runN_windrun" "windrunner_anims\sparrowhawk_runN_windrun.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 2 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_runN_windrun_combo" "windrunner_anims\sparrowhawk_runN_windrun_combo.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	{ event AE_CL_PLAYSOUND 2 "Hero_Windrunner.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_idle_alt_base" "windrunner_anims\sparrowhawk_idle_alt_base.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "sparrowhawk_idle_alt" "windrunner_anims\sparrowhawk_idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "sparrowhawk_death" "windrunner_anims\sparrowhawk_death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "sparrowhawk_death_dropB" "windrunner_anims\sparrowhawk_death_dropB.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "sparrowhawk_death_dropC" "windrunner_anims\sparrowhawk_death_dropC.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
}

$sequence "sparrowhawk_loadout" "windrunner_anims\sparrowhawk_loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "sparrowhawk_shackleshot" "windrunner_anims\sparrowhawk_shackleshot.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
	{ event AE_CL_PLAYSOUND 12 "Hero_Windrunner.Footsteps" }
}

$sequence "sparrowhawk_focus_fire" "windrunner_anims\sparrowhawk_focus_fire.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "sparrowhawk_focus_fire_idle" "windrunner_anims\sparrowhawk_focus_fire_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
}

$sequence "stinger_attack_base" "windrunner_anims\stinger_attack_base.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 4
}

$sequence "stinger_attack_alt01" "windrunner_anims\stinger_attack_alt01.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "stinger_powershot_cast" "windrunner_anims\stinger_powershot_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "stinger_powershot_release" "windrunner_anims\stinger_powershot_release.smd" {
	fps 30
	activity "ACT_DOTA_OVERRIDE_ABILITY_2" 1
}

$sequence "lyreleis_attack_base" "windrunner_anims\lyreleis_attack_base.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 4
}

$sequence "lyreleis_attack_alt01" "windrunner_anims\lyreleis_attack_alt01.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "lyreleis_powershot_cast" "windrunner_anims\lyreleis_powershot_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_2" 1
}

$sequence "lyreleis_powershot_release" "windrunner_anims\lyreleis_powershot_release.smd" {
	fps 30
	activity "ACT_DOTA_OVERRIDE_ABILITY_2" 1
}

$sequence "stun" "windrunner_anims\stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "shackleshot" "windrunner_anims\shackleshot.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "flail" "windrunner_anims\flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "focus_fire" "windrunner_anims\focus_fire.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "focus_fire_idle" "windrunner_anims\focus_fire_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
}

$sequence "spawn" "windrunner_anims\spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "workshop_anim_00" "windrunner_anims\workshop_anim_00.smd" {
	fps 30
}

$sequence "workshop_anim_01" "windrunner_anims\workshop_anim_01.smd" {
	fps 30
}

$sequence "workshop_anim_02" "windrunner_anims\workshop_anim_02.smd" {
	fps 30
}

$sequence "workshop_anim_03" "windrunner_anims\workshop_anim_03.smd" {
	fps 30
}

$sequence "workshop_anim_04" "windrunner_anims\workshop_anim_04.smd" {
	fps 30
}

$sequence "workshop_anim_05" "windrunner_anims\workshop_anim_05.smd" {
	fps 30
}

$sequence "workshop_anim_06" "windrunner_anims\workshop_anim_06.smd" {
	fps 30
}

$sequence "workshop_anim_07" "windrunner_anims\workshop_anim_07.smd" {
	fps 30
}

$sequence "workshop_anim_08" "windrunner_anims\workshop_anim_08.smd" {
	fps 30
}

$sequence "workshop_anim_09" "windrunner_anims\workshop_anim_09.smd" {
	fps 30
}

$sequence "idle_V2_loadout" "windrunner_anims\idle_V2_loadout.smd" {
	fps 30
	activity "ACT_DOTA_LOADOUT" 1
	loop
}

$sequence "spawn_loadout" "windrunner_anims\spawn_loadout.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "turns_lookFrame_0" "windrunner_anims\turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_1" "windrunner_anims\turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_2" "windrunner_anims\turns_lookFrame_2.smd" {
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
	blend "look" -1 1
}

$bonemerge "root"
$bonemerge "spine2"
$bonemerge "thigh_R"
$bonemerge "thigh_L"
$bonemerge "spine3"
$bonemerge "clavicle_R"
$bonemerge "quiver"
$bonemerge "clavicle_L"
$bonemerge "cape_R0C0"
$bonemerge "cape_R0C2"
$bonemerge "cape_R0C1"
$bonemerge "neck1"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "forearm_jnt"
$bonemerge "mid_0_R"
$bonemerge "mid_1_R"
$bonemerge "arrow_1"
$bonemerge "arrow_2"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"
$bonemerge "bow_1"
$bonemerge "joint6"
$bonemerge "joint1"
$bonemerge "bowstring_jnt"
$bonemerge "joint7"
$bonemerge "joint8"
$bonemerge "joint2"
$bonemerge "joint3"
$bonemerge "cape_R1C0"
$bonemerge "cape_R2C0"
$bonemerge "cape_R1C2"
$bonemerge "cape_R2C2"
$bonemerge "cape_R1C1"
$bonemerge "cape_R2C1"
$bonemerge "head"
$bonemerge "ponyTail_R0C0"
$bonemerge "ponyTail_R1C0"
$bonemerge "ponyTip"
$bonemerge "knee_R"
$bonemerge "ankle_R"
$bonemerge "knee_L"
$bonemerge "ankle_L"


$keyvalues
{
}
