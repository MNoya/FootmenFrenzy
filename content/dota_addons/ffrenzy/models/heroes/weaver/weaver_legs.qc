// Created by Crowbar 0.24.0.0

$modelname "heroes/weaver/weaver_legs.mdl"

$bodygroup "default"
{
	studio "weaver_legs_reference.smd"
}

$lod 1
{
	replacemodel "weaver_legs_reference.smd" "weaver_legs_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" -0.130668 23.278011 -23.448708 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "thigh_A_R" "Root_0" -2.425819 -24.147219 -5.923349 -2.823477 0.952033 0.725842 0 0 0 0 0 0
// $definebone "thigh_A_L" "Root_0" -2.425819 24.408556 -5.923346 0.318116 -0.952033 2.415751 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 27.456375 0.104463 -2.864044 0 -0.971398 0 0 0 0 0 0 0
// $definebone "ArbitraryChain0_0" "Root_0" -17.486979 0.329618 4.451557 3.139998 -0.597106 -3.138757 0 0 0 0 0 0
// $definebone "knee_A_R" "thigh_A_R" -57.323719 0 0.000002 3.141593 1.255789 -3.141593 0 0 0 0 0 0
// $definebone "ankle_A_R" "knee_A_R" -43.97665 0.000008 0 -0.000721 -0.337423 0.002178 0 0 0 0 0 0
// $definebone "toeBall_A_R" "ankle_A_R" -38.351952 0 0.000015 -0.429478 -0.429145 0.502894 0 0 0 0 0 0
// $definebone "knee_A_L" "thigh_A_L" 57.32373 -0.000005 0 -3.141593 1.255789 3.141592 0 0 0 0 0 0
// $definebone "ankle_A_L" "knee_A_L" 43.976677 -0.000015 0.000092 0.006242 -0.347355 -0.018337 0 0 0 0 0 0
// $definebone "toeBall_A_L" "ankle_A_L" 38.705147 0 0.000008 -0.424188 -0.420401 0.52001 0 0 0 0 0 0
// $definebone "thigh_R" "Spine_0" -3.35256 -20.73468 -0.807741 -2.27149 0.116817 2.495239 0 0 0 0 0 0
// $definebone "thigh_L" "Spine_0" -3.352563 20.78709 -0.807745 0.870102 -0.116816 0.646353 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -42.904587 -0.000002 -0.000001 3.141592 1.314437 3.141592 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -29.767902 0.000008 0.000008 0.043046 -0.450933 -0.098515 0 0 0 0 0 0
// $definebone "toeBall_R" "ankle_R" -38.488022 -0.000011 -0.000004 -0.326707 -0.476538 0.634134 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 42.904579 0 0.000001 3.141593 1.314437 3.141593 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 29.767879 -0.000003 0 0.044001 -0.448669 -0.101158 0 0 0 0 0 0
// $definebone "toeBall_L" "ankle_L" 38.359081 0.000006 0.000011 -0.327974 -0.47839 0.637192 0 0 0 0 0 0




$sequence "BindPose" "weaver_legs_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
