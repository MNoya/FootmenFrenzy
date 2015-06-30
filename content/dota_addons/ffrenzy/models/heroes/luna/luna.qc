// Created by Crowbar 0.24.0.0

$modelname "heroes/luna/luna.mdl"

$bodygroup "default"
{
	studio "luna_reference.smd"
}


$poseparameter "turn" -1 1 0

$cdmaterials ""

$attachment "attach_weapon" "Sword_2" 0 0 0 rotate 0 0 0
$attachment "attach_attack1" "Sword_2" 0 0 0 rotate 0 0 0
$attachment "attach_shield" "Shield_1" 0 0 0 rotate 0 0 0
$attachment "attach_hitloc" "Spine_0" 0 0 0 rotate 0 0 0

$surfaceprop "default"

$contents "solid"

// $hboxset "default"
// $hbox 0 "elbow_A_R" -43.890522 -13.421564 -19.160686 6.559764 16.505245 17.399605
// $hbox 0 "bicep_A_R" -33.972797 -9.404191 -14.940871 -0.235051 16.299107 16.711391
// $hbox 0 "elbow_A_L" -6.559764 -16.505245 -17.399605 43.890522 13.421564 19.160686
// $hbox 0 "bicep_A_L" 0.235051 -16.299107 -16.711391 33.972797 9.404191 14.940871
// $hbox 0 "Ear0_1_L" 2.480652 2.840127 1.876064 6.881042 17.88788 15.499599
// $hbox 0 "Ear0_0_L" -11.700176 -5.664019 -12.285979 12.945492 9.288155 6.8214
// $hbox 0 "Jaw2_0" 2.5942 -20.841972 -10.998595 28.935173 20.841972 19.500366
// $hbox 0 "Ear1_1_R" -6.881042 2.840127 1.876064 -2.480652 17.88788 15.499599
// $hbox 0 "Ear1_0_R" -12.945492 -5.664019 -12.285979 11.700176 9.288155 6.8214
// $hbox 0 "spine2_1" -37.328381 -35.74469 -31.095232 48.263439 35.744686 42.824749
// $hbox 0 "knee_R" -33.97501 -9.369364 -6.255269 -1.794992 5.874345 10.429899
// $hbox 0 "thigh_R" -39.857368 -9.682779 -14.371195 12.053007 8.591352 12.523523
// $hbox 0 "knee_L" 1.795009 -5.874331 -10.429895 33.975006 9.369378 6.255267
// $hbox 0 "thigh_L" -6.753612 -8.561891 -10.853958 39.857349 9.688015 14.371197
// $hbox 0 "elbow_R" -31.439856 -6.298829 -5.742241 -3.147766 6.17783 3.957618
// $hbox 0 "bicep_R" -24.009979 -5.141969 -9.256785 3.982865 9.299491 8.341154
// $hbox 0 "elbow_L" 3.357149 -6.261991 -3.768489 31.43984 6.298839 5.742056
// $hbox 0 "bicep_L" -3.982866 -6.590969 -8.341162 23.990969 5.681622 9.256785
// $hbox 0 "Spine_3" -1.665628 -13.948619 -6.338788 15.27483 12.276548 13.436741
// $hbox 0 "Spine_1" -8.622521 -14.847021 -16.490444 10.985656 14.450111 10.677141
// $hbox 0 "Spine_0" -0.626424 -10.281216 -10.931717 8.833572 10.28121 5.777818
// $hbox 0 "Root_0" -9.198165 -9.787552 -14.829428 16.406101 14.126233 11.492136
// $hbox 0 "Saddle3_0" -16.385109 -37.311256 -29.557898 32.897583 37.31123 35.844604
// $hbox 0 "knee_L1" -4.308057 -8.449597 -15.133556 35.143379 8.256386 10.629571
// $hbox 0 "thigh_L1" -15.477097 -14.881974 -23.352482 28.321245 11.143378 20.401525
// $hbox 0 "knee_R1" -35.143379 -8.256386 -10.629571 4.308057 8.449597 15.133555
// $hbox 0 "thigh_R1" -28.321243 -11.143378 -20.401525 15.477097 14.881974 23.352482
// $hbox 0 "Tail1_3" -0.450767 -9.093257 -16.422119 24.201645 9.093257 4.699405
// $hbox 0 "Tail1_1" 2.526922 -4.960807 -5.465107 36.389343 4.960807 6.871536
// $hbox 0 "Tail1_0" -2.755446 -5.353724 -8.848924 20.32707 5.353724 8.881635
// $hbox 0 "spine1_2" -8.837936 -15.909674 -20.56357 21.978214 15.909674 21.308477
// $hbox 0 "spine1_1" -0.163674 -18.477711 -25.209024 18.654417 18.477711 24.713163
// $hbox 0 "SaddleArmor4_1" -6.749941 -21.584408 -1.925191 0.232834 21.584408 28.486931
// $hbox 0 "SaddleArmor4_0" -10.811543 -22.506933 -13.300665 33.876698 22.506931 10.901757
// $hbox 0 "root" -53.752384 -37.556606 -37.805054 31.552824 37.332485 60.174599
// $hboxset "hands"
// $hbox 0 "wrist_A_R" -35.139023 -3.483233 -16.893955 8.837008 11.663291 12.892693
// $hbox 0 "wrist_A_L" -8.837011 -11.663291 -12.892694 35.139023 3.483233 16.893959
// $hbox 0 "wrist_R" -19.952036 -2.135111 -5.750056 2.0137 4.50399 9.111609
// $hbox 0 "wrist_L" -2.013696 -4.503994 -9.111624 19.952024 2.135103 5.750056
// $hboxset "head"
// $hbox 0 "head" -45.534283 -41.654381 -24.989098 40.386997 41.654381 58.153816
// $hbox 0 "Head_1" -35.06036 -12.616467 -25.543253 12.526118 10.361689 19.714376
// $hboxset "feet"
// $hbox 0 "ankle_R" -20.127518 -7.298032 -3.900706 7.068745 6.086387 6.027495
// $hbox 0 "ankle_L" -7.068762 -6.086377 -6.027501 20.127522 7.298031 3.90082
// $hbox 0 "ankle_L1" -9.190408 -10.478367 -14.441465 41.940731 13.238969 22.764853
// $hbox 0 "ankle_R1" -41.940731 -13.238969 -22.764853 9.190408 10.478366 14.441464
// $hboxset "select_low"
// $hbox 0 "root" -130.425323 -104.139015 -102.064735 118.169075 107.295357 108.591667
// $hboxset "select_high"
// $hbox 0 "root" -78.675102 -37.448605 -97.848015 81.63224 45.184086 58.276932
// $skipboneinbbox

