// Created by Crowbar 0.24.0.0

$modelname "heroes/silencer/silencer_shoulder.mdl"

$bodygroup "default"
{
	studio "silencer_shoulder_reference.smd"
}

$lod 1
{
	replacemodel "silencer_shoulder_reference.smd" "silencer_shoulder_model_lod1.smd"
}

$cdmaterials ""

$attachment "ArbitraryParityChain_plc0_L" "ClothTop0_0_L" 180 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "ClothTop1_0_R" -180 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 120.152336 -0.848275 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_2" "Root_0" -0.749787 0 29.772743 3.141593 -1.547078 3.141593 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_2" 13.634125 0.000001 0 0 0.082225 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_3" -5.49147 4.321458 -4.342447 1.570797 -0.360539 1.602528 0 0 0 0 0 0
// $definebone "ClothTop0_0_L" "Spine_3" 8.343002 11.425 0.931999 0 0 1.570796 0 0 0 0 0 0
// $definebone "ClothTop1_0_R" "Spine_3" 8.343002 -11.425 0.932001 0 0 1.570796 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 12.483688 0.000001 0 0 0.242306 0 0 0 0 0 0 0
// $definebone "FrontRobe1_0" "Spine_3" -31.967377 -0.000002 -26.974495 0 0.078477 3.141593 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_3" -5.491455 -4.32146 -4.342447 -1.570797 0.360539 1.539064 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 14.93532 0.000006 0.000015 -1.904044 0.715941 -0.610956 0 0 0 0 0 0
// $definebone "LShoulderPad5_0" "clavicle_L" 19.323563 -1.247052 6.655563 -2.187206 -1.461881 0.251071 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 10.915726 0 0.000004 0.000001 1.269984 0 0 0 0 0 0 0
// $definebone "FrontRobe1_1" "FrontRobe1_0" 29.222519 -0.000001 0.000004 0 0.102011 0 0 0 0 0 0 0
// $definebone "FrontRobe1_2" "FrontRobe1_1" 28.484657 -0.000001 0.000004 0 0.010571 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -14.935321 -0.000003 0 -1.904044 0.715941 -0.610956 0 0 0 0 0 0
// $definebone "RShoulderPad6_0" "clavicle_R" -21.225595 -1.337787 -6.348633 0.232003 1.128917 -1.690223 0 0 0 0 0 0




$sequence "BindPose" "silencer_shoulder_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
