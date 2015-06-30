// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/headitem.mdl"

$bodygroup "default"
{
	studio "headitem_reference.smd"
}

$lod 1
{
	replacemodel "headitem_reference.smd" "headitem_model_lod1.smd"
}

$cdmaterials ""

$attachment "ArbitraryChain2_plc2" "beard2_0" 140.18 0 0 rotate 0 0 0
$attachment "Thumb_plc1_R" "Cloth_test_R4C0" 11.79 0 0 rotate 0 0 0
$attachment "Index_plc1_R" "Cloth_test_R4C1" 13.9 0 0 rotate 0 0 0
$attachment "Mid_plc1_R" "Cloth_test_R4C2" 12.63 0 0 rotate 0 0 0
$attachment "ArbitraryChain1_plc1" "bag1_1" 69.39 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 51.677372 -5.107393 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "root" -20.197517 -10.096977 -26.157564 0.385958 1.28343 -1.086825 0 0 0 0 0 0
// $definebone "bag1_1" "root" 1.161499 27.022602 -0.458149 1.968986 1.198795 1.944291 0 0 0 0 0 0
// $definebone "Cloth_test_R4C2" "root" -16.484846 26.571224 -14.454502 -0.66121 1.492626 -2.463922 0 0 0 0 0 0
// $definebone "head" "root" 12.816107 0 59.949505 0 0 0 0 0 0 0 0 0
// $definebone "Cloth_test_R4C1" "root" -20.799574 6.094932 -19.066608 -0.681722 1.43217 -2.343161 0 0 0 0 0 0
// $definebone "beard2_0" "head" 12.863415 -0.390521 -18.16877 -1.570796 -0.041888 1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "root" -5.967788 0 22.022251 0.000001 -1.468407 0 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 20.591797 0.000001 -0.000002 0 0.223676 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 13.240479 0.000001 0 0 0.619319 0 0 0 0 0 0 0




$sequence "BindPose" "headitem_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
