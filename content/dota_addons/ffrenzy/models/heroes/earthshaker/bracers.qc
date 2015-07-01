// Created by Crowbar 0.24.0.0

$modelname "heroes/earthshaker/bracers.mdl"

$bodygroup "default"
{
	studio "bracers_reference.smd"
}

$lod 1
{
	replacemodel "bracers_reference.smd" "bracers_model_lod1.smd"
}

$cdmaterials ""

$attachment "Thumb_plc0_L" "beard_R0C0" -2.49 0 -13.5 rotate 0 0 0
$attachment "attach_totem" "totem_1" 0 0 0 rotate 89.46 81.89 92.79

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 56.513042 -40.708462 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "root" 51.097626 -56.526367 5.265377 0.703807 -0.918268 3.125317 0 0 0 0 0 0
// $definebone "beard_R0C0" "root" 92.714325 0 29.466633 3.141588 1.556269 3.141588 0 0 0 0 0 0
// $definebone "elbow_L" "root" 49.02795 54.416962 4.527336 -2.487709 0.861043 0.092469 0 0 0 0 0 0
// $definebone "totem_1" "root" 25.539387 -1.103232 92.712296 1.561184 -0.141474 0.001355 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -42.010731 0.000015 0.000034 0.330654 -0.505503 0.317358 0 0 0 0 0 0
// $definebone "index_1_R" "wrist_R" -21.880068 -3.186691 7.676792 1.510262 0.153895 1.618236 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -4.638636 -0.676949 8.136261 2.761136 0.715779 0.78919 0 0 0 0 0 0
// $definebone "thumb_1_R" "thumb_0_R" -8.233894 -0.000004 0.000008 0 0.460756 0 0 0 0 0 0 0
// $definebone "thumb_2_R" "thumb_1_R" -7.405727 0.000004 -0.000004 0 0 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 42.010746 0 -0.000003 0.229979 -0.596105 0.552958 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 4.638641 0.676941 -8.136246 2.339012 0.727796 0.293233 0 0 0 0 0 0
// $definebone "thumb_1_L" "thumb_0_L" 8.233906 -0.000004 0.000008 0 0.460756 0 0 0 0 0 0 0
// $definebone "thumb_2_L" "thumb_1_L" 7.405735 0.00001 -0.000002 0 0 0 0 0 0 0 0 0
// $definebone "spine1" "root" 13.521538 0 17.097057 0 -0.655589 0 0 0 0 0 0 0
// $definebone "spine2" "spine1" 19.053932 0.000001 0.000008 0 0.230318 0 0 0 0 0 0 0
// $definebone "spine3" "spine2" 24.476341 0.000002 0.000008 -0.000001 0.53196 0 0 0 0 0 0 0




$sequence "BindPose" "bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
