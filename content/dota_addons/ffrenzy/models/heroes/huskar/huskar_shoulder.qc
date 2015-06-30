// Created by Crowbar 0.24.0.0

$modelname "heroes/huskar/huskar_shoulder.mdl"

$bodygroup "default"
{
	studio "huskar_shoulder_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 97.968262 -24.738676 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" -0.314964 0 10.727539 0.000001 -1.498792 -0.000001 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 10.902779 0 -0.000004 0 0.244649 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 10.825592 0 -0.000004 0 0.306332 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 21.465309 -9.863491 2.667694 -1.566895 -0.413036 1.40081 0 0 0 0 0 0
// $definebone "Head_0" "Spine_2" 27.900421 0.000001 0.000023 0 0.766565 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -13.977737 -0.000015 0.000015 -2.371542 0.488279 -0.05523 0 0 0 0 0 0
// $definebone "sh_Pad1_0" "clavicle_R" -9.085297 -0.257851 -2.035324 -0.136142 0.25039 -2.551117 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 19.391006 0.000002 -0.000031 0 0.181246 0 0 0 0 0 0 0
// $definebone "hair_R0C0" "Head_1" -8.495256 0 8.939697 1.570796 -0.40362 3.141593 0 0 0 0 0 0
// $definebone "hair_R1C0" "hair_R0C0" 18.187393 0.000015 0 0 0 -0.385592 0 0 0 0 0 0
// $definebone "hair_R2C0" "hair_R1C0" 23.624962 -0.768463 -0.000005 0 0 -0.197017 0 0 0 0 0 0




$sequence "BindPose" "huskar_shoulder_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "Spine_0"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "Head_0"
$bonemerge "Head_1"
$bonemerge "hair_R0C0"
$bonemerge "hair_R1C0"
$bonemerge "hair_R2C0"


$keyvalues
{
}
