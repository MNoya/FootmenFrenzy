// Created by Crowbar 0.24.0.0

$modelname "heroes/pugna/pugna_bracers.mdl"

$bodygroup "default"
{
	studio "pugna_bracers_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 75.149734 -4.691357 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "Root_0" -1.802271 -41.897144 12.764008 0.835767 -0.81744 2.455984 0 0 0 0 0 0
// $definebone "elbow_L" "Root_0" -1.802269 41.897163 12.764 -2.305826 0.81744 0.685608 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -31.857983 -0.000008 -0.000013 -0.302242 -0.476596 0.607857 0 0 0 0 0 0
// $definebone "mid_0_R" "wrist_R" -14.120125 -0.735764 0.486693 1.535527 0.061975 0.251804 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -0.995331 -2.878613 3.776047 -3.074131 0.590229 0.353503 0 0 0 0 0 0
// $definebone "index_0_R" "wrist_R" -13.369152 -0.191792 5.625249 1.587681 0.118825 0.313531 0 0 0 0 0 0
// $definebone "thumb_1_R" "thumb_0_R" -8.721195 -0.000002 -0.000008 0.000001 0.084565 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 31.857964 0.000015 -0.000006 -0.302242 -0.476596 0.607857 0 0 0 0 0 0
// $definebone "ring_0_L" "wrist_L" 14.03524 1.141762 4.386337 1.164085 -0.043857 0.474636 0 0 0 0 0 0
// $definebone "index_0_L" "wrist_L" 13.369137 0.191799 -5.62525 1.587682 0.118825 0.313531 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 0.995308 2.87862 -3.776047 -3.074131 0.590229 0.353503 0 0 0 0 0 0
// $definebone "thumb_1_L" "thumb_0_L" 8.721199 0.000002 0.000004 0 0.084564 0 0 0 0 0 0 0




$sequence "BindPose" "pugna_bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
