// Created by Crowbar 0.24.0.0

$modelname "heroes/huskar/huskar_helmet.mdl"

$bodygroup "default"
{
	studio "huskar_helmet_reference.smd"
}

$lod 1
{
	replacemodel "huskar_helmet_reference.smd" "huskar_helmet_huskar_head_lod1.smd"
}

$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "Root_0" "" 0 97.968262 -24.738676 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" -0.314964 0 10.727539 0.000001 -1.498792 -0.000001 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 10.902779 0 -0.000004 0 0.244649 0 0 0 0 0 0 0
// $definebone "Spine_2" "Spine_1" 10.825592 0 -0.000004 0 0.306332 0 0 0 0 0 0 0
// $definebone "Head_0" "Spine_2" 27.900421 -0.000001 0.000023 0 0.766565 0 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 19.390995 0.000002 -0.000015 0 0.181246 0 0 0 0 0 0 0
// $definebone "hair_R0C0" "Head_1" -8.495255 0 8.939697 1.570796 -0.40362 3.141593 0 0 0 0 0 0
// $definebone "hair_R1C0" "hair_R0C0" 18.187401 0.000015 0 0 0 -0.385592 0 0 0 0 0 0
// $definebone "hair_R2C0" "hair_R1C0" 23.624954 -0.768478 -0.000002 0 0 -0.197017 0 0 0 0 0 0
// $definebone "hair_R3C0" "hair_R2C0" 18.897312 1.640961 0.000004 0 0 -0.200742 0 0 0 0 0 0
// $definebone "hair_R4C0" "hair_R3C0" 21.497467 0.161865 0.000002 0 0 -0.072454 0 0 0 0 0 0
// $definebone "hair_R5C0" "hair_R4C0" 24.889984 -3.212326 0.000001 0 0 0 0 0 0 0 0 0




$sequence "BindPose" "huskar_helmet_anims\BindPose.smd" {
	fps 30
}

$bonemerge "Root_0"
$bonemerge "Spine_0"
$bonemerge "Spine_1"
$bonemerge "Spine_2"
$bonemerge "Head_0"
$bonemerge "Head_1"


$keyvalues
{
}
