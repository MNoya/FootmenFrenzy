// Created by Crowbar 0.24.0.0

$modelname "items/windrunner/verdantcoif/verdantcoif.mdl"

$bodygroup "default"
{
	studio "verdantcoif_reference.smd"
}


$cdmaterials ""

$surfaceprop "default"

$contents "solid"


// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 92.06237 1.183845 0 -1.570796 -1.570796 0 0 0 0 0 0
// $definebone "spine2" "root" 1.46849 -0.000005 13.805969 -3.141593 -1.439985 -3.141593 0 0 0 0 0 0
// $definebone "spine3" "spine2" 12.333145 -0.000005 -1.000854 0 -0.594358 0 0 0 0 0 0 0
// $definebone "neck1" "spine3" 9.989563 -0.000003 0.000008 0 0.992816 0 0 0 0 0 0 0
// $definebone "head" "neck1" 12.274513 -0.000004 0.000011 0.000001 1.303152 0.000001 0 0 0 0 0 0




$sequence "ref" "verdantcoif_anims\ref.smd" {
	fps 30
}

