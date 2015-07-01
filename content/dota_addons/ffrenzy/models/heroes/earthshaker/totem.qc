// Created by Crowbar 0.24.0.0

$modelname "heroes/earthshaker/totem.mdl"

$bodygroup "default"
{
	studio "totem_reference.smd"
}

$lod 1
{
	replacemodel "totem_reference.smd" "totem_model_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "beard_R0C0" -2.49 0 -13.5 rotate 0 0 0
$attachment "attach_totem" "totem_1" 0 0 0 rotate 89.46 81.89 92.79

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 56.513042 -40.708462 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine1" "root" 13.521538 0 17.097057 0 -0.655589 0 0 0 0 0 0 0
// $definebone "spine2" "spine1" 19.053932 0.000001 0.000008 0 0.230318 0 0 0 0 0 0 0
// $definebone "spine3" "spine2" 24.476337 0.000002 0.000008 -0.000001 0.53196 0 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 5.390401 -11.293965 9.768791 -1.570797 -0.235339 1.870224 0 0 0 0 0 0
// $definebone "totem_1" "spine3" -30.977596 -1.10326 50.891968 1.561036 -0.248163 0.001384 0 0 0 0 0 0
// $definebone "clavicle_L" "spine3" 5.390401 11.293958 9.768806 1.570797 0.235338 1.27137 0 0 0 0 0 0
// $definebone "beard_R0C0" "spine3" 42.550205 0.000016 -4.840881 0.000005 1.478636 0.000005 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -20.123375 -0.000015 -0.000001 -2.91915 0.320944 -0.792767 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 20.123377 -0.000008 0.000002 -3.055466 0.349371 -0.854016 0 0 0 0 0 0
// $definebone "neck1" "spine3" 23.787971 0.000001 0 0.000001 -0.78501 -0.000001 0 0 0 0 0 0




$sequence "BindPose" "totem_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
