// Created by Crowbar 0.24.0.0

$modelname "heroes/dragon_knight/helmet.mdl"

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
// $definebone "root" "" 0 104.537727 1.443686 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine2" "root" -4.509713 0 28.948158 3.141593 -1.291535 3.141593 0 0 0 0 0 0
// $definebone "spine3" "spine2" 15.166 0.000001 0.000004 0 0.429291 0 0 0 0 0 0 0
// $definebone "head" "spine3" 27.2668 0 -2.887173 0 1.420767 0.000001 0 0 0 0 0 0
// $definebone "helmet0_0" "head" -13.614214 -0.00134 -3.400192 -3.140417 1.173111 -3.140317 0 0 0 0 0 0
// $definebone "helmet0_1" "helmet0_0" 15.990784 0.000001 0 0.000001 1.27278 0.000494 0 0 0 0 0 0




$sequence "BindPose" "helmet_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
