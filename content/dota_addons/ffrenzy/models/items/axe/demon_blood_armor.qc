// Created by Crowbar 0.24.0.0

$modelname "items/axe/demon_blood_armor.mdl"

$bodygroup "default"
{
	studio "demon_blood_armor_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "clavicle_L" "" 6.463617 122.208168 0.274315 -1.356449 0.134077 0.231371 0 0 0 0 0 0
// $definebone "clavicle_R" "" -6.463617 122.208168 0.274315 1.785143 -0.134077 -0.231371 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 22.909115 0.000004 0 -2.072154 1.164154 -0.423338 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -22.909115 -0.000004 0 -2.072154 1.164154 -0.423338 0 0 0 0 0 0




$sequence "BindPose" "demon_blood_armor_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
