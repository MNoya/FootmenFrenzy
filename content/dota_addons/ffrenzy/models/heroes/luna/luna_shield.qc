// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna_shield.mdl"

$bodygroup "default"
{
	studio "luna_shield_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "Shield_1" "root" -10.858181 5.096156 -94.663139 1.540666 -0.045501 1.49955 0 0 0 0 0 0




$sequence "BindPose" "luna_shield_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
