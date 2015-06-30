// Created by Crowbar 0.24.0.0

$modelname "heroes/windrunner/windrunner_cape.mdl"

$bodygroup "default"
{
	studio "windrunner_cape_reference.smd"
}

$lod 1
{
	replacemodel "windrunner_cape_reference.smd" "windrunner_cape_windranger_back_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "cape_R2C2" 12.57 0 0 rotate 0 138.45 90
$attachment "Index_plc0_L" "cape_R2C0" 12.57 0 0 rotate 0 138.45 90

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183856 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine3" "root" 0.852072 0 26.164284 -3.141593 -0.845627 3.141593 0 0 0 0 0 0
// $definebone "cape_R0C0" "spine3" 12.882027 8.983488 10.661125 1.640662 -0.722406 3.036146 0 0 0 0 0 0
// $definebone "cape_R0C1" "spine3" 12.209129 1.034271 11.257477 1.561812 -0.725124 -3.128047 0 0 0 0 0 0
// $definebone "neck1" "spine3" 9.989594 0 0 0 0.992816 0 0 0 0 0 0 0
// $definebone "quiver" "spine3" 14.488464 -2.962094 16.347939 -0.515058 0.035037 -0.408486 0 0 0 0 0 0
// $definebone "cape_R0C2" "spine3" 12.882027 -8.064877 10.661125 1.483867 -0.720882 -3.010318 0 0 0 0 0 0
// $definebone "clavicle_R" "spine3" 5.647865 -3.095643 -3.190628 -1.570796 0.336288 1.723915 0 0 0 0 0 0
// $definebone "clavicle_L" "spine3" 5.801491 3.303893 -3.141594 1.570796 -0.332645 1.41948 0 0 0 0 0 0
// $definebone "cape_R1C0" "cape_R0C0" 25.017906 5.027225 -0.000002 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C0" "cape_R1C0" 27.691277 -0.000008 -0.000013 0 0 -0.000001 0 0 0 0 0 0
// $definebone "cape_R1C1" "cape_R0C1" 25.017883 5.027228 0.000001 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C1" "cape_R1C1" 33.304043 0.000015 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "cape_R1C2" "cape_R0C2" 25.017868 5.027232 0.000002 0 0 0.151361 0 0 0 0 0 0
// $definebone "cape_R2C2" "cape_R1C2" 27.691223 -0.000004 0 0 0 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -10.069981 0 -0.000008 -0.827928 0.738356 0.849272 0 0 0 0 0 0




$sequence "BindPose" "windrunner_cape_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
