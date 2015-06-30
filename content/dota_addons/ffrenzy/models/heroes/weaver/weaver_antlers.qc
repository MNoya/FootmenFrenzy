// Created by Crowbar 0.24.0.0

$modelname "heroes/weaver/weaver_antlers.mdl"

$bodygroup "default"
{
	studio "weaver_antlers_reference.smd"
}

$lod 1
{
	replacemodel "weaver_antlers_reference.smd" "weaver_antlers_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" -0.130668 23.278011 -23.448708 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_3" "Root_0" 66.88324 0.104463 53.011948 0 0.323318 0 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 23.898169 0.000001 0 0 0.643596 0 0 0 0 0 0 0
// $definebone "rant2_0" "Head_0" -8.5103 -6.638564 6.422455 0.237815 0.350864 -2.777452 0 0 0 0 0 0
// $definebone "lant1_0" "Head_0" -8.597523 7.777837 6.686554 -0.285944 0.35918 2.794984 0 0 0 0 0 0
// $definebone "rant2_1" "rant2_0" 38.44746 0 0 0 0.336453 0 0 0 0 0 0 0
// $definebone "rant2_2" "rant2_1" 46.460392 0.000004 0.000008 0 0 0 0 0 0 0 0 0
// $definebone "lant1_1" "lant1_0" 38.214474 -0.000006 -0.000008 0 0.332744 0 0 0 0 0 0 0
// $definebone "lant1_2" "lant1_1" 46.486073 0.000002 0.000008 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "weaver_antlers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
