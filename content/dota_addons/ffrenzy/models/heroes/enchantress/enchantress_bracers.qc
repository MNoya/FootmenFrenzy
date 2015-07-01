// Created by Crowbar 0.24.0.0

$modelname "heroes/enchantress/enchantress_bracers.mdl"

$bodygroup "default"
{
	studio "enchantress_bracers_reference.smd"
}

$lod 1
{
	replacemodel "enchantress_bracers_reference.smd" "enchantress_bracers_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 97.879501 -9.819654 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "elbow_R" "root" 22.004166 -33.908325 37.098465 1.000664 -0.917813 2.227983 0 0 0 0 0 0
// $definebone "bicep_L" "root" 24.385651 15.724109 67.730148 -1.477796 1.031326 1.70102 0 0 0 0 0 0
// $definebone "ankle_R" "root" 28.15274 -13.174002 -54.356819 0 -1.32544 3.141592 0 0 0 0 0 0




$sequence "BindPose" "enchantress_bracers_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
