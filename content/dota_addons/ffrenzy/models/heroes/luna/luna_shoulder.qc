// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna_shoulder.mdl"

$bodygroup "default"
{
	studio "luna_shoulder_reference.smd"
}

$lod 1
{
	replacemodel "luna_shoulder_reference.smd" "luna_shoulder_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "Spine_1" "root" 5.098921 0 90.298698 -3.141592 -1.291431 3.141592 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_1" 10.78392 0 0.000015 0 0.372008 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_3" -1.034973 -2.284006 -4.069409 -1.570797 0.418612 1.498623 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_3" -1.034958 2.284006 -4.069409 1.570796 -0.418612 1.64297 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 7.512848 0 -0.000004 0 -0.167145 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -13.001728 0.000001 0.000031 -1.892657 0.941046 -0.471705 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 13.00173 -0.000006 -0.000015 -1.86005 1.01711 -0.682982 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 15.580246 0.000001 0.000004 -3.141593 1.496294 -3.141592 0 0 0 0 0 0




$sequence "BindPose" "luna_shoulder_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
