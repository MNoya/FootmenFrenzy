// Created by Crowbar 0.24.0.0

$modelname "heroes/silencer/silencer_robe.mdl"

$bodygroup "default"
{
	studio "silencer_robe_reference.smd"
}


$cdmaterials ""

$attachment "ArbitraryParityChain_plc0_L" "ClothTop0_0_L" 180 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "ClothTop1_0_R" -180 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 120.152336 -0.848275 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "FRSkirt3_0" "Root_0" 0 -17 -6.664299 -1.017161 1.321131 -1.031146 0 0 0 0 0 0
// $definebone "thigh_R" "Root_0" 0.301622 -11.912807 -14.927658 -2.418993 -1.301233 1.878582 0 0 0 0 0 0
// $definebone "FLSkirt2_0" "Root_0" 0 17 -6.664299 0.746684 1.247141 0.773305 0 0 0 0 0 0
// $definebone "ClothTop1_0_R" "Root_0" -1.515688 -11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0
// $definebone "BSkirt4_0" "Root_0" -11.246664 0 -5.162819 -3.141593 1.471382 -3.141593 0 0 0 0 0 0
// $definebone "ClothTop0_0_L" "Root_0" -1.515688 11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0
// $definebone "FRSkirt3_1" "FRSkirt3_0" 67.734207 0.000008 0.000015 -0.045603 0.125424 -0.136209 0 0 0 0 0 0
// $definebone "FLSkirt2_1" "FLSkirt2_0" 65.276863 -0.000008 -0.000004 0.097791 0.254907 0.147026 0 0 0 0 0 0
// $definebone "BSkirt4_1" "BSkirt4_0" 53.054127 0.000002 -0.000004 0 0.351705 0 0 0 0 0 0 0
// $definebone "BSkirt4_2" "BSkirt4_1" 57.22863 0.000002 -0.000004 0 1.252228 0 0 0 0 0 0 0




$sequence "BindPose" "silencer_robe_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
