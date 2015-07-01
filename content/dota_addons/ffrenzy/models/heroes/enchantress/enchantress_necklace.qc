// Created by Crowbar 0.24.0.0

$modelname "heroes/enchantress/enchantress_necklace.mdl"

$bodygroup "default"
{
	studio "enchantress_necklace_reference.smd"
}

$lod 1
{
	replacemodel "enchantress_necklace_reference.smd" "enchantress_necklace_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 97.879501 -9.819654 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine2" "root" 33.247829 0 43.434189 3.141593 -1.401356 3.141593 0 0 0 0 0 0
// $definebone "spine3" "spine2" 20.25322 0.000001 -0.000008 0 -0.127125 0 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 7.363495 -6.187449 4.21212 -1.570796 -0.02782 1.401709 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -9.678379 0 0.000015 -1.097323 0.78087 0.486546 0 0 0 0 0 0
// $definebone "leaf5_0" "clavicle_R" -6.90262 2.014221 -8.007904 0.966127 -0.023248 -2.964605 0 0 0 0 0 0
// $definebone "leaf5_1" "leaf5_0" 13.921051 0 0 0.10568 -0.212325 0.874919 0 0 0 0 0 0




$sequence "BindPose" "enchantress_necklace_anims\BindPose.smd" {
	fps 30
}

$bonemerge "root"


$keyvalues
{
}
