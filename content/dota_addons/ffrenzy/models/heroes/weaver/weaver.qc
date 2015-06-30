// Created by Crowbar 0.24.0.0

$modelname "heroes/weaver/weaver.mdl"

$model "default" "weaver_reference.smd" {

	flexfile "weaver.vta" 
	{
		defaultflex frame 0
		flex "dimpler" frame 1
		flex "upperLipsToward" frame 2
		flex "upperLipsPart" frame 3
		flex "upperLipRaiser" frame 4
		flex "lipPressor" frame 5
		flex "lipPuckerer" frame 6
		flex "upperLipFunneler" frame 7
		flex "lowerLipFunneler" frame 8
		flex "jawOpen" frame 9
		flex "phonemeBMP" frame 10
		flex "phonemeFV" frame 11
		flex "lipPuckerer__lowerLipFunneler" frame 12
		flex "lipPuckerer__upperLipFunneler" frame 13
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

	localvar innerBrowRaiser
	localvar outerBrowRaiser
	localvar browLowerer
	localvar eyeUp
	localvar eyeDown
	localvar eyeLeft
	localvar eyeRight
	localvar upperLidRaiser
	localvar eyeClosed
	localvar squint
	localvar cheekRaiser
	localvar noseWrinkler
	localvar nostrilDilator
	localvar lowerLipsToward
	localvar lowerLipsPart
	localvar lowerLipDepressor
	localvar chinRaiser
	localvar lipCornerDepressor
	localvar sharpLipPuller
	localvar lipCornerPuller
	localvar lipStretcher
	localvar lowerLipSuck
	localvar lipSidewaysL
	localvar lipSidewaysR
	localvar jawThrust
	localvar jawSuck
	localvar jawSidewaysL
	localvar jawSidewaysR
	localvar jawClencher
	localvar eyeClosed__eyeUp
	localvar eyeClosed__eyeDown
	localvar jawOpen__lipCornerPuller
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
	%phonemeBMP = phonemeBMP
	%phonemeFV = phonemeFV
	%eyeClosed__eyeUp =  min(eyeClosedAndLidRaiser, 0) * -1 *  max(eyeDownAndUp, 0)
	%eyeClosed__eyeDown =  min(eyeClosedAndLidRaiser, 0) * -1 *  min(eyeDownAndUp, 0) * -1
	%jawOpen__lipCornerPuller =  max((jawOpen - jawOpen * 1 * phonemeFV + jawOpen * 1 * phonemeBMP), 0) * lipCornerPuller
	%lipPuckerer__lowerLipFunneler = lipPuckerer *  max((lowerLipFunneler - lowerLipFunneler * 1 * phonemeFV + lowerLipFunneler * 1 * phonemeBMP), 0)
	%lipPuckerer__upperLipFunneler = lipPuckerer *  max((upperLipFunneler - upperLipFunneler * 1 * phonemeFV + upperLipFunneler * 1 * phonemeBMP), 0)
}

$lod 1
{
	replacemodel "weaver_reference.smd" "weaver_model_lod1.smd"
}

$noforcedfade

$poseparameter "turn" -1 1 0

$cdmaterials ""

$attachment "attach_attack1" "wrist_R" 0 0 0 rotate 0 0 0
$attachment "attach_attack3" "wrist_R" 0 0 0 rotate 0 0 0
$attachment "attach_attack2" "wrist_L" 0 0 0 rotate 0 0 0
$attachment "attach_hitloc" "Spine_2" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "knee_A_R" -37.008144 -10.19503 -14.4891 14.203469 9.234228 10.183514
// $hbox 0 "thigh_A_R" -64.200691 -9.854637 -7.859197 -2.623153 12.563761 14.871837
// $hbox 0 "knee_A_L" -14.196435 -8.654519 -5.837988 36.826992 10.59392 14.376861
// $hbox 0 "thigh_A_L" 2.622104 -12.563948 -14.871826 64.200928 9.854331 7.859455
// $hbox 0 "knee_R" -32.525558 -9.013961 -7.951318 7.553285 8.350471 5.463024
// $hbox 0 "thigh_R" -44.45591 -8.788773 -8.34334 1.628465 9.069501 10.770205
// $hbox 0 "elbow_R" -35.574139 -6.695367 -13.751361 27.111124 7.333024 6.151157
// $hbox 0 "bicep_R" -29.587626 -9.03758 -6.456035 -2.637336 3.700004 8.34361
// $hbox 0 "mandibleL3_0" -3.004684 -5.618779 -5.785961 19.025057 7.70104 6.090845
// $hbox 0 "mandibleR4_0" -2.544784 -7.63642 -5.840524 19.041531 5.477694 4.999355
// $hbox 0 "lant1_2" 8.11794 1.680471 -54.294968 77.367424 40.496166 -0.519284
// $hbox 0 "lant1_1" 7.848097 -3.697623 -3.259978 54.569168 6.125459 7.192475
// $hbox 0 "lant1_0" -2.405741 -1.41477 -2.665467 35.211155 4.656589 2.934567
// $hbox 0 "rant2_2" 8.554725 -36.880135 -56.456356 77.521843 -1.19021 -0.767154
// $hbox 0 "rant2_1" 7.693958 -5.582364 -3.386001 54.721703 4.043045 7.346326
// $hbox 0 "rant2_0" -0.862965 -4.760505 -2.666909 25.025406 2.483109 3.028885
// $hbox 0 "Spine_3" -15.103546 -31.570681 -18.608988 28.052568 31.623093 27.215557
// $hbox 0 "elbow_L" -27.111124 -7.333024 -6.152727 35.326832 6.695396 13.75173
// $hbox 0 "bicep_L" 2.637719 -2.677689 -8.34322 29.587656 9.729739 6.457641
// $hbox 0 "Spine_2" -9.30273 -23.521082 -27.931341 22.25436 22.077238 25.445648
// $hbox 0 "Spine_1" -6.499956 -18.071449 -15.026155 15.884659 18.21417 13.096584
// $hbox 0 "knee_L" -7.553339 -8.661016 -5.462891 31.258551 9.01633 7.940426
// $hbox 0 "thigh_L" -1.683815 -10.38046 -10.770131 44.458054 8.638025 8.343264
// $hbox 0 "Spine_0" -14.798268 -25.590982 -13.839205 22.888811 26.32353 31.612516
// $hbox 0 "ArbitraryChain0_1" -11.200483 -19.274611 -21.382824 35.942387 18.999527 17.160303
// $hbox 0 "ArbitraryChain0_0" -15.354338 -25.741211 -47.588146 20.981493 25.332071 13.2544
// $hbox 0 "Root_0" -14.010335 -30.893021 -14.945569 13.4636 30.687115 14.901302
// $hboxset "feet"
// $hbox 0 "ankle_A_R" -51.540375 -6.562085 -8.708098 13.752152 7.11393 4.40792
// $hbox 0 "ankle_A_L" -15.303564 -7.234046 -5.477708 51.442516 6.514814 8.604612
// $hbox 0 "ankle_R" -46.255161 -5.723846 -9.178454 5.505995 9.357762 6.543544
// $hbox 0 "ankle_L" -5.513036 -7.666646 -6.485108 46.14978 6.01952 9.161926
// $hboxset "hands"
// $hbox 0 "wrist_R" -37.491516 -20.213442 -14.771921 0.668113 2.927273 15.477034
// $hbox 0 "wrist_L" -0.313956 -2.927292 -15.669889 37.491516 20.213442 14.771921
// $hboxset "head"
// $hbox 0 "Head_1" -4.149611 -18.429407 -13.262988 20.98926 18.687523 15.052647
// $hboxset "select_high"
// $hbox 0 "Spine_1" -24.275015 -26.792416 -38.61718 59.428349 26.935137 3.105016
// $hbox 0 "Root_0" -62.623882 -36.366405 -8.624247 62.096615 35.820019 45.596088
// $hboxset "select_low"
// $hbox 0 "Root_0" -90.445457 -74.987267 -69.678444 110.371094 74.44088 69.505272
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" -0.130668 23.278011 -23.448708 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "thigh_A_R" "Root_0" -2.425819 -24.147219 -5.923349 -2.823477 0.952033 0.725842 0 0 0 0 0 0
// $definebone "ArbitraryChain0_0" "Root_0" -17.486979 0.329618 4.451557 3.139998 -0.597106 -3.138757 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 27.456375 0.104463 -2.864044 0 -0.971398 0 0 0 0 0 0 0
// $definebone "thigh_A_L" "Root_0" -2.425819 24.408556 -5.923346 0.318116 -0.952033 2.415751 0 0 0 0 0 0
// $definebone "knee_A_R" "thigh_A_R" -57.323719 0 0.000002 3.141593 1.255789 -3.141593 0 0 0 0 0 0
// $definebone "ankle_A_R" "knee_A_R" -43.97665 0.000008 0 -0.000721 -0.337423 0.002178 0 0 0 0 0 0
// $definebone "toeBall_A_R" "ankle_A_R" -38.351952 0 0.000015 -0.429478 -0.429145 0.502894 0 0 0 0 0 0
// $definebone "ArbitraryChain0_1" "ArbitraryChain0_0" 29.374531 0.000002 0 0 0 0 0 0 0 0 0 0
// $definebone "thigh_R" "Spine_0" -3.35256 -20.73468 -0.807741 -2.27149 0.116816 2.495239 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 23.941639 0.000001 -0.000002 0 -0.336893 0 0 0 0 0 0 0
// $definebone "thigh_L" "Spine_0" -3.352561 20.78709 -0.807745 0.870102 -0.116816 0.646354 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -42.904594 0.000002 0.000001 3.141592 1.314437 3.141592 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -29.767906 0.000008 0.000008 0.043046 -0.450933 -0.098515 0 0 0 0 0 0
// $definebone "toeBall_R" "ankle_R" -38.488026 -0.000006 0 -0.326707 -0.476538 0.634134 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 25.037575 0.000001 -0.000002 0 0.757552 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 10.416542 -13.898809 -2.340984 -1.570796 0.130459 1.613581 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 10.416534 13.95122 -2.340992 1.570797 -0.130459 1.528012 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_2" 22.793274 -0.000001 0.000004 0 0.874057 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -8.591711 -0.000008 -0.000015 -2.205183 0.181457 -0.295119 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -30.056732 0.000008 -0.000003 3.141592 1.552671 -3.141587 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.313713 -0.000008 0.000004 0.218789 0.017218 -0.400396 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -8.901558 -3.726231 -8.064232 0 0 0 0 0 0 0 0 0
// $definebone "Mid_0_R" "wrist_R" -12.332497 -2.375954 3.978088 0.31024 0.384104 -0.180631 0 0 0 0 0 0
// $definebone "Index_0_R" "wrist_R" -12.789177 -1.19548 -2.725842 -0.019883 -0.18371 -0.213633 0 0 0 0 0 0
// $definebone "Ring_0_R" "wrist_R" -7.790154 -6.096287 7.462753 0 0 0 0 0 0 0 0 0
// $definebone "Mid_1_R" "Mid_0_R" -9.051178 0.000006 0 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_R" "Index_0_R" -7.010445 0.000008 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 8.591705 0.000004 0.000015 -2.205183 0.181457 -0.295119 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 30.056738 -0.000008 0.000006 3.141591 1.552671 -3.14159 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.313713 -0.000008 0.000004 0.218789 0.017218 -0.400396 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 12.328842 2.415775 -4.02478 0.341984 0.367734 -0.18733 0 0 0 0 0 0
// $definebone "Ring_0_L" "wrist_L" 8.982681 3.751591 7.972355 0 0 0 0 0 0 0 0 0
// $definebone "Mid_0_L" "wrist_L" 12.774239 1.263287 2.522182 0.098082 -0.18221 -0.221719 0 0 0 0 0 0
// $definebone "Thumb_0_L" "wrist_L" 7.805237 6.035084 -7.226784 0 0 -0.000001 0 0 0 0 0 0
// $definebone "Index_1_L" "Index_0_L" 9.049503 0.000002 0.000008 0 0 0 0 0 0 0 0 0
// $definebone "Mid_1_L" "Mid_0_L" 7.030975 0.000004 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 23.898178 0 0.000008 0 0.643596 0 0 0 0 0 0 0
// $definebone "rant2_0" "Head_0" -8.510307 -6.638565 6.422455 0.237815 0.350864 -2.777452 0 0 0 0 0 0
// $definebone "lant1_0" "Head_0" -8.597525 7.777836 6.686554 -0.285944 0.35918 2.794984 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 20.531044 0.000002 0 0 -0.196123 0 0 0 0 0 0 0
// $definebone "rant2_1" "rant2_0" 38.44746 -0.000002 -0.000008 0 0.336453 0 0 0 0 0 0 0
// $definebone "rant2_2" "rant2_1" 46.460388 0 0.000008 0 0 0 0 0 0 0 0 0
// $definebone "lant1_1" "lant1_0" 38.21447 -0.000002 0 0 0.332744 0 0 0 0 0 0 0
// $definebone "lant1_2" "lant1_1" 46.486061 0.000004 0.000008 0 0 0 0 0 0 0 0 0
// $definebone "mandibleR4_0" "Head_1" 1.947735 -10.792988 -7.422455 0 0 0 0 0 0 0 0 0
// $definebone "mandibleL3_0" "Head_1" 1.964205 10.986483 -7.477028 0 0 0 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 42.904575 0.000002 -0.000002 3.141593 1.314437 3.141593 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 29.767878 -0.000001 0 0.044001 -0.448669 -0.101158 0 0 0 0 0 0
// $definebone "toeBall_L" "ankle_L" 38.359085 0.000011 0.000008 -0.327973 -0.47839 0.637192 0 0 0 0 0 0
// $definebone "knee_A_L" "thigh_A_L" 57.323734 -0.000007 -0.000004 -3.141593 1.255789 3.141592 0 0 0 0 0 0
// $definebone "ankle_A_L" "knee_A_L" 43.976669 0.000002 0 0.006242 -0.347354 -0.018336 0 0 0 0 0 0
// $definebone "toeBall_A_L" "ankle_A_L" 38.705154 -0.000004 0.000008 -0.424188 -0.420401 0.52001 0 0 0 0 0 0

$sectionframes 30 160

// $weightlist "weights_head_loop" {
// 	 "Root_0" 0
// 	 "thigh_A_R" 0
// 	 "ArbitraryChain0_0" 0
// 	 "Spine_0" 0
// 	 "thigh_A_L" 0
// 	 "knee_A_R" 0
// 	 "ankle_A_R" 0
// 	 "toeBall_A_R" 0
// 	 "ArbitraryChain0_1" 0
// 	 "thigh_R" 0
// 	 "Spine_1" 0
// 	 "thigh_L" 0
// 	 "knee_R" 0
// 	 "ankle_R" 0
// 	 "toeBall_R" 0
// 	 "Spine_2" 0
// 	 "clavicle_R" 0
// 	 "clavicle_L" 0
// 	 "Spine_3" 0
// 	 "bicep_R" 0
// 	 "elbow_R" 0
// 	 "wrist_R" 0
// 	 "Thumb_0_R" 0
// 	 "Mid_0_R" 0
// 	 "Index_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Mid_1_R" 0
// 	 "Index_1_R" 0
// 	 "bicep_L" 0
// 	 "elbow_L" 0
// 	 "wrist_L" 0
// 	 "Index_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Mid_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Index_1_L" 0
// 	 "Mid_1_L" 0
// 	 "Head_0" 0
// 	 "rant2_0" 0
// 	 "lant1_0" 0
// 	 "Head_1" 1
// 	 "rant2_1" 0
// 	 "rant2_2" 0
// 	 "lant1_1" 0
// 	 "lant1_2" 0
// 	 "mandibleR4_0" 1
// 	 "mandibleL3_0" 1
// 	 "knee_L" 0
// 	 "ankle_L" 0
// 	 "toeBall_L" 0
// 	 "knee_A_L" 0
// 	 "ankle_A_L" 0
// 	 "toeBall_A_L" 0
// }
// $weightlist "weights_turns_lookFrame_0" {
// 	 "Root_0" 0
// 	 "thigh_A_R" 0
// 	 "ArbitraryChain0_0" 0
// 	 "Spine_0" 1
// 	 "thigh_A_L" 0
// 	 "knee_A_R" 0
// 	 "ankle_A_R" 0
// 	 "toeBall_A_R" 0
// 	 "ArbitraryChain0_1" 0
// 	 "thigh_R" 0
// 	 "Spine_1" 1
// 	 "thigh_L" 0
// 	 "knee_R" 0
// 	 "ankle_R" 0
// 	 "toeBall_R" 0
// 	 "Spine_2" 1
// 	 "clavicle_R" 0
// 	 "clavicle_L" 0
// 	 "Spine_3" 1
// 	 "bicep_R" 0
// 	 "elbow_R" 0
// 	 "wrist_R" 0
// 	 "Thumb_0_R" 0
// 	 "Mid_0_R" 0
// 	 "Index_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Mid_1_R" 0
// 	 "Index_1_R" 0
// 	 "bicep_L" 0
// 	 "elbow_L" 0
// 	 "wrist_L" 0
// 	 "Index_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Mid_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Index_1_L" 0
// 	 "Mid_1_L" 0
// 	 "Head_0" 0
// 	 "rant2_0" 0
// 	 "lant1_0" 0
// 	 "Head_1" 0
// 	 "rant2_1" 0
// 	 "rant2_2" 0
// 	 "lant1_1" 0
// 	 "lant1_2" 0
// 	 "mandibleR4_0" 0
// 	 "mandibleL3_0" 0
// 	 "knee_L" 0
// 	 "ankle_L" 0
// 	 "toeBall_L" 0
// 	 "knee_A_L" 0
// 	 "ankle_A_L" 0
// 	 "toeBall_A_L" 0
// }
// $weightlist "weights_turns_lookFrame_1" {
// 	 "Root_0" 0
// 	 "thigh_A_R" 0
// 	 "ArbitraryChain0_0" 0
// 	 "Spine_0" 1
// 	 "thigh_A_L" 0
// 	 "knee_A_R" 0
// 	 "ankle_A_R" 0
// 	 "toeBall_A_R" 0
// 	 "ArbitraryChain0_1" 0
// 	 "thigh_R" 0
// 	 "Spine_1" 1
// 	 "thigh_L" 0
// 	 "knee_R" 0
// 	 "ankle_R" 0
// 	 "toeBall_R" 0
// 	 "Spine_2" 1
// 	 "clavicle_R" 0
// 	 "clavicle_L" 0
// 	 "Spine_3" 1
// 	 "bicep_R" 0
// 	 "elbow_R" 0
// 	 "wrist_R" 0
// 	 "Thumb_0_R" 0
// 	 "Mid_0_R" 0
// 	 "Index_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Mid_1_R" 0
// 	 "Index_1_R" 0
// 	 "bicep_L" 0
// 	 "elbow_L" 0
// 	 "wrist_L" 0
// 	 "Index_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Mid_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Index_1_L" 0
// 	 "Mid_1_L" 0
// 	 "Head_0" 0
// 	 "rant2_0" 0
// 	 "lant1_0" 0
// 	 "Head_1" 0
// 	 "rant2_1" 0
// 	 "rant2_2" 0
// 	 "lant1_1" 0
// 	 "lant1_2" 0
// 	 "mandibleR4_0" 0
// 	 "mandibleL3_0" 0
// 	 "knee_L" 0
// 	 "ankle_L" 0
// 	 "toeBall_L" 0
// 	 "knee_A_L" 0
// 	 "ankle_A_L" 0
// 	 "toeBall_A_L" 0
// }
// $weightlist "weights_turns_lookFrame_2" {
// 	 "Root_0" 0
// 	 "thigh_A_R" 0
// 	 "ArbitraryChain0_0" 0
// 	 "Spine_0" 1
// 	 "thigh_A_L" 0
// 	 "knee_A_R" 0
// 	 "ankle_A_R" 0
// 	 "toeBall_A_R" 0
// 	 "ArbitraryChain0_1" 0
// 	 "thigh_R" 0
// 	 "Spine_1" 1
// 	 "thigh_L" 0
// 	 "knee_R" 0
// 	 "ankle_R" 0
// 	 "toeBall_R" 0
// 	 "Spine_2" 1
// 	 "clavicle_R" 0
// 	 "clavicle_L" 0
// 	 "Spine_3" 1
// 	 "bicep_R" 0
// 	 "elbow_R" 0
// 	 "wrist_R" 0
// 	 "Thumb_0_R" 0
// 	 "Mid_0_R" 0
// 	 "Index_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Mid_1_R" 0
// 	 "Index_1_R" 0
// 	 "bicep_L" 0
// 	 "elbow_L" 0
// 	 "wrist_L" 0
// 	 "Index_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Mid_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Index_1_L" 0
// 	 "Mid_1_L" 0
// 	 "Head_0" 0
// 	 "rant2_0" 0
// 	 "lant1_0" 0
// 	 "Head_1" 0
// 	 "rant2_1" 0
// 	 "rant2_2" 0
// 	 "lant1_1" 0
// 	 "lant1_2" 0
// 	 "mandibleR4_0" 0
// 	 "mandibleL3_0" 0
// 	 "knee_L" 0
// 	 "ankle_L" 0
// 	 "toeBall_L" 0
// 	 "knee_A_L" 0
// 	 "ankle_A_L" 0
// 	 "toeBall_A_L" 0
// }
// $weightlist "weights_turns" {
// 	 "Root_0" 0
// 	 "thigh_A_R" 0
// 	 "ArbitraryChain0_0" 0
// 	 "Spine_0" 1
// 	 "thigh_A_L" 0
// 	 "knee_A_R" 0
// 	 "ankle_A_R" 0
// 	 "toeBall_A_R" 0
// 	 "ArbitraryChain0_1" 0
// 	 "thigh_R" 0
// 	 "Spine_1" 1
// 	 "thigh_L" 0
// 	 "knee_R" 0
// 	 "ankle_R" 0
// 	 "toeBall_R" 0
// 	 "Spine_2" 1
// 	 "clavicle_R" 0
// 	 "clavicle_L" 0
// 	 "Spine_3" 1
// 	 "bicep_R" 0
// 	 "elbow_R" 0
// 	 "wrist_R" 0
// 	 "Thumb_0_R" 0
// 	 "Mid_0_R" 0
// 	 "Index_0_R" 0
// 	 "Ring_0_R" 0
// 	 "Mid_1_R" 0
// 	 "Index_1_R" 0
// 	 "bicep_L" 0
// 	 "elbow_L" 0
// 	 "wrist_L" 0
// 	 "Index_0_L" 0
// 	 "Ring_0_L" 0
// 	 "Mid_0_L" 0
// 	 "Thumb_0_L" 0
// 	 "Index_1_L" 0
// 	 "Mid_1_L" 0
// 	 "Head_0" 0
// 	 "rant2_0" 0
// 	 "lant1_0" 0
// 	 "Head_1" 0
// 	 "rant2_1" 0
// 	 "rant2_2" 0
// 	 "lant1_1" 0
// 	 "lant1_2" 0
// 	 "mandibleR4_0" 0
// 	 "mandibleL3_0" 0
// 	 "knee_L" 0
// 	 "ankle_L" 0
// 	 "toeBall_L" 0
// 	 "knee_A_L" 0
// 	 "ankle_A_L" 0
// 	 "toeBall_A_L" 0
// }



$sequence "BindPose" "weaver_anims\BindPose.smd" {
	fps 30
}

$sequence "loadout_spawn" "weaver_anims\loadout_spawn.smd" {
	fps 22
	activity "ACT_DOTA_SPAWN" 1
	fadeout 0.4
}

$sequence "spawn" "weaver_anims\spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "idle1" "weaver_anims\idle1.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "idle2" "weaver_anims\idle2.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "attack" "weaver_anims\attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack1" "weaver_anims\attack1.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "idle2_injured" "weaver_anims\idle2_injured.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "attack_injured" "weaver_anims\attack_injured.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "attack1_injured" "weaver_anims\attack1_injured.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "swarm" "weaver_anims\swarm.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "death" "weaver_anims\death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 29 "BodyImpact_Common.Medium" }
	{ event AE_CL_PLAYSOUND 10 "Hero_Weaver.Death" }
}

