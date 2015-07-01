// Created by Crowbar 0.24.0.0

$modelname "heroes/furion/furion_beard.mdl"

$model "default" "furion_beard_reference.smd" {

	flexfile "furion_beard.vta" 
	{
		defaultflex frame 0
		flex "outerBrowRaiser" frame 1
		flex "browLowerer" frame 2
		flex "eyeUp" frame 3
		flex "eyeDown" frame 4
		flex "eyeLeft" frame 5
		flex "eyeRight" frame 6
		flex "eyeClosed" frame 7
		flex "squint" frame 8
		flex "cheekRaiser" frame 9
		flex "dimpler" frame 10
		flex "noseWrinkler" frame 11
		flex "upperLipsToward" frame 12
		flex "lowerLipsToward" frame 13
		flex "upperLipsPart" frame 14
		flex "lowerLipsPart" frame 15
		flex "upperLipRaiser" frame 16
		flex "lowerLipDepressor" frame 17
		flex "chinRaiser" frame 18
		flex "lipCornerDepressor" frame 19
		flex "lipPressor" frame 20
		flex "sharpLipPuller" frame 21
		flex "lipCornerPuller" frame 22
		flex "lipStretcher" frame 23
		flex "lipPuckerer" frame 24
		flex "upperLipFunneler" frame 25
		flex "lowerLipFunneler" frame 26
		flex "lowerLipSuck" frame 27
		flex "lipSidewaysL" frame 28
		flex "lipSidewaysR" frame 29
		flex "jawThrust" frame 30
		flex "jawSuck" frame 31
		flex "jawSidewaysL" frame 32
		flex "jawSidewaysR" frame 33
		flex "jawOpen" frame 34
		flex "jawClencher" frame 35
		flex "phonemeBMP" frame 36
		flex "phonemeFV" frame 37
		flex "jawOpen__lipCornerPuller" frame 38
		flex "lipPuckerer__lowerLipFunneler" frame 39
		flex "lipPuckerer__upperLipFunneler" frame 40
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
	localvar upperLidRaiser
	localvar nostrilDilator
	localvar eyeClosed__eyeUp
	localvar eyeClosed__eyeDown
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
	replacemodel "furion_beard_reference.smd" "furion_beard_model_lod1.smd"
}

$cdmaterials ""

$attachment "attach_attack1" "attack_1" 0 0 0 rotate 0 0 0
$attachment "Thumb_plc0_L" "beard_R1C0" 0 0 -16.48 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 90.287514 -9.440562 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Head_1" "Root_0" 0.148748 0.336746 85.158821 0 0 0 0 0 0 0 0 0
// $definebone "attack_1" "Root_0" 22.30225 67.484283 -15.739044 -0.285236 -0.050728 -0.309756 0 0 0 0 0 0
// $definebone "beard_R0C0" "Head_1" 25.306746 0.000001 -15.666611 -1.570797 1.176868 0 0 0 0 0 0 0
// $definebone "beard_R1C0" "beard_R0C0" 12.421371 -2.081375 -0.000001 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "furion_beard_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
