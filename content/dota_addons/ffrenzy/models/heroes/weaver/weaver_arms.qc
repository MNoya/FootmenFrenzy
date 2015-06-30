// Created by Crowbar 0.24.0.0

$modelname "heroes/weaver/weaver_arms.mdl"

$bodygroup "default"
{
	studio "weaver_arms_reference.smd"
}

$lod 1
{
	replacemodel "weaver_arms_reference.smd" "weaver_arms_model_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" -0.130668 23.278011 -23.448708 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_2" "Root_0" 47.460228 0.104463 41.083832 0 -0.550739 0 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_2" 10.41655 -13.89881 -2.340988 -1.570796 0.130459 1.613581 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_2" 22.793274 0.000001 0 0 0.874058 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_2" 10.416542 13.951219 -2.340984 1.570797 -0.130459 1.528012 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -8.591711 -0.000015 -0.000015 -2.205183 0.181457 -0.295119 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -30.056736 0 -0.000003 3.141586 1.552671 -3.141584 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -36.313721 0.000008 0.000004 0.218789 0.017218 -0.400396 0 0 0 0 0 0
// $definebone "Thumb_0_R" "wrist_R" -8.901558 -3.726219 -8.064232 0 0 0 0 0 0 0 0 0
// $definebone "Mid_0_R" "wrist_R" -12.332489 -2.375946 3.978088 0.31024 0.384104 -0.180631 0 0 0 0 0 0
// $definebone "Ring_0_R" "wrist_R" -7.790146 -6.096256 7.462742 0 0 0 0 0 0 0 0 0
// $definebone "Index_0_R" "wrist_R" -12.789169 -1.195469 -2.725845 -0.019883 -0.18371 -0.213633 0 0 0 0 0 0
// $definebone "Mid_1_R" "Mid_0_R" -9.05117 0.000009 0 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_R" "Index_0_R" -7.010445 0.000008 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 8.591705 0 0.000011 -2.205183 0.181457 -0.295119 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 30.056755 0.000008 -0.000001 -3.141578 1.552671 -3.141573 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 36.313721 -0.000008 0 0.218789 0.017218 -0.400396 0 0 0 0 0 0
// $definebone "Index_0_L" "wrist_L" 12.32885 2.415775 -4.02478 0.341984 0.367734 -0.18733 0 0 0 0 0 0
// $definebone "Mid_0_L" "wrist_L" 12.774246 1.263283 2.522182 0.098081 -0.18221 -0.221719 0 0 0 0 0 0
// $definebone "Thumb_0_L" "wrist_L" 7.805214 6.035076 -7.226784 0 0 0 0 0 0 0 0 0
// $definebone "Ring_0_L" "wrist_L" 8.982681 3.751583 7.972355 0 0 0 0 0 0 0 0 0
// $definebone "Index_1_L" "Index_0_L" 9.049507 0.000008 0.000015 0 0 0 0 0 0 0 0 0
// $definebone "Mid_1_L" "Mid_0_L" 7.030983 0.000002 0 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "weaver_arms_anims\BindPose.smd" {
	fps 30
}


$keyvalues
{
}