$sequence "run" "weaver_anims\run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns"
	{ event AE_CL_PLAYSOUND 1 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 6 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 13 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_Weaver.Footsteps" }
}

$sequence "run_injured" "weaver_anims\run_injured.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns"
	{ event AE_CL_PLAYSOUND 1 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 6 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 13 "Hero_Weaver.Footsteps" }
	{ event AE_CL_PLAYSOUND 18 "Hero_Weaver.Footsteps" }
}

$sequence "stun" "weaver_anims\stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "head_loop" "weaver_anims\head_loop.smd" {
	fps 30
	activity "ACT_DOTA_CONSTANT_LAYER" 1
	loop
}

$sequence "run_invis" "weaver_anims\run_invis.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "turns"
}

$sequence "flail" "weaver_anims\flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "cast_ulti" "weaver_anims\cast_ulti.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "teleport" "weaver_anims\teleport.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
	loop
}

$sequence "teleport_end" "weaver_anims\teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT_END" 1
}

$sequence "cast_ulti_stalker_exoskeleton" "weaver_anims\cast_ulti_stalker_exoskeleton.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "teleport_stalkers_exoskeleton" "weaver_anims\teleport_stalkers_exoskeleton.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
	loop
}

$sequence "workshop_anim_00" "weaver_anims\workshop_anim_00.smd" {
	fps 30
}

