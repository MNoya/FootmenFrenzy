// Created by Crowbar 0.24.0.0

$modelname "heroes/silencer/silender_bracers.mdl"

$bodygroup "default"
{
	studio "silender_bracers_reference.smd"
}

$lod 1
{
	replacemodel "silender_bracers_reference.smd" "silender_bracers_model_lod1.smd"
}

$cdmaterials ""

$attachment "ArbitraryParityChain_plc0_L" "ClothTop0_0_L" 180 0 0 rotate 0 0 0
$attachment "ArbitraryParityChain_plc1_R" "ClothTop1_0_R" -180 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 120.152336 -0.848275 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "ClothTop1_0_R" "Root_0" -1.515688 -11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0
// $definebone "bicep_L" "Root_0" -2.345004 18.289499 37.532524 -1.836662 0.76005 1.366664 0 0 0 0 0 0
// $definebone "ClothTop0_0_L" "Root_0" -1.515688 11.425 51.786263 -1.512289 0 1.570796 0 0 0 0 0 0
// $definebone "bicep_R" "Root_0" -2.345003 -18.289505 37.532539 1.30493 -0.76005 1.77493 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 38.447212 0.000008 -0.000006 0 0.623952 0 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 30.040751 0.000008 0.000004 -0.656856 0.790551 0.17508 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 4.210754 1.918201 -6.324921 -3.03669 0.49248 0.394969 0 0 0 0 0 0
// $definebone "mid_1_L" "wrist_L" 16.732523 2.481815 1.675163 1.4962 0.06015 0.659795 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -38.447208 0 -0.000004 0 0.623952 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -30.040735 -0.000008 0.000004 -0.656857 0.790551 0.17508 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -4.210764 -1.91824 6.324921 -3.036689 0.49248 0.39497 0 0 0 0 0 0
// $definebone "mid_1_R" "wrist_R" -16.732563 -2.481842 -1.675194 1.496201 0.060149 0.659795 0 0 0 0 0 0




$sequence "BindPose" "silender_bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
