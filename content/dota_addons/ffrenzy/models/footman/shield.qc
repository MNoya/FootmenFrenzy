// Created by Crowbar 0.24.0.0

$modelname "heroes/dragon_knight/shield.mdl"

$bodygroup "default"
{
	studio "shield_reference.smd"
}

$lod 1
{
	replacemodel "shield_reference.smd" "shield_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 104.537727 1.443686 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "shield_2" "root" -11.196615 80.44136 -4.005836 -0.131335 0.571867 0.533934 0 0 0 0 0 0




$sequence "BindPose" "shield_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
