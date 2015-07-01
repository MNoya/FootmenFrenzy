// Created by Crowbar 0.24.0.0

$modelname "heroes/chen/helmet.mdl"

$bodygroup "default"
{
	studio "helmet_reference.smd"
}

$lod 1
{
	replacemodel "helmet_reference.smd" "helmet_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 91.151833 25.170647 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "neck11" "root" -30.147667 -0.56652 68.783669 -0.213516 -1.331759 0.219568 0 0 0 0 0 0
// $definebone "head1" "neck11" 10.985443 -0.000001 -0.000008 -3.141588 -1.323806 3.09 0 0 0 0 0 0




$sequence "BindPose" "helmet_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