// NOTE: The following commented-out $definebone lines might be needed, as is often the case for view models. When needed, simply remove the two slashes '//' from the start of each line.
// $definebone "root" "" 0 94.381004 14.043032 -1.177449 -1.492199 -0.437777 0 0 0 0 0 0
// $definebone "spine2_1" "root" 26.292576 -0.000001 1.080803 0 -0.700945 0 0 0 0 0 0 0
// $definebone "Saddle3_0" "root" -0.000001 0.000001 37.411034 0 -1.570796 0 0 0 0 0 0 0
// $definebone "spine1_1" "root" -38.856964 0.000002 0 3.141592 0 3.141593 0 0 0 0 0 0
// $definebone "SaddleArmor4_0" "root" -29.924099 0.000002 21.733055 -3.141593 0.223176 3.141593 0 0 0 0 0 0
// $definebone "clavicle_A_R" "spine2_1" -6.930199 -3.067774 -19.293858 -1.570796 0.725285 1.545064 0 0 0 0 0 0
// $definebone "clavicle_A_L" "spine2_1" -6.930199 3.067774 -19.293859 1.570796 -0.725285 1.596529 0 0 0 0 0 0
// $definebone "neck1" "spine2_1" 26.750671 0 -0.000008 0 0.068139 0 0 0 0 0 0 0
// $definebone "bicep_A_R" "clavicle_A_R" -28.677982 -0.00001 0.000008 -2.819325 0.747128 -2.255526 0 0 0 0 0 0
// $definebone "elbow_A_R" "bicep_A_R" -38.921455 0.000008 -0.000006 0 0.300946 0 0 0 0 0 0 0
// $definebone "wrist_A_R" "elbow_A_R" -49.63129 -0.000008 0 0.546262 1.161065 -1.029918 0 0 0 0 0 0
// $definebone "bicep_A_L" "clavicle_A_L" 28.677979 0 -0.000008 -2.781273 0.809277 -2.158123 0 0 0 0 0 0
// $definebone "elbow_A_L" "bicep_A_L" 38.921467 0 -0.000002 0 0.498304 0 0 0 0 0 0 0
// $definebone "wrist_A_L" "elbow_A_L" 49.631283 0 0.000011 1.11798 1.182924 -0.488196 0 0 0 0 0 0
// $definebone "neck2" "neck1" 15.573341 0.000001 -0.000011 0 0.010267 0 0 0 0 0 0 0
// $definebone "head" "neck2" 19.569946 -0.000001 0 3.141592 -1.022308 3.141593 0 0 0 0 0 0
// $definebone "Mane0_JNT" "neck2" -12.46093 0.015491 -31.354904 1.570173 0.653263 3.141254 0 0 0 0 0 0
// $definebone "Ear0_0_L" "head" 4.894049 18.5152 -7.840714 0.420469 0.435612 0.814351 0 0 0 0 0 0
// $definebone "Jaw2_0" "head" -5.270485 -0.000002 13.472198 -3.141593 -1.171028 3.141593 0 0 0 0 0 0
// $definebone "Ear1_0_R" "head" 4.894039 -18.515194 -7.840714 0.420469 -0.435612 2.327242 0 0 0 0 0 0
// $definebone "RtFrontMane0_JNT" "head" -17.106285 -12.662663 24.379013 -1.956052 -0.853312 -2.461932 0 0 0 0 0 0
// $definebone "FrontMane0_JNT" "head" -19.764862 0.014957 22.844589 -1.33256 -1.035774 3.140783 0 0 0 0 0 0
// $definebone "LfFrontMane0_JNT" "head" -17.095097 12.689676 24.373138 -1.185073 -0.85309 2.46074 0 0 0 0 0 0
// $definebone "Ear0_1_L" "Ear0_0_L" 22.009773 -0.000008 0 2.148198 0.083593 0.905169 0 0 0 0 0 0
// $definebone "Ear1_1_R" "Ear1_0_R" -22.009773 -0.000013 0 2.148197 -0.083593 -0.905169 0 0 0 0 0 0
// $definebone "RtFrontMane1_JNT" "RtFrontMane0_JNT" 3.214111 -0.000015 0 -0.000024 0.000072 -0.000034 0 0 0 0 0 0
// $definebone "RtFrontMane2_JNT" "RtFrontMane1_JNT" 17.000179 0.000008 0.000008 0 0 0 0 0 0 0 0 0
// $definebone "FrontMane1_JNT" "FrontMane0_JNT" 9.052734 -0.000008 0.000002 -0.001284 0.0018 0.007425 0 0 0 0 0 0
// $definebone "FrontMane2_JNT" "FrontMane1_JNT" 27.500015 0 -0.000002 0 0 0 0 0 0 0 0 0
// $definebone "LfFrontMane1_JNT" "LfFrontMane0_JNT" 3.214569 0.000008 0.000002 0 0 0 0 0 0 0 0 0
// $definebone "LfFrontMane2_JNT" "LfFrontMane1_JNT" 16.999996 -0.000008 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "Mane1_JNT" "Mane0_JNT" 5.000008 -0.000004 0 0 0 0 0 0 0 0 0 0
// $definebone "Mane2_JNT" "Mane1_JNT" 33.665993 -0.000008 -0.000162 0 0 0 0 0 0 0 0 0
// $definebone "Root_0" "Saddle3_0" 24.296738 -0.000001 1.945482 0 1.570796 0 0 0 0 0 0 0
// $definebone "thigh_L" "Root_0" 0.669351 9.894205 -4.587769 0.820953 0.776161 1.297999 0 0 0 0 0 0
// $definebone "Spine_0" "Root_0" 8.628286 -0.000003 12.378479 3.141589 -1.47341 -3.14159 0 0 0 0 0 0
// $definebone "thigh_R" "Root_0" 0.669351 -9.894201 -4.587814 -2.111346 -0.954407 1.404937 0 0 0 0 0 0
// $definebone "knee_L" "thigh_L" 39.511757 0.000008 0.000015 0 0.631574 0 0 0 0 0 0 0
// $definebone "ankle_L" "knee_L" 42.305939 -0.000008 0.000002 -0.971096 -0.432136 -0.070566 0 0 0 0 0 0
// $definebone "toeBase_L" "ankle_L" 8.633289 0.000006 0.000008 1.584032 -0.997518 -0.015755 0 0 0 0 0 0
// $definebone "Spine_1" "Spine_0" 16.289627 0.000001 -0.000004 0 -0.181979 0 0 0 0 0 0 0
// $definebone "Spine_3" "Spine_1" 10.78392 0 0.000008 0 0.372008 0 0 0 0 0 0 0
// $definebone "Head_0" "Spine_3" 7.512848 -0.000001 -0.000006 0 -0.167145 0 0 0 0 0 0 0
// $definebone "clavicle_L" "Spine_3" -1.034958 2.284005 -4.069413 1.570796 -0.418612 1.64297 0 0 0 0 0 0
// $definebone "clavicle_R" "Spine_3" -1.034973 -2.284007 -4.06941 -1.570797 0.418612 1.498623 0 0 0 0 0 0
// $definebone "Head_1" "Head_0" 15.580246 0.000002 0.000002 -3.141593 1.496294 -3.141593 0 0 0 0 0 0
// $definebone "PonyTail0_R0C0" "Head_1" -4.803843 0.215647 8.781891 1.615477 -0.356392 -3.091015 0 0 0 0 0 0
// $definebone "PonyTail0_R1C0" "PonyTail0_R0C0" 14.794273 0.000015 0.000002 0.080046 0.360311 -1.357958 0 0 0 0 0 0
// $definebone "PonyTail0_R2C0" "PonyTail0_R1C0" 16.227875 -0.522263 -0.604881 0.191182 -0.397317 -0.562285 0 0 0 0 0 0
// $definebone "PonyTail0_R3C0" "PonyTail0_R2C0" 9.728867 0.000013 -0.00001 0.141933 -0.215499 0.154898 0 0 0 0 0 0
// $definebone "bicep_L" "clavicle_L" 13.001738 -0.00001 0.000015 -1.860051 1.01711 -0.682982 0 0 0 0 0 0
// $definebone "elbow_L" "bicep_L" 26.741806 -0.000008 0.000004 0.000016 1.538018 0.000013 0 0 0 0 0 0
// $definebone "wrist_L" "elbow_L" 22.593817 -0.000008 -0.000046 -0.416302 0.037086 0.072898 0 0 0 0 0 0
// $definebone "index_0_L" "wrist_L" 9.586151 -2.927689 -3.123199 1.631395 0.250554 -0.12423 0 0 0 0 0 0
// $definebone "mid_0_L" "wrist_L" 10.357407 -3.20462 -0.684479 1.511638 0.110127 -0.051089 0 0 0 0 0 0
// $definebone "ring_0_L" "wrist_L" 9.795685 -2.633934 1.778397 1.402647 -0.090272 -0.072032 0 0 0 0 0 0
// $definebone "pinky_0_L" "wrist_L" 9.439114 -1.709248 4.215912 1.419457 -0.235301 0.10201 0 0 0 0 0 0
// $definebone "thumb_0_L" "wrist_L" 2.719421 0.269083 -2.844971 2.568088 0.643749 0.094261 0 0 0 0 0 0
// $definebone "Shield_1" "wrist_L" -39.132641 31.347586 167.961716 -1.570797 0 -1.570796 0 0 0 0 0 0
// $definebone "index_1_L" "index_0_L" 3.333313 0 -0.000004 0 0.32697 0 0 0 0 0 0 0
// $definebone "index_2_L" "index_1_L" 2.755669 -0.000015 0 0 0 0 0 0 0 0 0 0
// $definebone "mid_1_L" "mid_0_L" 3.166885 0.000015 -0.000004 0 0 0 0 0 0 0 0 0
// $definebone "ring_1_L" "ring_0_L" 3.503147 0.000015 -0.000002 0 0 0 0 0 0 0 0 0
// $definebone "pinky_1_L" "pinky_0_L" 2.443229 0 0.000004 0 0 0 0 0 0 0 0 0
// $definebone "thumb_1_L" "thumb_0_L" 3.699356 0.000019 0 0 0.152697 0 0 0 0 0 0 0
// $definebone "thumb_2_L" "thumb_1_L" 3.017303 -0.000008 0 0 0 0 0 0 0 0 0 0
// $definebone "bicep_R" "clavicle_R" -13.001726 0.000005 0 -1.892657 0.941046 -0.471705 0 0 0 0 0 0
// $definebone "elbow_R" "bicep_R" -26.74176 0 0.000008 -0.000001 1.296195 0 0 0 0 0 0 0
// $definebone "wrist_R" "elbow_R" -22.593801 0 -0.000031 -0.56173 0.305739 0.159756 0 0 0 0 0 0
// $definebone "index_0_R" "wrist_R" -9.586163 2.927685 3.123199 1.631394 0.250554 -0.12423 0 0 0 0 0 0
// $definebone "mid_0_R" "wrist_R" -10.357418 3.204613 0.684479 1.511638 0.110127 -0.051089 0 0 0 0 0 0
// $definebone "ring_0_R" "wrist_R" -9.795692 2.633926 -1.778397 1.402647 -0.090272 -0.072032 0 0 0 0 0 0
// $definebone "pinky_0_R" "wrist_R" -9.439125 1.70924 -4.215912 1.419457 -0.235301 0.10201 0 0 0 0 0 0
// $definebone "thumb_0_R" "wrist_R" -2.71944 -0.269091 2.844986 2.568088 0.643749 0.094261 0 0 0 0 0 0
// $definebone "Sword_2" "wrist_R" 39.132572 -31.347607 -167.961685 1.570796 0 -1.570796 0 0 0 0 0 0
// $definebone "index_1_R" "index_0_R" -3.333321 -0.000015 0 0 0.32697 0 0 0 0 0 0 0
// $definebone "index_2_R" "index_1_R" -2.755676 0.000046 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "mid_1_R" "mid_0_R" -3.166885 0.000015 0.000002 0 0 0 0 0 0 0 0 0
// $definebone "ring_1_R" "ring_0_R" -3.503143 0 -0.000006 0 0 0 0 0 0 0 0 0
// $definebone "pinky_1_R" "pinky_0_R" -2.443229 0.000015 -0.000004 0 0 0 0 0 0 0 0 0
// $definebone "thumb_1_R" "thumb_0_R" -3.699417 0.000008 -0.000023 0 0.152697 -0.000001 0 0 0 0 0 0
// $definebone "thumb_2_R" "thumb_1_R" -3.017265 -0.000011 0.000031 0 0 0 0 0 0 0 0 0
// $definebone "knee_R" "thigh_R" -39.511734 -0.000015 -0.000027 0 0.197576 0 0 0 0 0 0 0
// $definebone "ankle_R" "knee_R" -42.305958 0.000008 0 -0.959281 -0.20366 -0.113855 0 0 0 0 0 0
// $definebone "toeBase_R" "ankle_R" -8.633312 0.000001 0.000023 1.584032 -0.997518 -0.015755 0 0 0 0 0 0
// $definebone "spine1_2" "spine1_1" 28.699261 0.000001 -0.000008 0 0 0 0 0 0 0 0 0
// $definebone "thigh_L1" "spine1_2" 2.241932 15.894644 13.24556 -1.923271 -1.264059 1.817007 0 0 0 0 0 0
// $definebone "thigh_R1" "spine1_2" 2.24194 -15.89467 13.245529 1.540395 1.50199 1.811869 0 0 0 0 0 0
// $definebone "Tail1_0" "spine1_2" 20.96801 -0.000003 4.002991 0.000001 -0.874685 -0.000001 0 0 0 0 0 0
// $definebone "knee_L1" "thigh_L1" 27.748428 -0.000004 0 0 0.733502 0 0 0 0 0 0 0
// $definebone "ankle_L1" "knee_L1" 33.222706 -0.000004 0 0.516078 -1.100824 -0.569137 0 0 0 0 0 0
// $definebone "toeBall_L" "ankle_L1" 30.240274 0.000004 -0.000015 0.097953 -1.08255 -0.144621 0 0 0 0 0 0
// $definebone "knee_R1" "thigh_R1" -27.748421 -0.000004 -0.000008 0 0.661244 0 0 0 0 0 0 0
// $definebone "ankle_R1" "knee_R1" -33.222725 -0.000004 0 0.492647 -1.065119 -0.543988 0 0 0 0 0 0
// $definebone "toeBall_R" "ankle_R1" -30.240276 -0.000002 -0.000015 0.272376 -1.106555 -0.184474 0 0 0 0 0 0
// $definebone "Tail1_1" "Tail1_0" 28.032856 0 0 0 0.298953 0 0 0 0 0 0 0
// $definebone "Tail1_2" "Tail1_1" 25.958183 0 0 0 0.610608 0 0 0 0 0 0 0
// $definebone "Tail1_3" "Tail1_2" 22.753288 -0.000001 -0.000023 0 0.114015 0 0 0 0 0 0 0
// $definebone "SaddleArmor4_1" "SaddleArmor4_0" 17.270393 0 -0.000008 -3.141593 1.247951 -3.141593 0 0 0 0 0 0

