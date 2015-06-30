// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander_head.mdl"

$bodygroup "default"
{
	studio "legion_commander_head_reference.smd"
}

$lod 1
{
	replacemodel "legion_commander_head_reference.smd" "legion_commander_head_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root0_JNT" "" 0 89.343208 -1.171317 -1.570796 0.09066 -1.570796 0 0 0 0 0 0
// $definebone "Spine0_JNT" "Root0_JNT" -4.558647 -0.080285 0 0 0 3.115484 0 0 0 0 0 0
// $definebone "Spine2_JNT" "Spine0_JNT" 7.300995 -0.450908 0 0 0 -0.155479 0 0 0 0 0 0
// $definebone "Spine3_JNT" "Spine2_JNT" 16.66333 0 0.000001 0 0 0.102793 0 0 0 0 0 0
// $definebone "Neck0_JNT" "Spine3_JNT" 7.066299 0.000009 -0.000002 0 0 0.266435 0 0 0 0 0 0
// $definebone "Head0_JNT" "Neck0_JNT" 10.372307 -2.028133 0.000001 0 0 -0.2783 0 0 0 0 0 0




$sequence "BindPose" "legion_commander_head_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root0_JNT"
$bonemerge "Spine0_JNT"
$bonemerge "Spine2_JNT"
$bonemerge "Spine3_JNT"
$bonemerge "Neck0_JNT"
$bonemerge "Head0_JNT"


$keyvalues
{
}
