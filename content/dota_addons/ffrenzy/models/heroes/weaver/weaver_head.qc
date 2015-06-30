// Created by Crowbar 0.24.0.0

$modelname "heroes/weaver/weaver_head.mdl"

$bodygroup "default"
{
	studio "weaver_head_reference.smd"
}

$lod 1
{
	replacemodel "weaver_head_reference.smd" "weaver_head_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" -0.130668 23.278011 -23.448708 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_1" "Root_0" 40.962959 0.104463 16.903971 0 -1.308291 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 25.037567 0.000001 -0.000004 0 0.757552 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 10.416534 -13.898809 -2.340996 -1.570796 0.130459 1.613581 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 10.416534 13.95122 -2.340996 1.570797 -0.130459 1.528012 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_2" 22.793289 0.000002 0.000008 0 0.874058 0 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 23.898169 0.000001 0 0 0.643596 0 0 0 0 0 0 0
// $definebone "rant2_0" "Head_0" -8.510303 -6.638564 6.422455 0.237815 0.350864 -2.777452 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 20.53104 0.000001 0 0 -0.196123 0 0 0 0 0 0 0
// $definebone "lant1_0" "Head_0" -8.597527 7.777837 6.686546 -0.285944 0.35918 2.794984 0 0 0 0 0 0
// $definebone "rant2_1" "rant2_0" 38.447464 -0.000002 -0.000008 0 0.336453 0 0 0 0 0 0 0
// $definebone "lant1_1" "lant1_0" 38.21447 -0.000002 -0.000015 0 0.332744 0 0 0 0 0 0 0




$sequence "BindPose" "weaver_head_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