$sectionframes 30 119




$sequence "BindPose" "luna_anims\BindPose.smd" {
	fps 30
}

$sequence "luna_idle" "luna_anims\luna_idle.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "luna_run" "luna_anims\luna_run.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "luna_turns_dupe1"
	{ event AE_CL_PLAYSOUND 3 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 6 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 12 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 15 "Hero_Luna.Footsteps" }
}

$sequence "luna_attack" "luna_anims\luna_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "luna_death" "luna_anims\luna_death.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 25 "Hero_Luna.Death" }
	{ event AE_CL_PLAYSOUND 81 "BodyImpact_Common.Heavy" }
	{ event AE_CL_PLAYSOUND 95 "BodyImpact_Common.Light" }
}

$sequence "luna_flail" "luna_anims\luna_flail.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
	loop
}

$sequence "luna_stun" "luna_anims\luna_stun.smd" {
	fps 30
	activity "ACT_DOTA_DISABLED" 1
	loop
}

$sequence "luna_capture" "luna_anims\luna_capture.smd" {
	fps 30
	activity "ACT_DOTA_CAPTURE" 1
	loop
}

$sequence "luna_cast" "luna_anims\luna_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "moonfall_cast1_lucent_beam" "luna_anims\moonfall_cast1_lucent_beam.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "luna_run_haste" "luna_anims\luna_run_haste.smd" {
	fps 30
	loop
	addlayer "luna_turns_dupe2"
	{ event AE_CL_PLAYSOUND 3 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 6 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_Luna.Footsteps" }
}

$sequence "luna_eclipse" "luna_anims\luna_eclipse.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "luna_attack_alta" "luna_anims\luna_attack_alta.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "luna_attackb" "luna_anims\luna_attackb.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "workshop_anim_00" "luna_anims\workshop_anim_00.smd" {
	fps 30
}

