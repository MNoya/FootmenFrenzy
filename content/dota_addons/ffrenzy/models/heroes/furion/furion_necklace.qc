// Created by Crowbar 0.24.0.0

$modelname "heroes/furion/furion_necklace.mdl"

$bodygroup "default"
{
	studio "furion_necklace_reference.smd"
}

$lod 1
{
	replacemodel "furion_necklace_reference.smd" "furion_necklace_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 90.287514 -9.440562 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "clavicle_L" "Root_0" -7.826669 5.252784 59.729759 0.001606 0.14887 1.27126 0 0 0 0 0 0
// $definebone "clavicle_R" "Root_0" -7.826669 -5.252784 59.729744 -3.139986 -0.148871 1.870332 0 0 0 0 0 0
// $definebone "plateCenter0_0" "Root_0" -23.004383 0.797943 71.584251 3.138024 -0.00097 -3.064556 0 0 0 0 0 0
// $definebone "rChestPlate5_0" "clavicle_L" 18.797411 -16.712555 7.761734 -0.021664 -0.141717 0.302905 0 0 0 0 0 0
// $definebone "plate3_0" "clavicle_L" 6.625168 10.962732 15.598999 -0.027284 -0.141335 0.380799 0 0 0 0 0 0
// $definebone "plate4_0" "clavicle_L" 16.271372 -0.525372 16.963806 -0.027284 -0.141335 0.380799 0 0 0 0 0 0
// $definebone "plate1_0" "clavicle_R" -18.690678 3.366168 -17.207184 -1.11883 0.14125 -2.91658 0 0 0 0 0 0
// $definebone "plate2_0" "clavicle_R" -8.844273 -10.974594 -15.292053 -2.207168 0.495444 -2.887789 0 0 0 0 0 0
// $definebone "lChestPlate6_0" "clavicle_R" -21.500416 18.92881 -3.169968 -0.870605 0.141717 -2.838687 0 0 0 0 0 0




$sequence "BindPose" "furion_necklace_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
