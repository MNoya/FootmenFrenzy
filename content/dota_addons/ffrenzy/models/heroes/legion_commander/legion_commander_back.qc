// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander_back.mdl"

$bodygroup "default"
{
	studio "legion_commander_back_reference.smd"
}

$lod 1
{
	replacemodel "legion_commander_back_reference.smd" "legion_commander_back_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root0_JNT" "" 0 89.343208 -1.171317 -1.570796 0.09066 -1.570796 0 0 0 0 0 0
// $definebone "Spine0_JNT" "Root0_JNT" -4.558647 -0.080284 0 0 0 3.115484 0 0 0 0 0 0
// $definebone "Spine2_JNT" "Spine0_JNT" 7.301003 -0.450908 0 0 0 -0.155479 0 0 0 0 0 0
// $definebone "Banner_R_R0C0" "Spine2_JNT" 38.165161 -26.268085 -30.378199 0 0 -3.050666 0 0 0 0 0 0
// $definebone "Banner_L_R0C0" "Spine2_JNT" 38.165192 -26.268085 30.563236 0 0 -3.050665 0 0 0 0 0 0
// $definebone "Banner_R_R0C1" "Banner_R_R0C0" 22.680817 -0.000019 0 0 0 0 0 0 0 0 0 0
// $definebone "Banner_R_R0C2" "Banner_R_R0C1" 23.952591 0 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Banner_R_R0C3" "Banner_R_R0C2" 30.029049 0 -0.000002 -0.001455 0.002859 -0.000341 0 0 0 0 0 0
// $definebone "Banner_L_R0C1" "Banner_L_R0C0" 22.680794 -0.000021 0 0 0 0 0 0 0 0 0 0
// $definebone "Banner_L_R0C2" "Banner_L_R0C1" 23.952599 0 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Banner_L_R0C3" "Banner_L_R0C2" 30.029049 -0.000002 -0.000002 0.000386 -0.000996 -0.000123 0 0 0 0 0 0




$sequence "BindPose" "legion_commander_back_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root0_JNT"
$bonemerge "Spine0_JNT"
$bonemerge "Spine2_JNT"
$bonemerge "Banner_R_R0C0"
$bonemerge "Banner_L_R0C0"
$bonemerge "Banner_R_R0C1"
$bonemerge "Banner_R_R0C2"
$bonemerge "Banner_R_R0C3"
$bonemerge "Banner_L_R0C1"
$bonemerge "Banner_L_R0C2"
$bonemerge "Banner_L_R0C3"


$keyvalues
{
}
