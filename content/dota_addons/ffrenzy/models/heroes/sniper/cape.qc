// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/cape.mdl"

$bodygroup "default"
{
	studio "cape_reference.smd"
}

$lod 1
{
	replacemodel "cape_reference.smd" "cape_model_lod1.smd"
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
// $definebone "bag1_1" "root" 1.161499 27.022602 -0.458149 1.968986 1.198795 1.944291 0 0 0 0 0 0
// $definebone "Spine_2" "root" 0.378086 0 55.049046 0 -0.625412 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" -0.656044 9.765053 -8.795006 1.570796 0.477008 2.156615 0 0 0 0 0 0
// $definebone "beard2_0" "Spine_2" 12.74477 -0.390524 -25.569168 -0.944968 -0.033956 1.546265 0 0 0 0 0 0
// $definebone "Cloth_test_R0C0" "Spine_2" -0.269157 -3.465325 6.412247 -1.578359 0.333425 -3.134171 0 0 0 0 0 0
// $definebone "Cloth_test_R0C2" "Spine_2" 9.131153 16.317993 -4.259682 -1.351414 -0.499684 2.762297 0 0 0 0 0 0
// $definebone "Cloth_test_R0C1" "Spine_2" 3.022774 8.61482 5.118248 -1.459257 0.023777 2.988564 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" -0.65604 -9.765053 -8.795006 -1.570796 -0.477007 0.984978 0 0 0 0 0 0
// $definebone "Cloth_test_R1C0" "Cloth_test_R0C0" 15.914505 0 0.000001 -0.231276 -0.058931 0.366909 0 0 0 0 0 0
// $definebone "Cloth_test_R2C0" "Cloth_test_R1C0" 19.961967 -0.000008 0 0.306736 -0.066278 0.193465 0 0 0 0 0 0
// $definebone "Cloth_test_R3C0" "Cloth_test_R2C0" 33.156662 0.000004 -0.000004 -0.003657 -0.049937 -0.019794 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "Cloth_test_R3C0" 21.074406 0.000002 0.000002 -0.14323 -0.118016 0.201243 0 0 0 0 0 0
// $definebone "Cloth_test_R1C2" "Cloth_test_R0C2" 18.401436 0.000008 -0.000004 0.03513 0.009085 1.22884 0 0 0 0 0 0
// $definebone "Cloth_test_R2C2" "Cloth_test_R1C2" 27.277985 0.000008 0.000002 -0.085914 -0.003447 0.165989 0 0 0 0 0 0
// $definebone "Cloth_test_R3C2" "Cloth_test_R2C2" 27.018955 -0.000006 0 -0.128582 0.043042 0.020602 0 0 0 0 0 0
// $definebone "Cloth_test_R4C2" "Cloth_test_R3C2" 16.489971 0.000002 0.000004 0.079209 -0.112971 0.007228 0 0 0 0 0 0
// $definebone "Cloth_test_R1C1" "Cloth_test_R0C1" 14.977009 0 -0.000001 -0.190782 -0.040665 0.722694 0 0 0 0 0 0
// $definebone "Cloth_test_R2C1" "Cloth_test_R1C1" 23.529106 -0.000004 0.000003 0.187483 -0.05539 0.090272 0 0 0 0 0 0
// $definebone "Cloth_test_R3C1" "Cloth_test_R2C1" 29.038914 -0.000008 -0.000003 -0.119643 -0.087045 0.116655 0 0 0 0 0 0
// $definebone "Cloth_test_R4C1" "Cloth_test_R3C1" 19.55724 0.000004 -0.000001 0.024963 0.058326 -0.079066 0 0 0 0 0 0




$sequence "BindPose" "cape_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
