// Created by Crowbar 0.24.0.0

$modelname "heroes/enchantress/enchantress_hair.mdl"

$bodygroup "default"
{
	studio "enchantress_hair_reference.smd"
}

$lod 1
{
	replacemodel "enchantress_hair_reference.smd" "enchantress_hair_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 97.879501 -9.819654 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "head" "root" 26.882149 0 90.64502 0 0 0 0 0 0 0 0 0
// $definebone "Hair1_0" "head" -12.508192 0.000002 13.159592 0 -0.139637 -3.141593 0 0 0 0 0 0
// $definebone "Hair1_1" "Hair1_0" 15.746529 0 0 0 0.558953 0 0 0 0 0 0 0
// $definebone "Hair1_2" "Hair1_1" 8.580864 0 0.000031 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "enchantress_hair_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
