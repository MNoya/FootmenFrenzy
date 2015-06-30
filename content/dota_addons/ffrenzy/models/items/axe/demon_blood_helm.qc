// Created by Crowbar 0.24.0.0

$modelname "items/axe/demon_blood_helm.mdl"

$bodygroup "default"
{
	studio "demon_blood_helm_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "head" "" 0 147.507156 12.260564 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "DB_hair_R0C0" "head" -8.00556 0 15.935837 1.570749 -0.61576 -3.141511 0 0 0 0 0 0
// $definebone "DB_hair_R1C0" "DB_hair_R0C0" 5.766518 -0.000015 0 0.000046 0.000112 -0.756709 0 0 0 0 0 0
// $definebone "DB_hair_R2C0" "DB_hair_R1C0" 16.408646 0.000046 0.000006 0.0001 0.000049 -0.672543 0 0 0 0 0 0
// $definebone "DB_hair_R3C0" "DB_hair_R2C0" 15.456787 -0.000031 0.000002 0.000013 -0.000033 -0.073024 0 0 0 0 0 0
// $definebone "DB_hair_R4C0" "DB_hair_R3C0" 16.575485 -0.000008 0 0.000003 0.000042 -0.03919 0 0 0 0 0 0




$sequence "BindPose" "demon_blood_helm_anims\BindPose.smd" {
	fps 30
}

$bonemerge "head"
$bonemerge "DB_hair_R0C0"
$bonemerge "DB_hair_R1C0"
$bonemerge "DB_hair_R2C0"
$bonemerge "DB_hair_R3C0"
$bonemerge "DB_hair_R4C0"


$keyvalues
{
}
