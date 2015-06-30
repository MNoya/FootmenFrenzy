// Created by Crowbar 0.24.0.0

$modelname "heroes/sniper/weapon.mdl"

$bodygroup "default"
{
	studio "weapon_reference.smd"
}

$lod 1
{
	replacemodel "weapon_reference.smd" "weapon_model_lod1.smd"
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
// $definebone "Cloth_test_R4C1" "root" -20.799574 6.094932 -19.066608 -0.681722 1.43217 -2.343162 0 0 0 0 0 0
// $definebone "Cloth_test_R4C0" "root" -20.197517 -10.096977 -26.157564 0.385959 1.28343 -1.086824 0 0 0 0 0 0
// $definebone "beard2_0" "root" 25.517424 -0.390522 45.093433 -1.570796 -0.041888 1.570796 0 0 0 0 0 0
// $definebone "WeaponRoot_0" "root" 29.346724 -66.276466 -21.149405 1.264984 -1.231409 2.200719 0 0 0 0 0 0
// $definebone "bag1_1" "root" 1.161499 27.022602 -0.458149 1.968987 1.198795 1.944291 0 0 0 0 0 0
// $definebone "Cloth_test_R4C2" "root" -16.484846 26.571224 -14.454502 -0.661211 1.492627 -2.463923 0 0 0 0 0 0
// $definebone "Gun_cock_0" "WeaponRoot_0" -1.107825 4.394753 -3.497444 1.27789 -1.216289 2.171174 0 0 0 0 0 0




$sequence "BindPose" "weapon_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
