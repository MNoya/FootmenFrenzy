// Created by Crowbar 0.24.0.0

$modelname "heroes/pugna/pugna_belt.mdl"

$bodygroup "default"
{
	studio "pugna_belt_reference.smd"
}

$lod 1
{
	replacemodel "pugna_belt_reference.smd" "pugna_belt_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 75.149734 -4.691357 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "joint1" "Root_0" 17.122129 0 -7.548866 1.570796 1.272297 0 0 0 0 0 0 0
// $definebone "joint10" "Root_0" -19.051552 0 -2.767303 1.570797 1.180547 3.141593 0 0 0 0 0 0
// $definebone "joint13" "Root_0" -10.895918 19.289028 -2.394737 1.410143 1.171731 2.422893 0 0 0 0 0 0
// $definebone "thigh_L" "Root_0" -0.595533 15.223526 -10.999298 0.427617 1.164827 0.736026 0 0 0 0 0 0
// $definebone "joint12" "Root_0" -10.895918 -17.941154 -2.394737 1.876688 1.143785 -2.336689 0 0 0 0 0 0
// $definebone "thigh_R" "Root_0" -0.595533 -15.223528 -10.999298 -2.713976 -1.164827 2.405567 0 0 0 0 0 0
// $definebone "joint2" "joint1" 18.38224 0.000004 -0.000001 0 0 0.07875 0 0 0 0 0 0
// $definebone "joint11" "joint10" 18.542198 0.000008 0.000004 0 0 0.02951 0 0 0 0 0 0




$sequence "BindPose" "pugna_belt_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
