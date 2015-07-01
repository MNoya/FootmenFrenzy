// Created by Crowbar 0.24.0.0

$modelname "heroes/silencer/silencer_shield.mdl"

$bodygroup "default"
{
	studio "silencer_shield_reference.smd"
}


$cdmaterials ""

$attachment "ArbitraryParityChain_plc0_L" "ClothTop0_0_L" 180 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "ClothTop1_0_R" -180 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 120.152336 -0.848275 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "RWeapon_2" "Root_0" 0.848348 0.000011 -120.152397 1.570796 0 1.570796 0 0 0 0 0 0
// $definebone "ClothTop0_0_L" "Root_0" -1.515688 11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0
// $definebone "ClothTop1_0_R" "Root_0" -1.515688 -11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0




$sequence "BindPose" "silencer_shield_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