$sequence "workshop_anim_01" "weaver_anims\workshop_anim_01.smd" {
	fps 30
}

$sequence "workshop_anim_02" "weaver_anims\workshop_anim_02.smd" {
	fps 30
}

$sequence "workshop_anim_03" "weaver_anims\workshop_anim_03.smd" {
	fps 30
}

$sequence "workshop_anim_04" "weaver_anims\workshop_anim_04.smd" {
	fps 30
}

$sequence "workshop_anim_05" "weaver_anims\workshop_anim_05.smd" {
	fps 30
}

$sequence "workshop_anim_06" "weaver_anims\workshop_anim_06.smd" {
	fps 30
}

$sequence "workshop_anim_07" "weaver_anims\workshop_anim_07.smd" {
	fps 30
}

$sequence "workshop_anim_08" "weaver_anims\workshop_anim_08.smd" {
	fps 30
}

$sequence "workshop_anim_09" "weaver_anims\workshop_anim_09.smd" {
	fps 30
}

$sequence "turns_lookFrame_0" "weaver_anims\turns_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_1" "weaver_anims\turns_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "turns_lookFrame_2" "weaver_anims\turns_lookFrame_2.smd" {
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

$bonemerge "Root_0"
$bonemerge "thigh_A_R"
$bonemerge "ArbitraryChain0_0"
$bonemerge "Spine_0"
$bonemerge "thigh_A_L"
$bonemerge "knee_A_R"
$bonemerge "ankle_A_R"
$bonemerge "toeBall_A_R"
$bonemerge "ArbitraryChain0_1"
$bonemerge "thigh_R"
$bonemerge "Spine_1"
$bonemerge "thigh_L"
$bonemerge "knee_R"
$bonemerge "ankle_R"
$bonemerge "toeBall_R"
$bonemerge "Spine_2"
$bonemerge "clavicle_R"
$bonemerge "clavicle_L"
$bonemerge "Spine_3"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "Thumb_0_R"
$bonemerge "Mid_0_R"
$bonemerge "Index_0_R"
$bonemerge "Ring_0_R"
$bonemerge "Mid_1_R"
$bonemerge "Index_1_R"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"
$bonemerge "Index_0_L"
$bonemerge "Ring_0_L"
$bonemerge "Mid_0_L"
$bonemerge "Thumb_0_L"
$bonemerge "Index_1_L"
$bonemerge "Mid_1_L"
$bonemerge "Head_0"
$bonemerge "rant2_0"
$bonemerge "lant1_0"
$bonemerge "Head_1"
$bonemerge "rant2_1"
$bonemerge "rant2_2"
$bonemerge "lant1_1"
$bonemerge "lant1_2"
$bonemerge "mandibleR4_0"
$bonemerge "mandibleL3_0"
$bonemerge "knee_L"
$bonemerge "ankle_L"
$bonemerge "toeBall_L"
$bonemerge "knee_A_L"
$bonemerge "ankle_A_L"
$bonemerge "toeBall_A_L"


$keyvalues
{
}