$sequence "workshop_anim_01" "luna_anims\workshop_anim_01.smd" {
	fps 30
}

$sequence "workshop_anim_02" "luna_anims\workshop_anim_02.smd" {
	fps 30
}

$sequence "workshop_anim_03" "luna_anims\workshop_anim_03.smd" {
	fps 30
}

$sequence "workshop_anim_04" "luna_anims\workshop_anim_04.smd" {
	fps 30
}

$sequence "workshop_anim_05" "luna_anims\workshop_anim_05.smd" {
	fps 30
}

$sequence "workshop_anim_06" "luna_anims\workshop_anim_06.smd" {
	fps 30
}

$sequence "workshop_anim_07" "luna_anims\workshop_anim_07.smd" {
	fps 30
}

$sequence "workshop_anim_08" "luna_anims\workshop_anim_08.smd" {
	fps 30
}

$sequence "workshop_anim_09" "luna_anims\workshop_anim_09.smd" {
	fps 30
}

$sequence "luna_idle_alt" "luna_anims\luna_idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "luna_spawn" "luna_anims\luna_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "luna_run_injured" "luna_anims\luna_run_injured.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "luna_turns_dupe3"
	{ event AE_CL_PLAYSOUND 3 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 23 "Hero_Luna.Footsteps" }
}

