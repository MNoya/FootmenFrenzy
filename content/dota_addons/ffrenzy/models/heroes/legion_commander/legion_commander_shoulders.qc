// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander_shoulders.mdl"

$bodygroup "default"
{
	studio "legion_commander_shoulders_reference.smd"
}

$lod 1
{
	replacemodel "legion_commander_shoulders_reference.smd" "legion_commander_shoulders_legion_commander_shoulder_lod1.smd"
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
// $definebone "RightShoulderHlpr0_JNT" "Spine3_JNT" 12.72065 -1.938588 -12.4797 1.508165 -0.917846 0.034561 0 0 0 0 0 0
// $definebone "LeftShoulderHlpr0_JNT" "Spine3_JNT" 12.720787 -1.938589 12.479684 1.508165 -0.917846 -3.107032 0 0 0 0 0 0
// $definebone "Neck0_JNT" "Spine3_JNT" 7.066277 0.000001 0 0 0 0.266435 0 0 0 0 0 0
// $definebone "RightArm1_JNT" "RightArm0_JNT" 10.041401 -0.000001 0.000008 0.263219 1.047835 0.256826 0 0 0 0 0 0
// $definebone "LeftArm1_JNT" "LeftArm0_JNT" 10.041399 -0.000003 -0.000008 -0.263219 -1.047835 0.256825 0 0 0 0 0 0
// $definebone "Head0_JNT" "Neck0_JNT" 10.372314 -2.028141 0.000001 0 0 -0.278299 0 0 0 0 0 0




$sequence "BindPose" "legion_commander_shoulders_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root0_JNT"
$bonemerge "Spine0_JNT"
$bonemerge "Spine2_JNT"
$bonemerge "Spine3_JNT"
$bonemerge "RightArm0_JNT"
$bonemerge "LeftArm0_JNT"
$bonemerge "RightShoulderHlpr0_JNT"
$bonemerge "LeftShoulderHlpr0_JNT"
$bonemerge "Neck0_JNT"
$bonemerge "RightArm1_JNT"
$bonemerge "LeftArm1_JNT"
$bonemerge "Head0_JNT"


$keyvalues
{
}
