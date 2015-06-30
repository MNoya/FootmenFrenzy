// Created by Crowbar 0.24.0.0

$modelname "heroes/windrunner/windrunner_bow.mdl"

$bodygroup "default"
{
	studio "windrunner_bow_reference.smd"
}

$lod 1
{
	replacemodel "windrunner_bow_reference.smd" "windrunner_bow_windranger_weapon_lod1.smd"
}

$cdmaterials ""

$attachment "bow_top" "joint8" 22 1 -3 rotate 0 0 0
$attachment "bow_bot" "joint3" 17 2.35 1 rotate 0 0 0
$attachment "bow_mid" "bowstring_jnt" 0 0 0 rotate 0 0 0
$attachment "Thumb_plc0_L" "cape_R2C2" 12.57 0 0 rotate 0 138.45 90
$attachment "Index_plc0_L" "cape_R2C0" 12.57 0 0 rotate 0 138.45 90

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183856 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "cape_R2C2" "root" -24.873333 -13.216841 -23.404671 2.150908 1.390417 -2.568955 0 0 0 0 0 0
// $definebone "cape_R2C0" "root" -24.873329 13.120461 -23.495041 1.087104 1.40018 2.663897 0 0 0 0 0 0
// $definebone "cape_R2C1" "root" -25.719656 0.446871 -30.103386 1.637938 1.4191 -3.075219 0 0 0 0 0 0
// $definebone "bow_1" "root" 72.423546 25.444571 -73.928757 -2.149297 1.023893 0.741559 0 0 0 0 0 0
// $definebone "joint1" "bow_1" -2.989397 13.273392 -2.159805 -1.160985 1.393343 0.6866 0 0 0 0 0 0
// $definebone "bowstring_jnt" "bow_1" -4.694052 4.940876 19.505188 -0.519719 -1.238721 2.337621 0 0 0 0 0 0
// $definebone "joint6" "bow_1" 2.443727 -11.098888 4.305382 -2.913244 0.773843 -1.138807 0 0 0 0 0 0
// $definebone "joint2" "joint1" 0.157372 -0.072339 24.036354 -3.141571 -1.561993 3.141574 0 0 0 0 0 0
// $definebone "joint3" "joint2" 23.273916 0.739799 6.335159 0 -0.46709 0 0 0 0 0 0 0
// $definebone "joint7" "joint6" 6.289116 -0.112274 -21.863054 0 1.521339 0 0 0 0 0 0 0
// $definebone "joint8" "joint7" 21.48946 1.280217 -2.082657 0 0.437665 0 0 0 0 0 0 0




$sequence "BindPose" "windrunner_bow_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