$sequence "luna_idle_injured" "luna_anims\luna_idle_injured.smd" {
	fps 30
	activity "ACT_DOTA_IDLE" 1
	loop
}

$sequence "luna_victory" "luna_anims\luna_victory.smd" {
	fps 30
	activity "ACT_DOTA_VICTORY" 1
	loop
}

$sequence "luna_defeat" "luna_anims\luna_defeat.smd" {
	fps 30
	activity "ACT_DOTA_DEFEAT" 1
	loop
}

$sequence "luna_death_alt" "luna_anims\luna_death_alt.smd" {
	fps 30
	activity "ACT_DOTA_DIE" 1
	{ event AE_CL_PLAYSOUND 25 "Hero_Luna.Death" }
	{ event AE_CL_PLAYSOUND 72 "BodyImpact_Common.Heavy" }
	{ event AE_CL_PLAYSOUND 84 "BodyImpact_Common.Light" }
}

$sequence "teleport_in" "luna_anims\teleport_in.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
}

$sequence "teleport_end" "luna_anims\teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
}

$sequence "luna_run_alt" "luna_anims\luna_run_alt.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "luna_turns_dupe4"
	{ event AE_CL_PLAYSOUND 4 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 7 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 13 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 33 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 36 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 42 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 62 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 65 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 72 "Hero_Luna.Footsteps" }
}

