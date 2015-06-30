// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/bracer.mdl"

$bodygroup "default"
{
	studio "bracer_reference.smd"
}

$lod 1
{
	replacemodel "bracer_reference.smd" "bracer_model_lod1.smd"
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
// $definebone "beard2_0" "root" 25.67952 -0.390522 41.780743 -1.570796 -0.041888 1.570796 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "root" -20.197517 -10.096977 -26.157564 0.385958 1.28343 -1.086825 0 0 0 0 0 0
// $definebone "Cloth_test_R4C2" "root" -16.484846 26.571224 -14.454502 -0.66121 1.492626 -2.463922 0 0 0 0 0 0
// $definebone "bicep_R" "root" 2.581802 -23.569075 35.231457 2.126502 -0.657839 1.389763 0 0 0 0 0 0
// $definebone "Cloth_test_R4C1" "root" -20.799574 6.094932 -19.066608 -0.681722 1.43217 -2.343161 0 0 0 0 0 0
// $definebone "bicep_L" "root" 2.581799 23.569073 35.231457 -1.015091 0.657839 1.75183 0 0 0 0 0 0
// $definebone "bag1_1" "root" 1.161499 27.022602 -0.458149 1.968986 1.198795 1.944291 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -22.720978 0.000008 0 0 0.953987 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -26.806984 0.000008 0.000008 -0.856305 -0.260199 0.769341 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -2.845478 -0.892815 2.643613 2.164759 0.826687 0.126162 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 22.720978 -0.000008 0.000004 0.000001 0.953987 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 26.806988 -0.000008 -0.000008 -0.811918 -0.402279 0.633388 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 2.845474 0.892822 -2.643615 2.164759 0.826688 0.126162 0 0 0 0 0 0




$sequence "BindPose" "bracer_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
