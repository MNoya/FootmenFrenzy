// Created by Crowbar 0.24.0.0

$modelname "heroes/dragon_knight/shoulders.mdl"

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
// $definebone "root" "" 0 104.537727 1.443686 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine2" "root" -4.509713 0 28.948158 3.141593 -1.291535 3.141593 0 0 0 0 0 0
// $definebone "spine3" "spine2" 15.166 0.000001 0.000004 0 0.429291 0 0 0 0 0 0 0
// $definebone "clavicle_L" "spine3" 8.643585 8.339385 -0.178606 1.570796 0.092276 1.629907 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 8.643585 -8.339381 -0.178608 -1.570796 -0.092276 1.511686 0 0 0 0 0 0
// $definebone "shoulder_L1" "clavicle_L" 14.663749 7.775026 7.261124 1.467426 0.535291 0.134703 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 15.299223 -0.000002 0 -1.797958 0.992269 -0.331279 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -15.299221 -0.000002 0 -1.797959 0.992269 -0.331279 0 0 0 0 0 0
// $definebone "shoulder_R1" "clavicle_R" -14.65593 -7.868679 -7.24675 1.467425 0.535291 0.134703 0 0 0 0 0 0




$sequence "BindPose" "shoulders_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
