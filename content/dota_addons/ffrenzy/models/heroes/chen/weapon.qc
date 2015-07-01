// Created by Crowbar 0.24.0.0

$modelname "heroes/chen/weapon.mdl"

$bodygroup "default"
{
	studio "weapon_reference.smd"
}

$lod 1
{
	replacemodel "weapon_reference.smd" "weapon_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 91.151833 25.170647 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "weapon1_0" "root" -40.400513 68.079826 15.417152 -0.241985 -1.133195 0.797376 0 0 0 0 0 0




$sequence "BindPose" "weapon_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
