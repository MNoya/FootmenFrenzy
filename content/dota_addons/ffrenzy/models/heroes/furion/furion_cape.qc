// Created by Crowbar 0.24.0.0

$modelname "heroes/furion/furion_cape.mdl"

$bodygroup "default"
{
	studio "furion_cape_reference.smd"
}

$lod 1
{
	replacemodel "furion_cape_reference.smd" "furion_cape_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 90.287514 -9.440562 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 2.609699 0 15.772606 3.141592 -1.492397 -3.141592 0 0 0 0 0 0
// $definebone "cape7_0" "Spine_0" -2.458321 0.000003 36.532158 -3.141592 1.492397 -3.141592 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 17.302689 0.000001 -0.000001 0 -0.177756 0 0 0 0 0 0 0
// $definebone "capeL8_0" "cape7_0" -0.000008 -19.609692 -29.680527 0 0 -1.570796 0 0 0 0 0 0
// $definebone "capeR9_0" "cape7_0" -0.000004 19.610001 -29.680527 0 0 1.570796 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_1" 17.298637 0.000001 0 0.00447 0.301898 0.015032 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 23.463486 -0.000002 0 0 0.136324 -0.014353 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_3" 9.822357 5.11234 5.149883 1.570796 0.302905 1.698161 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_3" 9.671555 -5.392145 5.149879 -1.570796 -0.302905 1.414727 0 0 0 0 0 0
// $definebone "plateCenter0_0" "Spine_3" 20.904831 0.497969 20.854156 2.094787 -1.481701 -2.110906 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 12.16716 0.000001 0 -0.000001 1.388696 0 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 27.123085 -0.000002 -0.000031 -1.39933 0.77241 0.3149 0 0 0 0 0 0
// $definebone "plate3_0" "clavicle_L" 6.625168 10.962748 15.59906 -0.027284 -0.141335 0.380799 0 0 0 0 0 0
// $definebone "plate4_0" "clavicle_L" 16.271378 -0.525372 16.963821 -0.027284 -0.141335 0.380799 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 36.459732 0.000008 0 0 0.715607 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.386932 0.000008 -0.000015 0.177115 -0.019807 -0.020356 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -27.123072 -0.000002 -0.000015 -1.39933 0.772411 0.314899 0 0 0 0 0 0
// $definebone "plate1_0" "clavicle_R" -18.690683 3.36618 -17.207199 -1.11883 0.14125 -2.91658 0 0 0 0 0 0
// $definebone "plate2_0" "clavicle_R" -8.844271 -10.974594 -15.292099 -2.207168 0.495444 -2.887789 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -36.459736 -0.000008 0.000011 0 0.715607 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.386955 -0.000008 -0.000011 0.022955 0.184164 -0.068582 0 0 0 0 0 0




$sequence "BindPose" "furion_cape_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
