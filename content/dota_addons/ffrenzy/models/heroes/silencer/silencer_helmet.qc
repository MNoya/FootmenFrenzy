// Created by Crowbar 0.24.0.0

$modelname "heroes/silencer/silencer_helmet.mdl"

$bodygroup "default"
{
	studio "silencer_helmet_reference.smd"
}

$lod 1
{
	replacemodel "silencer_helmet_reference.smd" "silencer_helmet_model_lod1.smd"
}

$cdmaterials ""

$attachment "ArbitraryParityChain_plc0_L" "ClothTop0_0_L" 180 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "ClothTop1_0_R" -180 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 120.152336 -0.848275 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_3" "Root_0" -1.073131 0 43.403038 0 -1.512289 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_3" -5.491455 4.321458 -4.342447 1.570797 -0.360539 1.602528 0 0 0 0 0 0
// $definebone "ClothTop0_0_L" "Spine_3" 8.343002 11.425 0.931998 0 0 1.570796 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 12.483688 0.000001 0 0 0.242306 0 0 0 0 0 0 0
// $definebone "ClothTop1_0_R" "Spine_3" 8.343002 -11.425 0.932 0 0 1.570796 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_3" -5.491455 -4.321459 -4.342446 -1.570796 0.36054 1.539065 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 10.91568 -0.000001 0.000004 -0.000001 1.269983 -0.000001 0 0 0 0 0 0




$sequence "BindPose" "silencer_helmet_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
