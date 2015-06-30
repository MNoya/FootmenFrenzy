// Created by Crowbar 0.24.0.0

$modelname "heroes/dragon_knight/skirt.mdl"

$bodygroup "default"
{
	studio "skirt_reference.smd"
}

$lod 1
{
	replacemodel "skirt_reference.smd" "skirt_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 104.537727 1.443686 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "R0C4" "root" -9.876337 0.146166 3.69725 1.711414 1.495128 -3.062205 0 0 0 0 0 0
// $definebone "thigh_L" "root" 2.861807 12.508788 -5.882706 1.288309 1.403562 1.609394 0 0 0 0 0 0
// $definebone "spine1" "root" -1.045684 0 15.219887 -3.141593 -1.323628 3.141593 0 0 0 0 0 0
// $definebone "R1C4" "R0C4" 24.331169 6.120735 -0.219238 -0.025225 0 0 0 0 0 0 0 0
// $definebone "R2C4" "R1C4" 17.501236 7.445724 0.048095 -0.011158 0 0 0 0 0 0 0 0




$sequence "BindPose" "skirt_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
