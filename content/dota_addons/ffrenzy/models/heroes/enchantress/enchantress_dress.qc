// Created by Crowbar 0.24.0.0

$modelname "heroes/enchantress/enchantress_dress.mdl"

$bodygroup "default"
{
	studio "enchantress_dress_reference.smd"
}

$lod 1
{
	replacemodel "enchantress_dress_reference.smd" "enchantress_dress_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 97.879501 -9.819654 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine1" "root" 31.118504 0 18.920013 0.000001 -1.484153 -0.000001 0 0 0 0 0 0
// $definebone "spine1_1" "root" -38.433178 0 2.686058 0 0 0 0 0 0 0 0 0
// $definebone "thigh_R" "spine1" -8.864151 -13.174 5.030951 -2.78346 -0.129955 0.000009 0 0 0 0 0 0
// $definebone "skirt0_0_L" "spine1" -1.611183 21.432869 -5.347145 3.098538 0.245212 2.965956 0 0 0 0 0 0
// $definebone "skirt1_0_R" "spine1" -1.611183 -21.432873 -5.347141 3.098537 -0.245212 0.175637 0 0 0 0 0 0
// $definebone "thigh_L" "spine1" -8.864151 13.174 5.030948 0.332882 0.129954 3.141585 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -26.300461 0 -0.000004 0 0.000042 0 0 0 0 0 0 0
// $definebone "skirt0_1_L" "skirt0_0_L" 12.968124 0 0.000004 -0.002613 0.11344 -0.193408 0 0 0 0 0 0
// $definebone "skirt1_1_R" "skirt1_0_R" -12.968124 0.000004 0 -0.002613 -0.11344 0.193408 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 26.300453 0.000002 0.000003 0 0.000042 0 0 0 0 0 0 0




$sequence "BindPose" "enchantress_dress_anims\BindPose.smd" {
	fps 30
}

$bonemerge "root"


$keyvalues
{
}
