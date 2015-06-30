// Created by Crowbar 0.24.0.0

$modelname "heroes/dragon_knight/bracers.mdl"

$bodygroup "default"
{
	studio "bracers_reference.smd"
}

$lod 1
{
	replacemodel "bracers_reference.smd" "bracers_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 104.537727 1.443686 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "root" -2.691938 -39.325527 19.640572 0.733798 -0.818596 2.786864 0 0 0 0 0 0
// $definebone "elbow_L" "root" -2.691935 39.325539 19.640556 -2.407794 0.818596 0.35473 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -33.352192 -0.000015 -0.000015 -0.535429 -0.532169 0.559779 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -1.448952 -2.088196 4.836733 2.531437 0.766791 0.074132 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 33.352165 0.000008 0 -0.535429 -0.532169 0.55978 0 0 0 0 0 0




$sequence "BindPose" "bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
