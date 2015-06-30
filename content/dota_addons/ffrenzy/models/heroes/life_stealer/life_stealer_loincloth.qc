// Created by Crowbar 0.24.0.0

$modelname "heroes/life_stealer/life_stealer_loincloth.mdl"

$bodygroup "default"
{
	studio "life_stealer_loincloth_reference.smd"
}

$lod 1
{
	replacemodel "life_stealer_loincloth_reference.smd" "life_stealer_loincloth_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 80.783081 -10.929697 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "thigh_R" "Root_0" 0 -9.459961 -4.317146 -1.92745 -0.893083 2.289114 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 8.859185 0 8.678207 0 -0.266308 0 0 0 0 0 0 0
// $definebone "B_flap_R0C1" "Root_0" -10.630489 11.256891 9.625999 -1.566505 1.118244 -3.136821 0 0 0 0 0 0
// $definebone "B_flap_R0C0" "Root_0" -10.630489 -11.256891 9.625999 -1.783828 1.114563 3.12758 0 0 0 0 0 0
// $definebone "thigh_L" "Root_0" 0 9.459961 -4.317146 1.735919 1.015529 1.560386 0 0 0 0 0 0
// $definebone "B_flap_R1C1" "B_flap_R0C1" 15.955494 -0.000004 0 0.000858 0.00032 0.257652 0 0 0 0 0 0
// $definebone "B_flap_R2C1" "B_flap_R1C1" 16.877934 0 0.000001 0 0 0 0 0 0 0 0 0
// $definebone "B_flap_R1C0" "B_flap_R0C0" 15.955479 0 0.000001 0.044146 0.039676 0.27867 0 0 0 0 0 0
// $definebone "B_flap_R2C0" "B_flap_R1C0" 16.877945 -0.000011 -0.000001 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "life_stealer_loincloth_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "thigh_R"
$bonemerge "B_flap_R0C1"
$bonemerge "B_flap_R0C0"
$bonemerge "thigh_L"
$bonemerge "B_flap_R1C1"
$bonemerge "B_flap_R2C1"
$bonemerge "B_flap_R1C0"
$bonemerge "B_flap_R2C0"


$keyvalues
{
}
