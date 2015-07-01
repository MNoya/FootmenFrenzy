// Created by Crowbar 0.24.0.0

$modelname "heroes/earthshaker/belt.mdl"

$bodygroup "default"
{
	studio "belt_reference.smd"
}

$lod 1
{
	replacemodel "belt_reference.smd" "belt_model_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "beard_R0C0" -2.49 0 -13.5 rotate 0 0 0
$attachment "attach_totem" "totem_1" 0 0 0 rotate 89.46 81.89 92.79

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 56.513042 -40.708462 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine1" "root" 13.521538 0 17.097057 0 -0.655589 0 0 0 0 0 0 0
// $definebone "Flap_Right_R0C0" "root" -7.38591 -18.400002 19.479649 0.938995 0.973897 -2.954883 0 0 0 0 0 0
// $definebone "Flap_Left_R0C0" "root" -7.38591 18.399998 19.479649 2.142384 0.973897 2.954884 0 0 0 0 0 0
// $definebone "totem_1" "spine1" 55.623436 -1.103224 52.612984 1.562133 0.514114 0.001541 0 0 0 0 0 0
// $definebone "beard_R0C0" "spine1" 70.316071 -0.000003 -38.472767 -3.141593 0.900681 -3.141593 0 0 0 0 0 0
// $definebone "Flap_Right_R1C0" "Flap_Right_R0C0" 7.258451 0 0 0 0 0 0 0 0 0 0 0
// $definebone "Flap_Right_R2C0" "Flap_Right_R1C0" 19.502483 -0.000008 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Flap_Left_R1C0" "Flap_Left_R0C0" 7.258442 0 -0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Flap_Left_R2C0" "Flap_Left_R1C0" 19.502481 0 -0.000008 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "belt_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
