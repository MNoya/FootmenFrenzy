// Created by Crowbar 0.24.0.0

$modelname "heroes/chen/bracers.mdl"

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
// $definebone "root" "" 0 91.151833 25.170647 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "root" -29.77459 -30.530903 38.654091 1.092354 -0.896773 2.51366 0 0 0 0 0 0
// $definebone "elbow_L" "root" -29.77459 30.530888 38.654106 -2.049242 0.896773 0.627932 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -28.652657 -0.000008 0.000008 -3.101816 0.022563 0.307908 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -4.105316 1.143257 -5.830227 0 0 0 0 0 0 0 0 0
// $definebone "Mid_0_R" "wrist_R" -8.100403 0 2.041517 0 0.091863 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 28.652672 -0.000023 0.000008 0.039779 0.022562 0.307908 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 9.159958 -0.482368 0.247684 0 0 0 0 0 0 0 0 0
// $definebone "Thumb_0_L" "wrist_L" 2.765244 1.33934 -5.106018 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
