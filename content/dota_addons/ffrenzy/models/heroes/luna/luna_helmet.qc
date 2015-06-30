// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna_helmet.mdl"

$bodygroup "default"
{
	studio "luna_helmet_reference.smd"
}

$lod 1
{
	replacemodel "luna_helmet_reference.smd" "luna_helmet_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "Head_1" "root" 1.660608 0.000003 123.682167 0 -0.000001 0 0 0 0 0 0 0
// $definebone "PonyTail0_R0C0" "Head_1" -4.803844 0.215646 8.781906 1.615477 -0.356392 -3.091015 0 0 0 0 0 0
// $definebone "PonyTail0_R1C0" "PonyTail0_R0C0" 14.794281 0.000015 0.000002 0.080046 0.360311 -1.357958 0 0 0 0 0 0
// $definebone "PonyTail0_R2C0" "PonyTail0_R1C0" 16.22789 -0.52227 -0.604889 0.191182 -0.397317 -0.562285 0 0 0 0 0 0
// $definebone "PonyTail0_R3C0" "PonyTail0_R2C0" 9.728867 0.000011 -0.00001 0.141933 -0.215499 0.154898 0 0 0 0 0 0




$sequence "BindPose" "luna_helmet_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
