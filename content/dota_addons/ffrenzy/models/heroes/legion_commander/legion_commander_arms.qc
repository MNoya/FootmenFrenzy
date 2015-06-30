// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander_arms.mdl"

$bodygroup "default"
{
	studio "legion_commander_arms_reference.smd"
}

$lod 1
{
	replacemodel "legion_commander_arms_reference.smd" "legion_commander_arms_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root0_JNT" "" 0 89.343208 -1.171317 -1.570796 0.09066 -1.570796 0 0 0 0 0 0
// $definebone "Spine0_JNT" "Root0_JNT" -4.558647 -0.080284 0 0 0 3.115484 0 0 0 0 0 0
// $definebone "Spine2_JNT" "Spine0_JNT" 7.300995 -0.450907 0 0 0 -0.155479 0 0 0 0 0 0
// $definebone "Spine3_JNT" "Spine2_JNT" 16.66333 0.000001 0.000001 0 0 0.102793 0 0 0 0 0 0
// $definebone "RightArm0_JNT" "Spine3_JNT" 1.977951 0.951893 -3.217699 -1.590958 1.211918 -1.691692 0 0 0 0 0 0
// $definebone "LeftArm0_JNT" "Spine3_JNT" 1.977951 0.951893 3.217699 1.590958 -1.211918 -1.691692 0 0 0 0 0 0
// $definebone "RightArm1_JNT" "RightArm0_JNT" 10.0414 -0.000004 0.000015 0.263219 1.047835 0.256826 0 0 0 0 0 0
// $definebone "RightArm2_JNT" "RightArm1_JNT" 22.630394 0 0 0 0 0.267626 0 0 0 0 0 0
// $definebone "RightArm3_JNT" "RightArm2_JNT" 22.330833 0.000008 0.000008 1.369629 0.00392 -0.088555 0 0 0 0 0 0
// $definebone "LeftArm1_JNT" "LeftArm0_JNT" 10.041399 -0.000005 -0.000038 -0.263218 -1.047835 0.256825 0 0 0 0 0 0
// $definebone "LeftArm2_JNT" "LeftArm1_JNT" 22.630371 0 -0.000008 0 0 0.267626 0 0 0 0 0 0
// $definebone "LeftArm3_JNT" "LeftArm2_JNT" 22.330837 -0.000004 -0.000008 -1.369629 -0.00392 -0.088555 0 0 0 0 0 0




$sequence "BindPose" "legion_commander_arms_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root0_JNT"
$bonemerge "Spine0_JNT"
$bonemerge "Spine2_JNT"
$bonemerge "Spine3_JNT"
$bonemerge "RightArm0_JNT"
$bonemerge "LeftArm0_JNT"
$bonemerge "RightArm1_JNT"
$bonemerge "RightArm2_JNT"
$bonemerge "RightArm3_JNT"
$bonemerge "LeftArm1_JNT"
$bonemerge "LeftArm2_JNT"
$bonemerge "LeftArm3_JNT"


$keyvalues
{
}
