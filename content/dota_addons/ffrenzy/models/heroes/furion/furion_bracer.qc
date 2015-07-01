// Created by Crowbar 0.24.0.0

$modelname "heroes/furion/furion_bracer.mdl"

$bodygroup "default"
{
	studio "furion_bracer_reference.smd"
}

$lod 1
{
	replacemodel "furion_bracer_reference.smd" "furion_bracer_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 90.287514 -9.440562 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "Root_0" -1.546075 -53.137688 26.874481 0.971786 -0.769531 2.584565 0 0 0 0 0 0
// $definebone "elbow_L" "Root_0" -1.546084 53.137688 26.874466 -2.169806 0.769531 0.557028 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.386948 -0.000008 -0.000013 0.022955 0.184164 -0.068582 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -9.375076 1.126076 6.698824 2.404932 0.391017 0.682323 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.386948 -0.000015 -0.000007 0.177115 -0.019807 -0.020356 0 0 0 0 0 0
// $definebone "ring_0_L" "wrist_L" 15.796867 4.998466 8.219388 1.096416 0.070284 0.935194 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 9.375059 -1.126076 -6.698836 -2.639872 0.313547 1.45017 0 0 0 0 0 0




$sequence "BindPose" "furion_bracer_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
