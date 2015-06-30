// Created by Crowbar 0.24.0.0

$modelname "heroes/huskar/huskar_spear.mdl"

$bodygroup "default"
{
	studio "huskar_spear_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 97.968262 -24.738676 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" -0.314964 0 10.727539 0.000001 -1.498792 -0.000001 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 10.902779 0 -0.000004 0 0.244649 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 10.825592 0 -0.000004 0 0.306332 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 21.465309 9.863493 2.667694 1.574698 0.413036 1.740783 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 13.977741 -0.000008 0 -2.371542 0.488279 -0.055229 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 35.601006 -0.000008 0.000008 0.011169 0.591041 -0.015423 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.483715 -0.000015 -0.000006 0.245779 0.176841 0.344578 0 0 0 0 0 0
// $definebone "spear_1" "wrist_L" 37.153812 115.343605 7.885122 -2.280995 -0.76781 2.758517 0 0 0 0 0 0




$sequence "BindPose" "huskar_spear_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "Spine_0"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "clavicle_L"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"


$keyvalues
{
}
