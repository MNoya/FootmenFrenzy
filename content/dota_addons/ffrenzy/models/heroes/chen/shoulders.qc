// Created by Crowbar 0.24.0.0

$modelname "heroes/chen/shoulders.mdl"

$bodygroup "default"
{
	studio "shoulders_reference.smd"
}

$lod 1
{
	replacemodel "shoulders_reference.smd" "shoulders_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 91.151833 25.170647 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "armor5_0_B_R" "root" -31.409317 -18.708004 65.503136 1.755064 -0.972066 1.705736 0 0 0 0 0 0
// $definebone "armor4_0_B_L" "root" -31.409317 18.708084 65.503136 -1.386531 0.972068 1.435856 0 0 0 0 0 0




$sequence "BindPose" "shoulders_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
