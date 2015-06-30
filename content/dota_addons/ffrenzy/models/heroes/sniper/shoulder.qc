// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/shoulder.mdl"

$bodygroup "default"
{
	studio "shoulder_reference.smd"
}

$lod 1
{
	replacemodel "shoulder_reference.smd" "shoulder_model_lod1.smd"
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
// $definebone "Cloth_test_R4C2" "root" -16.484846 26.571224 -14.454502 -0.66121 1.492626 -2.463922 0 0 0 0 0 0
// $definebone "clavicle_R" "root" 4.995087 -9.765054 47.534672 -2.277259 -0.720505 1.397721 0 0 0 0 0 0
// $definebone "beard2_0" "root" 25.67952 -0.390522 41.780743 -1.570796 -0.041888 1.570796 0 0 0 0 0 0
// $definebone "clavicle_L" "root" 4.995086 9.765052 47.534672 0.864334 0.720505 1.743872 0 0 0 0 0 0
// $definebone "Cloth_test_R4C1" "root" -20.799574 6.094932 -19.066608 -0.681722 1.43217 -2.343161 0 0 0 0 0 0
// $definebone "bag1_1" "root" 1.161499 27.022602 -0.458149 1.968986 1.198795 1.944291 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "root" -20.197517 -10.096977 -26.157564 0.385959 1.28343 -1.086824 0 0 0 0 0 0
// $definebone "Spine_0" "root" -5.967788 0 22.022251 0.000001 -1.468407 0 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 20.591797 0.000001 -0.000002 0 0.223676 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 13.240479 0.000001 0 0 0.619319 0 0 0 0 0 0 0
// $definebone "neck_1" "Spine_2" 7.900219 0 0.000008 0 0.579792 0 0 0 0 0 0 0
// $definebone "head" "neck_1" 6.03943 0 0.000008 0 0.04562 0 0 0 0 0 0 0




$sequence "BindPose" "shoulder_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
