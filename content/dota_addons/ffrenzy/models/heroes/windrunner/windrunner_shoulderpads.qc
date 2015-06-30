// Created by Crowbar 0.24.0.0

$modelname "heroes/windrunner/windrunner_shoulderpads.mdl"

$bodygroup "default"
{
	studio "windrunner_shoulderpads_reference.smd"
}

$lod 1
{
	replacemodel "windrunner_shoulderpads_reference.smd" "windrunner_shoulderpads_windranger_shoulders_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "cape_R2C2" 12.57 0 0 rotate 0 138.45 90
$attachment "Index_plc0_L" "cape_R2C0" 12.57 0 0 rotate 0 138.45 90

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183856 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine3" "root" 0.852072 0 26.164284 -3.141593 -0.845627 3.141593 0 0 0 0 0 0
// $definebone "neck1" "spine3" 9.989594 0 0 0 0.992816 0 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 5.647865 -3.095643 -3.190628 -1.570796 0.336288 1.723915 0 0 0 0 0 0
// $definebone "clavicle_L" "spine3" 5.801491 3.303893 -3.141594 1.570796 -0.332645 1.41948 0 0 0 0 0 0
// $definebone "cape_R0C0" "spine3" 12.882034 8.983489 10.66114 1.640662 -0.722405 3.036146 0 0 0 0 0 0
// $definebone "arrow_1" "spine3" 10.482918 16.273054 19.821129 -0.515058 0.035037 -0.408486 0 0 0 0 0 0
// $definebone "cape_R2C2" "spine3" -20.03405 -13.216841 52.129791 1.469286 -0.871579 -2.989976 0 0 0 0 0 0
// $definebone "cape_R2C1" "spine3" -24.485954 0.446871 57.206169 1.560288 -0.876477 -3.12593 0 0 0 0 0 0
// $definebone "head" "neck1" 12.27449 0.000001 -0.000008 0 1.30315 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -10.069982 0.000008 -0.000031 -0.827928 0.738356 0.849272 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 10.176102 -0.000008 -0.000015 -0.764474 0.736323 0.81671 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 26.502808 -0.000008 0.000006 0 0.447716 0 0 0 0 0 0 0
// $definebone "cape_R2C0" "cape_R0C0" 52.392578 9.202594 -0.000011 0 0 0.15136 0 0 0 0 0 0
// $definebone "cape_R0C2" "spine3" 12.882027 -8.064877 10.661125 1.483867 -0.720882 -3.010318 0 0 0 0 0 0




$sequence "BindPose" "windrunner_shoulderpads_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
