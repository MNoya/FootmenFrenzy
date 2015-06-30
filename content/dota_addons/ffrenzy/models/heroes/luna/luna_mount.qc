// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna_mount.mdl"

$bodygroup "default"
{
	studio "luna_mount_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "spine2_1" "root" 26.292576 -0.000001 1.080803 0 -0.700945 0 0 0 0 0 0 0
// $definebone "spine1_1" "root" -38.856964 0.000002 0 3.141592 0 3.141593 0 0 0 0 0 0
// $definebone "SaddleArmor4_0" "root" -29.924099 0.000002 21.733055 -3.141593 0.223176 3.141593 0 0 0 0 0 0
// $definebone "Saddle3_0" "root" -0.000001 0 37.411049 0 -1.570796 0 0 0 0 0 0 0
// $definebone "clavicle_A_L" "spine2_1" -6.930199 3.067774 -19.293859 1.570796 -0.725285 1.596529 0 0 0 0 0 0
// $definebone "clavicle_A_R" "spine2_1" -6.930199 -3.067774 -19.293858 -1.570796 0.725285 1.545064 0 0 0 0 0 0
// $definebone "neck1" "spine2_1" 26.750656 -0.000002 -0.000023 0 0.068139 0 0 0 0 0 0 0
// $definebone "bicep_A_L" "clavicle_A_L" 28.677979 0 -0.000008 -2.781273 0.809277 -2.158123 0 0 0 0 0 0
// $definebone "elbow_A_L" "bicep_A_L" 38.921467 0 -0.000002 0 0.498304 0 0 0 0 0 0 0
// $definebone "wrist_A_L" "elbow_A_L" 49.631283 0 0.000011 1.11798 1.182924 -0.488196 0 0 0 0 0 0
// $definebone "bicep_A_R" "clavicle_A_R" -28.677982 -0.00001 0.000008 -2.819325 0.747129 -2.255526 0 0 0 0 0 0
// $definebone "elbow_A_R" "bicep_A_R" -38.921448 0.000011 -0.000004 0 0.300946 0 0 0 0 0 0 0
// $definebone "wrist_A_R" "elbow_A_R" -49.631287 -0.000004 0.000008 0.546261 1.161065 -1.029917 0 0 0 0 0 0
// $definebone "neck2" "neck1" 15.573341 0.000003 0 0 0.010267 0 0 0 0 0 0 0
// $definebone "Mane0_JNT" "neck2" -12.460922 0.015491 -31.354904 1.570173 0.653263 3.141254 0 0 0 0 0 0
// $definebone "head" "neck2" 19.569962 -0.000002 -0.000004 3.141592 -1.022308 -3.141592 0 0 0 0 0 0
// $definebone "Mane1_JNT" "Mane0_JNT" 5.000008 -0.000004 0 0 0 0 0 0 0 0 0 0
// $definebone "Ear0_0_L" "head" 4.894051 18.515196 -7.840698 0.420469 0.435612 0.814351 0 0 0 0 0 0
// $definebone "LfFrontMane0_JNT" "head" -17.095104 12.689673 24.373154 -1.185073 -0.85309 2.460741 0 0 0 0 0 0
// $definebone "FrontMane0_JNT" "head" -19.764862 0.014956 22.844604 -1.33256 -1.035774 3.140783 0 0 0 0 0 0
// $definebone "Ear1_0_R" "head" 4.894045 -18.515194 -7.840698 0.420469 -0.435612 2.327242 0 0 0 0 0 0
// $definebone "RtFrontMane0_JNT" "head" -17.106285 -12.662662 24.379028 -1.956052 -0.853312 -2.461933 0 0 0 0 0 0
// $definebone "LfFrontMane1_JNT" "LfFrontMane0_JNT" 3.214592 -0.000008 0.000023 0.000001 0 -0.000001 0 0 0 0 0 0
// $definebone "FrontMane1_JNT" "FrontMane0_JNT" 9.05275 -0.000015 0.000008 -0.001284 0.001799 0.007425 0 0 0 0 0 0
// $definebone "RtFrontMane1_JNT" "RtFrontMane0_JNT" 3.214127 -0.000008 0 -0.000024 0.000072 -0.000034 0 0 0 0 0 0
// $definebone "spine1_2" "spine1_1" 28.699268 0.000004 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "thigh_R1" "spine1_2" 2.241943 -15.89467 13.245522 1.540395 1.50199 1.811869 0 0 0 0 0 0
// $definebone "thigh_L1" "spine1_2" 2.24194 15.89465 13.24556 -1.92327 -1.264059 1.817006 0 0 0 0 0 0
// $definebone "Tail1_0" "spine1_2" 20.96801 -0.000004 4.002991 0.000002 -0.874684 -0.000002 0 0 0 0 0 0
// $definebone "knee_R1" "thigh_R1" -27.748421 -0.000004 -0.000011 0 0.661244 0 0 0 0 0 0 0
// $definebone "ankle_R1" "knee_R1" -33.222736 -0.000008 0 0.492648 -1.065119 -0.543989 0 0 0 0 0 0
// $definebone "toeBall_R" "ankle_R1" -30.240299 0 0.000004 0.272376 -1.106554 -0.184475 0 0 0 0 0 0
// $definebone "knee_L1" "thigh_L1" 27.748413 0 -0.000008 0 0.733502 0 0 0 0 0 0 0
// $definebone "ankle_L1" "knee_L1" 33.222694 -0.000008 0.000015 0.516078 -1.100824 -0.569138 0 0 0 0 0 0
// $definebone "toeBall_L" "ankle_L1" 30.240271 0.000004 -0.000008 0.097953 -1.082551 -0.144622 0 0 0 0 0 0
// $definebone "Tail1_1" "Tail1_0" 28.032852 0 0.000008 0 0.298953 0 0 0 0 0 0 0
// $definebone "Tail1_2" "Tail1_1" 25.958191 0 0.000008 0 0.610608 0 0 0 0 0 0 0
// $definebone "Tail1_3" "Tail1_2" 22.753311 -0.000001 -0.000015 0 0.114015 0 0 0 0 0 0 0




$sequence "BindPose" "luna_mount_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
