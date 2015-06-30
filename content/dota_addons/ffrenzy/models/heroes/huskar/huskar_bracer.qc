// Created by Crowbar 0.24.0.0

$modelname "heroes/huskar/huskar_bracer.mdl"

$bodygroup "default"
{
	studio "huskar_bracer_reference.smd"
}


$cdmaterials ""

$attachment "ArbitraryParityChain4_plc8_L" "mid_0_R" -11.74 0.07 -5.23 rotate 0 0 0
$attachment "ArbitraryParityChain2_plc4_L" "thumb_0_R" -4.83 -2.41 3.11 rotate 0 0 0
$attachment "ArbitraryParityChain1_plc2_L" "index_0_R" -14.21 0.22 -2.15 rotate 0 0 0
$attachment "ArbitraryParityChain3_plc6_L" "index_0_R" -14.21 0.22 0.1 rotate 0 0 0
$attachment "Thumb1_plc2_L" "wrist_R" -36.48 0 0 rotate 0 0 0
$attachment "Thumb1_plc2_L1" "wrist_R" -36.48 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "index_0_L" 14.21 -0.22 2.15 rotate 0 0 0
$attachment "ArbitraryParityChain2_plc5_R" "index_0_L" 14.21 -0.22 -0.1 rotate 0 0 0
$attachment "ArbitraryParityChain1_plc3_R" "thumb_0_L" 4.83 2.41 -3.11 rotate 0 0 0
$attachment "ArbitraryParityChain3_plc7_R" "mid_0_L" 11.74 -0.07 5.23 rotate 0 0 0
$attachment "Thumb_plc1_R" "wrist_L" 36.48 0 0 rotate 0 0 0
$attachment "Thumb_plc1_R1" "wrist_L" 36.48 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 97.968262 -24.738676 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" -0.314964 0 10.727539 0.000001 -1.498792 -0.000001 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 10.902779 0 -0.000004 0 0.244649 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 10.825592 0 -0.000004 0 0.306332 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 21.465309 -9.863491 2.667694 -1.566895 -0.413036 1.40081 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 21.465309 9.863493 2.667694 1.574698 0.413036 1.740783 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -13.977737 0.000008 -0.000008 -2.371542 0.488279 -0.055229 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -35.601013 0.000008 0.00001 0.011169 0.591041 -0.015423 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.483715 0 -0.000015 0.245779 0.17684 0.344578 0 0 0 0 0 0
// $definebone "mid_0_R" "wrist_R" -11.742685 0.068909 -5.230914 1.183199 -0.492645 0.60023 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -4.825321 -2.408844 3.106305 2.507997 0.319892 0.515841 0 0 0 0 0 0
// $definebone "index_0_R" "wrist_R" -14.209671 0.215149 0.101029 1.589454 -0.340752 0.459272 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 13.977741 -0.000008 0 -2.371542 0.488279 -0.055229 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 35.601006 -0.000008 0.000008 0.01117 0.591042 -0.015423 0 0 0 0 0 0
// $definebone "elbowHelper_L" "elbow_L" 20.809006 -0.000031 -0.000011 -0.019782 0.045076 0.011917 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.483727 -0.000023 -0.000002 0.245779 0.176841 0.344578 0 0 0 0 0 0
// $definebone "mid_0_L" "wrist_L" 11.742682 -0.068924 5.230933 1.1832 -0.492645 0.60023 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 4.825314 2.408852 -3.106294 2.507997 0.319893 0.515841 0 0 0 0 0 0
// $definebone "index_0_L" "wrist_L" 14.209679 -0.215149 -0.101014 1.589454 -0.340751 0.459272 0 0 0 0 0 0




$sequence "BindPose" "huskar_bracer_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "Spine_0"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "clavicle_R"
$bonemerge "clavicle_L"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"


$keyvalues
{
}
