// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna_weapon.mdl"

$bodygroup "default"
{
	studio "luna_weapon_reference.smd"
}

$lod 1
{
	replacemodel "luna_weapon_reference.smd" "luna_weapon_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "Sword_2" "root" -10.858029 5.096212 -94.663116 1.540665 -0.045502 1.49955 0 0 0 0 0 0




$sequence "BindPose" "luna_weapon_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