$sequence "luna_force_staff_start" "luna_anims\luna_force_staff_start.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "luna_force_staff_end" "luna_anims\luna_force_staff_end.smd" {
	fps 30
	activity "ACT_DOTA_FORCESTAFF_END" 1
}

$sequence "luna_forcestaff_enemy" "luna_anims\luna_forcestaff_enemy.smd" {
	fps 30
	activity "ACT_DOTA_FLAIL" 1
}

$sequence "lucentyr_attackb" "luna_anims\lucentyr_attackb.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "lucentyr_cast_eclipse" "luna_anims\lucentyr_cast_eclipse.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_4" 1
}

$sequence "lucentyr_cast" "luna_anims\lucentyr_cast.smd" {
	fps 30
	activity "ACT_DOTA_CAST_ABILITY_1" 1
}

$sequence "lucentyr_spawn" "luna_anims\lucentyr_spawn.smd" {
	fps 30
	activity "ACT_DOTA_SPAWN" 1
}

$sequence "lucentyr_teleport_end" "luna_anims\lucentyr_teleport_end.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT_END" 1
}

$sequence "lucentyr_teleport_in" "luna_anims\lucentyr_teleport_in.smd" {
	fps 30
	activity "ACT_DOTA_TELEPORT" 1
}

$sequence "lucentyr_attack" "luna_anims\lucentyr_attack.smd" {
	fps 30
	activity "ACT_DOTA_ATTACK" 1
}

