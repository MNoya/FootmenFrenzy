// Created by Crowbar 0.24.0.0

$modelname "heroes/huskar/huskar_dagger.mdl"

$bodygroup "default"
{
	studio "huskar_dagger_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 97.968262 -24.738676 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" -0.314964 0 10.727539 0.000001 -1.498792 -0.000001 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 10.902779 0 -0.000004 0 0.244649 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 10.825592 0 -0.000004 0 0.306332 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 21.465309 -9.863491 2.667694 -1.566895 -0.413036 1.40081 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -13.977737 0.000008 -0.000008 -2.371542 0.488279 -0.055229 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -35.601006 0.000008 0.000009 0.01117 0.591041 -0.015423 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.483719 -0.000008 -0.000017 0.245779 0.176841 0.344578 0 0 0 0 0 0
// $definebone "sword_2" "wrist_R" -37.153809 -115.34359 -7.88511 -0.945074 0.762595 -0.377828 0 0 0 0 0 0




$sequence "BindPose" "huskar_dagger_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "Spine_0"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "clavicle_R"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"


$keyvalues
{
}
