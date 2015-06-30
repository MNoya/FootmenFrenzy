// Created by Crowbar 0.24.0.0

$modelname "heroes/windrunner/windrunner_quiver.mdl"

$bodygroup "default"
{
	studio "windrunner_quiver_reference.smd"
}

$lod 1
{
	replacemodel "windrunner_quiver_reference.smd" "windrunner_quiver_windranger_weapon_offhand_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "cape_R2C2" 12.57 0 0 rotate 0 138.45 90
$attachment "Index_plc0_L" "cape_R2C0" 12.57 0 0 rotate 0 138.45 90

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183856 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "cape_R2C0" "root" -24.873329 13.120461 -23.495041 1.087104 1.40018 2.663897 0 0 0 0 0 0
// $definebone "cape_R2C1" "root" -25.719656 0.446871 -30.103386 1.637938 1.4191 -3.075219 0 0 0 0 0 0
// $definebone "quiver" "root" -20.992167 -2.962096 26.164284 2.190976 -0.788965 -2.543069 0 0 0 0 0 0
// $definebone "cape_R2C2" "root" -24.873333 -13.216841 -23.404671 2.150908 1.390417 -2.568955 0 0 0 0 0 0
// $definebone "arrow_2" "quiver" -12.08783 10.81171 11.169212 0 0 0 0 0 0 0 0 0
// $definebone "arrow_1" "quiver" -11.431297 12.463192 10.587368 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "windrunner_quiver_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
