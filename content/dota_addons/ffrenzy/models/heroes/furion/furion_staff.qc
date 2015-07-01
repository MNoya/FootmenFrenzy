// Created by Crowbar 0.24.0.0

$modelname "heroes/furion/furion_staff.mdl"

$bodygroup "default"
{
	studio "furion_staff_reference.smd"
}

$lod 1
{
	replacemodel "furion_staff_reference.smd" "furion_staff_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 90.287514 -9.440562 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "staff_1" "Root_0" 22.30225 67.484299 -15.739037 -0.052235 0.274758 1.247397 0 0 0 0 0 0
// $definebone "attack_1" "staff_1" -0.000008 -0.000004 -0.000015 -0.010148 -0.00029 -1.57144 0 0 0 0 0 0




$sequence "BindPose" "furion_staff_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "staff_1"
$bonemerge "attack_1"


$keyvalues
{
}
