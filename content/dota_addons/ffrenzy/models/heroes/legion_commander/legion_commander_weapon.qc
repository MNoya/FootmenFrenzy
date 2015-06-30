// Created by Crowbar 0.24.0.0

$modelname "heroes/legion_commander/legion_commander_weapon.mdl"

$bodygroup "default"
{
	studio "legion_commander_weapon_reference.smd"
}

$lod 1
{
	replacemodel "legion_commander_weapon_reference.smd" "legion_commander_weapon_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root0_JNT" "" 0 89.343208 -1.171317 -1.570796 0.09066 -1.570796 0 0 0 0 0 0
// $definebone "Offhand0_JNT" "Root0_JNT" 93.367294 40.212219 0 1.570796 0 -1.661456 0 0 0 0 0 0
// $definebone "weapon_0" "Root0_JNT" 93.367294 40.212219 0 1.570796 0 -1.661456 0 0 0 0 0 0




$sequence "BindPose" "legion_commander_weapon_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root0_JNT"
$bonemerge "Offhand0_JNT"
$bonemerge "weapon_0"


$keyvalues
{
}
