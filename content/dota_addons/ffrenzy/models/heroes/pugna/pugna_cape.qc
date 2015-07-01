// Created by Crowbar 0.24.0.0

$modelname "heroes/pugna/pugna_cape.mdl"

$bodygroup "default"
{
	studio "pugna_cape_reference.smd"
}

$lod 1
{
	replacemodel "pugna_cape_reference.smd" "pugna_cape_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 75.149734 -4.691357 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_1" "Root_0" -0.394053 0 22.633774 0 -1.508751 0 0 0 0 0 0 0
// $definebone "left_cape00" "Spine_1" 19.006622 15.637649 13.026322 -2.576798 -0.308536 2.8087 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_1" 17.898476 3.034862 -4.182955 1.570796 -0.168992 1.637737 0 0 0 0 0 0
// $definebone "right_cape00" "Spine_1" 18.831985 -14.083098 13.671968 0.502952 0.279386 0.388324 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_1" 17.898476 -3.034861 -4.182956 -1.570797 0.168992 1.503855 0 0 0 0 0 0
// $definebone "left_cape01" "left_cape00" 29.589462 0.000001 -0.000008 0 0 -0.029717 0 0 0 0 0 0
// $definebone "left_cape02" "left_cape01" 29.614277 -0.000006 0 0 0 -0.00636 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 23.870022 -0.000006 0.000031 -1.561615 0.973199 -0.112828 0 0 0 0 0 0
// $definebone "right_cape01" "right_cape00" -29.589066 -0.000151 0.000008 0 0 -0.029718 0 0 0 0 0 0
// $definebone "right_cape02" "right_cape01" -29.614262 0.000008 0.000008 0 0 -0.00636 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -23.870012 0.000002 -0.000023 -1.561615 0.973199 -0.112828 0 0 0 0 0 0




$sequence "BindPose" "pugna_cape_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