$sequence "lucentyr_victory" "luna_anims\lucentyr_victory.smd" {
	fps 30
	activity "ACT_DOTA_VICTORY" 1
	loop
}

$sequence "lucentyr_run_haste" "luna_anims\lucentyr_run_haste.smd" {
	fps 30
	activity "ACT_DOTA_RUN" 1
	loop
	addlayer "lucentyr_run_haste_turns_dupe1"
	{ event AE_CL_PLAYSOUND 3 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 6 "Hero_Luna.Footsteps" }
	{ event AE_CL_PLAYSOUND 14 "Hero_Luna.Footsteps" }
}

$sequence "lucentyr_run_haste_turns" "luna_anims\lucentyr_run_haste_turns.smd" {
	fps 30
	hidden
}

$sequence "lucentyr_idle_alt" "luna_anims\lucentyr_idle_alt.smd" {
	fps 30
	activity "ACT_DOTA_IDLE_RARE" 1
}

$sequence "luna_turns" "luna_anims\luna_turns.smd" {
	fps 30
	hidden
}

$sequence "taunt_selemene_leap" "luna_anims\taunt_selemene_leap.smd" {
	fps 30
	activity "ACT_DOTA_TAUNT" 1
	{ event AE_CL_SPEECH 23 "TLK_DOTA_TAUNT|taunt_type=cat_dancer_gesture" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 44 "DUST_IMPACT start_at_origin" }
	{ event AE_CL_CREATE_PARTICLE_EFFECT 5 "DUST_IMPACT start_at_origin" }
	{ event AE_CL_PLAYSOUND 43 "Hero_Luna.Taunt.Land" }
	{ event AE_CL_PLAYSOUND 1 "Hero_Luna.Taunt.Leap" }
}

$sequence "luna_turns_dupe1_lookFrame_0" "luna_anims\luna_turns_dupe1_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe1_lookFrame_1" "luna_anims\luna_turns_dupe1_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe1_lookFrame_2" "luna_anims\luna_turns_dupe1_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe2_lookFrame_0" "luna_anims\luna_turns_dupe2_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe2_lookFrame_1" "luna_anims\luna_turns_dupe2_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe2_lookFrame_2" "luna_anims\luna_turns_dupe2_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe3_lookFrame_0" "luna_anims\luna_turns_dupe3_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe3_lookFrame_1" "luna_anims\luna_turns_dupe3_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe3_lookFrame_2" "luna_anims\luna_turns_dupe3_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe4_lookFrame_0" "luna_anims\luna_turns_dupe4_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe4_lookFrame_1" "luna_anims\luna_turns_dupe4_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe4_lookFrame_2" "luna_anims\luna_turns_dupe4_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "lucentyr_run_haste_turns_dupe1_lookFrame_0" "luna_anims\lucentyr_run_haste_turns_dupe1_lookFrame_0.smd" {
	fps 30
	delta
	hidden
}

$sequence "lucentyr_run_haste_turns_dupe1_lookFrame_1" "luna_anims\lucentyr_run_haste_turns_dupe1_lookFrame_1.smd" {
	fps 30
	delta
	hidden
}

$sequence "lucentyr_run_haste_turns_dupe1_lookFrame_2" "luna_anims\lucentyr_run_haste_turns_dupe1_lookFrame_2.smd" {
	fps 30
	delta
	hidden
}

$sequence "luna_turns_dupe1" {
	"@luna_turns_dupe1_lookFrame_0"
	"@luna_turns_dupe1_lookFrame_1"
	"@luna_turns_dupe1_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "luna_turns_dupe2" {
	"@luna_turns_dupe2_lookFrame_0"
	"@luna_turns_dupe2_lookFrame_1"
	"@luna_turns_dupe2_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "luna_turns_dupe3" {
	"@luna_turns_dupe3_lookFrame_0"
	"@luna_turns_dupe3_lookFrame_1"
	"@luna_turns_dupe3_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "luna_turns_dupe4" {
	"@luna_turns_dupe4_lookFrame_0"
	"@luna_turns_dupe4_lookFrame_1"
	"@luna_turns_dupe4_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$sequence "lucentyr_run_haste_turns_dupe1" {
	"@lucentyr_run_haste_turns_dupe1_lookFrame_0"
	"@lucentyr_run_haste_turns_dupe1_lookFrame_1"
	"@lucentyr_run_haste_turns_dupe1_lookFrame_2"
	fps 30
	delta
	blendwidth 3
	blend "turn" -1 1
}

$bonemerge "root"
$bonemerge "spine2_1"
$bonemerge "Saddle3_0"
$bonemerge "spine1_1"
$bonemerge "SaddleArmor4_0"
$bonemerge "clavicle_A_R"
$bonemerge "clavicle_A_L"
$bonemerge "neck1"
$bonemerge "bicep_A_R"
$bonemerge "elbow_A_R"
$bonemerge "wrist_A_R"
$bonemerge "bicep_A_L"
$bonemerge "elbow_A_L"
$bonemerge "wrist_A_L"
$bonemerge "neck2"
$bonemerge "head"
$bonemerge "Mane0_JNT"
$bonemerge "Ear0_0_L"
$bonemerge "Jaw2_0"
$bonemerge "Ear1_0_R"
$bonemerge "RtFrontMane0_JNT"
$bonemerge "FrontMane0_JNT"
$bonemerge "LfFrontMane0_JNT"
$bonemerge "Ear0_1_L"
$bonemerge "Ear1_1_R"
$bonemerge "RtFrontMane1_JNT"
$bonemerge "RtFrontMane2_JNT"
$bonemerge "FrontMane1_JNT"
$bonemerge "FrontMane2_JNT"
$bonemerge "LfFrontMane1_JNT"
$bonemerge "LfFrontMane2_JNT"
$bonemerge "Mane1_JNT"
$bonemerge "Mane2_JNT"
$bonemerge "Root_0"
$bonemerge "thigh_L"
$bonemerge "Spine_0"
$bonemerge "thigh_R"
$bonemerge "knee_L"
$bonemerge "ankle_L"
$bonemerge "toeBase_L"
$bonemerge "Spine_1"
$bonemerge "Spine_3"
$bonemerge "Head_0"
$bonemerge "clavicle_L"
$bonemerge "clavicle_R"
$bonemerge "Head_1"
$bonemerge "PonyTail0_R0C0"
$bonemerge "PonyTail0_R1C0"
$bonemerge "PonyTail0_R2C0"
$bonemerge "PonyTail0_R3C0"
$bonemerge "bicep_L"
$bonemerge "elbow_L"
$bonemerge "wrist_L"
$bonemerge "index_0_L"
$bonemerge "mid_0_L"
$bonemerge "ring_0_L"
$bonemerge "pinky_0_L"
$bonemerge "thumb_0_L"
$bonemerge "Shield_1"
$bonemerge "index_1_L"
$bonemerge "index_2_L"
$bonemerge "mid_1_L"
$bonemerge "ring_1_L"
$bonemerge "pinky_1_L"
$bonemerge "thumb_1_L"
$bonemerge "thumb_2_L"
$bonemerge "bicep_R"
$bonemerge "elbow_R"
$bonemerge "wrist_R"
$bonemerge "index_0_R"
$bonemerge "mid_0_R"
$bonemerge "ring_0_R"
$bonemerge "pinky_0_R"
$bonemerge "thumb_0_R"
$bonemerge "Sword_2"
$bonemerge "index_1_R"
$bonemerge "index_2_R"
$bonemerge "mid_1_R"
$bonemerge "ring_1_R"
$bonemerge "pinky_1_R"
$bonemerge "thumb_1_R"
$bonemerge "thumb_2_R"
$bonemerge "knee_R"
$bonemerge "ankle_R"
$bonemerge "toeBase_R"
$bonemerge "spine1_2"
$bonemerge "thigh_L1"
$bonemerge "thigh_R1"
$bonemerge "Tail1_0"
$bonemerge "knee_L1"
$bonemerge "ankle_L1"
$bonemerge "toeBall_L"
$bonemerge "knee_R1"
$bonemerge "ankle_R1"
$bonemerge "toeBall_R"
$bonemerge "Tail1_1"
$bonemerge "Tail1_2"
$bonemerge "Tail1_3"
$bonemerge "SaddleArmor4_1"


$keyvalues
{
}
