//Maya ASCII 2010 scene
//Name: te_stand_Psylocke_A.ma
//Last modified: Wed, Jun 16, 2010 6:39:10 PM
//Codeset: UTF-8
requires maya "2010";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2010";
fileInfo "version" "2010";
fileInfo "cutIdentifier" "200907280341-756013";
fileInfo "osv" "Mac OS X 10.5.8";
createNode clipLibrary -n "clipLibrary7";
	setAttr -s 115 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 147 "cnt_charRoot.rotateZ" 2 
		1 "cnt_charRoot.rotateY" 2 2 "cnt_charRoot.rotateX" 2 3 "cnt_charRoot.translateZ" 
		1 1 "cnt_charRoot.translateY" 1 2 "cnt_charRoot.translateX" 1 
		3 "cnt_COG.rotateZ" 2 4 "cnt_COG.rotateY" 2 5 "cnt_COG.rotateX" 
		2 6 "cnt_COG.translateZ" 1 4 "cnt_COG.translateY" 1 5 "cnt_COG.translateX" 
		1 6 "cnt_MidBackLocator.translateZ" 1 7 "cnt_MidBackLocator.translateY" 
		1 8 "cnt_MidBackLocator.translateX" 1 9 "cnt_UpperBody.twistFlex" 
		0 1 "cnt_UpperBody.frontFlex" 0 2 "cnt_UpperBody.sideFlex" 0 
		3 "cnt_UpperBody.shoulderFlex" 0 4 "cnt_UpperBody.rotateZ" 2 
		7 "cnt_UpperBody.rotateY" 2 8 "cnt_UpperBody.rotateX" 2 9 "cnt_UpperBody.translateZ" 
		1 10 "cnt_UpperBody.translateY" 1 11 "cnt_UpperBody.translateX" 
		1 12 "cnt_HipLocator.rotateZ" 2 10 "cnt_HipLocator.rotateY" 2 
		11 "cnt_HipLocator.rotateX" 2 12 "cnt_HipLocator.translateZ" 1 
		13 "cnt_HipLocator.translateY" 1 14 "cnt_HipLocator.translateX" 1 
		15 "cnt_L_shoulder_Loc.rotateZ" 2 13 "cnt_L_shoulder_Loc.rotateY" 2 
		14 "cnt_L_shoulder_Loc.rotateX" 2 15 "cnt_L_wristIK_poleConstraint.translateZ" 
		1 16 "cnt_L_wristIK_poleConstraint.translateY" 1 17 "cnt_L_wristIK_poleConstraint.translateX" 
		1 18 "cnt_L_wristIK_Loc.handToWorld" 0 5 "cnt_L_wristIK_Loc.elbowTwist" 
		0 6 "cnt_L_wristIK_Loc.ikBlend" 0 7 "cnt_L_wristIK_Loc.rotateZ" 
		2 16 "cnt_L_wristIK_Loc.rotateY" 2 17 "cnt_L_wristIK_Loc.rotateX" 
		2 18 "cnt_L_wristIK_Loc.translateZ" 1 19 "cnt_L_wristIK_Loc.translateY" 
		1 20 "cnt_L_wristIK_Loc.translateX" 1 21 "cnt_L_wrist_World.rotateZ" 
		2 19 "cnt_L_wrist_World.rotateY" 2 20 "cnt_L_wrist_World.rotateX" 
		2 21 "cnt_L_wrist_World.translateZ" 1 22 "cnt_L_wrist_World.translateY" 
		1 23 "cnt_L_wrist_World.translateX" 1 24 "cnt_R_shoulder_Loc.rotateZ" 
		2 22 "cnt_R_shoulder_Loc.rotateY" 2 23 "cnt_R_shoulder_Loc.rotateX" 
		2 24 "cnt_R_wristIK_poleConstraint.translateZ" 1 25 "cnt_R_wristIK_poleConstraint.translateY" 
		1 26 "cnt_R_wristIK_poleConstraint.translateX" 1 27 "cnt_R_wristIK_Loc.handToWorld" 
		0 8 "cnt_R_wristIK_Loc.elbowTwist" 0 9 "cnt_R_wristIK_Loc.ikBlend" 
		0 10 "cnt_R_wristIK_Loc.rotateZ" 2 25 "cnt_R_wristIK_Loc.rotateY" 
		2 26 "cnt_R_wristIK_Loc.rotateX" 2 27 "cnt_R_wristIK_Loc.translateZ" 
		1 28 "cnt_R_wristIK_Loc.translateY" 1 29 "cnt_R_wristIK_Loc.translateX" 
		1 30 "cnt_R_wrist_World.rotateZ" 2 28 "cnt_R_wrist_World.rotateY" 
		2 29 "cnt_R_wrist_World.rotateX" 2 30 "cnt_R_wrist_World.translateZ" 
		1 31 "cnt_R_wrist_World.translateY" 1 32 "cnt_R_wrist_World.translateX" 
		1 33 "jStick_L_wrist.translateZ" 1 34 "jStick_L_wrist.translateY" 
		1 35 "jStick_L_wrist.translateX" 1 36 "jStick_L_wrist_Thumb.translateZ" 
		1 37 "jStick_L_wrist_Thumb.translateY" 1 38 "jStick_L_wrist_Thumb.translateX" 
		1 39 "jStick_R_wrist.translateZ" 1 40 "jStick_R_wrist.translateY" 
		1 41 "jStick_R_wrist.translateX" 1 42 "jStick_R_wrist_Thumb.translateZ" 
		1 43 "jStick_R_wrist_Thumb.translateY" 1 44 "jStick_R_wrist_Thumb.translateX" 
		1 45 "cnt_L_footIK_poleConstraint.rotateZ" 2 31 "cnt_L_footIK_poleConstraint.rotateY" 
		2 32 "cnt_L_footIK_poleConstraint.rotateX" 2 33 "cnt_L_footIK_poleConstraint.translateZ" 
		1 46 "cnt_L_footIK_poleConstraint.translateY" 1 47 "cnt_L_footIK_poleConstraint.translateX" 
		1 48 "cnt_L_foot_Group.__rollTOE_OFFSET" 0 11 "cnt_L_foot_Group.__rollANKLE_OFFSET" 
		0 12 "cnt_L_foot_Group.__rollHEEL_OFFSET" 0 13 "cnt_L_foot_Group.__KneeTWIST_OFFSET" 
		0 14 "cnt_L_foot_Group.footToCOG" 0 15 "cnt_L_foot_Group.FootLean" 
		0 16 "cnt_L_foot_Group.ToeTwist" 0 17 "cnt_L_foot_Group.Roll" 0 
		18 "cnt_L_foot_Group.KneeTwist" 0 19 "cnt_L_foot_Group.ikBlend" 0 
		20 "cnt_L_foot_Group.rotateZ" 2 34 "cnt_L_foot_Group.rotateY" 2 
		35 "cnt_L_foot_Group.rotateX" 2 36 "cnt_L_foot_Group.translateZ" 1 
		49 "cnt_L_foot_Group.translateY" 1 50 "cnt_L_foot_Group.translateX" 
		1 51 "cnt_L_ankle_Local.rotateZ" 2 37 "cnt_L_ankle_Local.rotateY" 
		2 38 "cnt_L_ankle_Local.rotateX" 2 39 "cnt_L_ankle_Local.translateZ" 
		1 52 "cnt_L_ankle_Local.translateY" 1 53 "cnt_L_ankle_Local.translateX" 
		1 54 "cnt_R_footIK_poleConstraint.rotateZ" 2 40 "cnt_R_footIK_poleConstraint.rotateY" 
		2 41 "cnt_R_footIK_poleConstraint.rotateX" 2 42 "cnt_R_footIK_poleConstraint.translateZ" 
		1 55 "cnt_R_footIK_poleConstraint.translateY" 1 56 "cnt_R_footIK_poleConstraint.translateX" 
		1 57 "cnt_R_foot_Group.__rollTOE_OFFSET" 0 21 "cnt_R_foot_Group.__rollANKLE_OFFSET" 
		0 22 "cnt_R_foot_Group.__rollHEEL_OFFSET" 0 23 "cnt_R_foot_Group.__KneeTWIST_OFFSET" 
		0 24 "cnt_R_foot_Group.footToCOG" 0 25 "cnt_R_foot_Group.FootLean" 
		0 26 "cnt_R_foot_Group.ToeTwist" 0 27 "cnt_R_foot_Group.Roll" 0 
		28 "cnt_R_foot_Group.KneeTwist" 0 29 "cnt_R_foot_Group.ikBlend" 0 
		30 "cnt_R_foot_Group.rotateZ" 2 43 "cnt_R_foot_Group.rotateY" 2 
		44 "cnt_R_foot_Group.rotateX" 2 45 "cnt_R_foot_Group.translateZ" 1 
		58 "cnt_R_foot_Group.translateY" 1 59 "cnt_R_foot_Group.translateX" 
		1 60 "cnt_R_ankle_Local.rotateZ" 2 46 "cnt_R_ankle_Local.rotateY" 
		2 47 "cnt_R_ankle_Local.rotateX" 2 48 "cnt_R_ankle_Local.translateZ" 
		1 61 "cnt_R_ankle_Local.translateY" 1 62 "cnt_R_ankle_Local.translateX" 
		1 63 "cnt_Neck_1_Loc.rotateZ" 2 49 "cnt_Neck_1_Loc.rotateY" 2 
		50 "cnt_Neck_1_Loc.rotateX" 2 51 "cnt_Head_1_Loc.rotateZ" 2 52 "cnt_Head_1_Loc.rotateY" 
		2 53 "cnt_Head_1_Loc.rotateX" 2 54  ;
	setAttr ".cd[0].cim" -type "Int32Array" 147 0 1 2 3 4
		 5 6 7 8 9 10 11 12 13 14 15 16
		 17 18 19 20 21 22 23 24 25 26 27 28
		 29 30 31 32 33 34 35 36 37 38 39 40
		 41 42 43 44 45 46 47 48 49 50 51 52
		 53 54 55 56 57 58 59 60 61 62 63 64
		 65 66 67 68 69 70 71 72 73 74 75 76
		 77 78 79 80 81 82 83 84 85 86 87 88
		 89 90 91 92 93 94 95 96 97 98 99 100
		 101 102 103 104 105 106 107 108 109 110 111 112
		 113 114 115 116 117 118 119 120 121 122 123 124
		 125 126 127 128 129 130 131 132 133 134 135 136
		 137 138 139 140 141 142 143 144 145 146 ;
createNode animClip -n "Psylocke_stand_animSource";
	setAttr ".ihi" 0;
	setAttr ".ss" 1;
	setAttr ".se" 32;
	setAttr ".ci" no;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -16.788559366170993;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -52.63567260796291;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 23.265721934229216;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -1.0147978513203177 32 -1.0147978513203177;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -2.15 8 -2.4635512472223473 16 -2.8637470793485447 
		24 -3.0429790871651097 32 -2.15;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 3 1 1;
	setAttr -s 6 ".ktl[3:5]" no yes yes;
	setAttr -s 6 ".kix[1:5]"  0.26742365956306458 0.27551278471946716 
		0.22539843618869781 0.47472426295280457 0.2660624086856842;
	setAttr -s 6 ".kiy[1:5]"  0.96357905864715576 -0.96129745244979858 
		-0.97426670789718628 -0.88013464212417603 0.96395581960678101;
	setAttr -s 6 ".kox[1:5]"  0.26742354035377502 0.52304923534393311 
		1 0.47472426295280457 0.26606234908103943;
	setAttr -s 6 ".koy[1:5]"  0.96357905864715576 0.85230255126953125 
		0 -0.88013458251953125 0.96395581960678101;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.16811971447697438 32 0.16811971447697438;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0 8 -0.2330874796977615 16 -0.4368499665610191 
		24 -0.55391653131841045 32 0;
	setAttr -s 6 ".kit[2:5]"  1 1 1 3;
	setAttr -s 6 ".ktl[2:5]" no no no yes;
	setAttr -s 6 ".kix[2:5]"  0.69896590709686279 0.72967630624771118 
		0.87264466285705566 1;
	setAttr -s 6 ".kiy[2:5]"  -0.71515506505966187 -0.68379276990890503 
		-0.48835581541061401 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.2 1 0.2;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 19.297 32 19.297;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -15.635999999999997 32 -15.635999999999997;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -8.797 32 -8.797;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0 8 0 16 0 24 0.0095831363071019852 
		32 0;
	setAttr -s 6 ".kit[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kix[2:5]"  0.99676424264907837 0.98917394876480103 
		0.96740114688873291 1;
	setAttr -s 6 ".kiy[2:5]"  -0.080381348729133606 -0.14674811065196991 
		-0.25324910879135132 0;
	setAttr -s 6 ".kox[2:5]"  0.99676418304443359 0.98917394876480103 
		0.96740126609802246 1;
	setAttr -s 6 ".koy[2:5]"  -0.0803813636302948 -0.14674796164035797 
		-0.25324860215187073 0;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
	setAttr ".kit[5]"  4;
	setAttr ".kot[5]"  4;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0.1 8 0.05 16 0 24 -0.035 32 0.1;
	setAttr -s 6 ".kit[2:5]"  1 1 3 3;
	setAttr -s 6 ".kot[2:5]"  1 1 3 3;
	setAttr -s 6 ".ktl[2:5]" no no yes yes;
	setAttr -s 6 ".kix[2:5]"  0.90178000926971436 0.89361876249313354 
		1 1;
	setAttr -s 6 ".kiy[2:5]"  -0.43219545483589172 -0.44882687926292419 
		0 0;
	setAttr -s 6 ".kox[2:5]"  0.99489361047744751 0.98385840654373169 
		1 1;
	setAttr -s 6 ".koy[2:5]"  0.10092973709106445 0.17894899845123291 
		0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 1.4756444637808892e-30 1 0.6705941677432895 
		8 -13.316480465947668 16 -19.455431740451008 24 -24.214071642100286 32 0.67059416770000002;
	setAttr -s 6 ".kit[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kix[2:5]"  0.97173047065734863 0.83333063125610352 
		0.68269145488739014 1;
	setAttr -s 6 ".kiy[2:5]"  0.23609313368797302 0.55277496576309204 
		0.73070681095123291 0;
	setAttr -s 6 ".kox[2:5]"  0.97173047065734863 0.83333057165145874 
		0.68269145488739014 1;
	setAttr -s 6 ".koy[2:5]"  0.23609313368797302 0.55277496576309204 
		0.73070681095123291 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 1.5902773407317584e-15 1 -16.285522567929249 
		8 -11.534845473588703 16 -8.0217568315144714 24 -6.6050582975211585 32 -16.285522570000001;
	setAttr -s 6 ".kit[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kix[2:5]"  0.96824413537979126 0.96793019771575928 
		0.89926290512084961 1;
	setAttr -s 6 ".kiy[2:5]"  -0.25000667572021484 -0.25121936202049255 
		-0.43740856647491455 0;
	setAttr -s 6 ".kox[2:5]"  0.96824413537979126 0.96793019771575928 
		0.89926290512084961 1;
	setAttr -s 6 ".koy[2:5]"  -0.25000664591789246 -0.25121933221817017 
		-0.43740859627723694 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.7655625192200634e-31 1 23.392492211172453 
		32 23.39249221;
createNode animCurveTU -n "animCurveTU201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 10;
createNode animCurveTU -n "animCurveTU202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -2;
createNode animCurveTU -n "animCurveTU203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.1299600123008406e-29 1 57.520686893547271;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 3.1805546814635168e-15 1 3.3880501571929456;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6.9926699392056553e-31 1 87.845565978983146;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.1102230246251565e-16 1 0.57954519068744725 
		32 0.57954519069999999;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 1.7763568394002505e-15 1 0.03547702737133817 
		8 0.39033820304607481 16 0.78435486121659059 22 1.2119126341614321 32 0.035477027369999997;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".ktl[2:5]" no no yes yes;
	setAttr -s 6 ".kix[1:5]"  0.35074493288993835 0.36202964186668396 
		0.29905927181243896 0.35763615369796753 0.35154488682746887;
	setAttr -s 6 ".kiy[1:5]"  0.93647104501724243 0.93216663599014282 
		0.9542345404624939 -0.93386101722717285 0.93617105484008789;
	setAttr -s 6 ".kox[1:5]"  0.35074499249458313 0.66682076454162598 
		0.58034199476242065 0.35763612389564514 0.35154491662979126;
	setAttr -s 6 ".koy[1:5]"  0.93647104501724243 -0.74521815776824951 
		-0.81437289714813232 -0.93386101722717285 0.93617105484008789;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.48483451999313887 32 0.48483451999999999;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.1299600123008406e-29 1 86.426200129037355 
		32 86.426200129999998;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 3.1805546814635168e-15 1 17.68754815389379 
		16 17.687548154131427 24 17.687548154262327 32 17.687548154393227;
	setAttr -s 5 ".kit[1:4]"  1 3 3 1;
	setAttr -s 5 ".kot[1:4]"  1 3 1 1;
	setAttr -s 5 ".ktl[3:4]" no yes;
	setAttr -s 5 ".kix[1:4]"  0.61988043785095215 1 1 0.62000143527984619;
	setAttr -s 5 ".kiy[1:4]"  -0.78469628095626831 0 0 -0.78460073471069336;
	setAttr -s 5 ".kox[1:4]"  0.61988043785095215 1 0.27115270495414734 
		0.62000143527984619;
	setAttr -s 5 ".koy[1:4]"  -0.78469628095626831 0 0.96253639459609985 
		-0.78460073471069336;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 6.9926699392056553e-31 1 163.76133577965996 
		32 163.76133580000001;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 1.1102230246251565e-16 1 3 8 3.15 16 
		3.3 24 3.5 32 3;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[2:5]"  1 1 1 3;
	setAttr -s 6 ".ktl[1:5]" no no no no no;
	setAttr -s 6 ".kix[5]"  0.20244763791561127;
	setAttr -s 6 ".kiy[5]"  -0.9792931079864502;
	setAttr -s 6 ".kox[2:5]"  0.54507160186767578 0.53692913055419922 
		0.46579432487487793 1;
	setAttr -s 6 ".koy[2:5]"  0.83838951587677002 0.84362739324569702 
		0.88489300012588501 0;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 1.7763568394002505e-15 1 2 8 2.5 16 
		3 23 3.5 32 2;
	setAttr -s 6 ".kit[2:5]"  1 1 3 1;
	setAttr -s 6 ".ktl[1:5]" no no no yes no;
	setAttr -s 6 ".kix[2:5]"  0.18095070123672485 0.19291685521602631 
		1 0.13894864916801453;
	setAttr -s 6 ".kiy[2:5]"  0.98349219560623169 0.98121511936187744 
		0 -0.99029964208602905;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 3.5 16 3.5 24 3.3950435132757635 
		32 3.5;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".ktl[4]" no;
	setAttr -s 5 ".kix[4]"  0.26517555117607117;
	setAttr -s 5 ".kiy[4]"  -0.96420019865036011;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -2.2065604893169652 16 -9.6016374223128551 
		24 -14.748655145997228 32 -2.2065604890000001;
	setAttr -s 5 ".kit[2:4]"  1 1 3;
	setAttr -s 5 ".kot[2:4]"  1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.97453433275222778 0.95222622156143188 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.22423841059207916 0.30539381504058838 
		0;
	setAttr -s 5 ".kox[2:4]"  0.97453433275222778 0.95222616195678711 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.22423839569091797 0.30539381504058838 
		0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -17.037035513445094 16 -20.253801484947704 
		24 -20.278055847576628 32 -17.037035509999999;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -28.649855287012656 16 -26.574427818792085 
		24 -26.482130599476111 32 -28.649855290000005;
createNode animCurveTU -n "animCurveTU204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 10;
createNode animCurveTU -n "animCurveTU205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 2;
createNode animCurveTU -n "animCurveTU206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -55.165490257931623;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 -2.5444437451708134e-14 1 40.755066466870446;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 109.8073423182197 32 109.8073423;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -0.3 8 -1.2350767754917928 18 -1.9104100022358654 
		24 -2.4818458094808493 32 -0.3;
	setAttr -s 6 ".kit[2:5]"  1 1 3 3;
	setAttr -s 6 ".kot[2:5]"  1 1 3 3;
	setAttr -s 6 ".ktl[2:5]" no no yes yes;
	setAttr -s 6 ".kix[2:5]"  0.13228556513786316 0.16596297919750214 
		1 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99121171236038208 -0.98613196611404419 
		0 0;
	setAttr -s 6 ".kox[2:5]"  0.33543524146080017 0.17480859160423279 
		1 1;
	setAttr -s 6 ".koy[2:5]"  0.94206327199935913 0.98460245132446289 
		0 0;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -3.5527136788005009e-15 1 -2.3 32 -2.3;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -2.8371951219512193 32 -2.8371951219512193;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -21.246901100490462 16 -21.246901100490462 
		24 -33.861977998547133 28 2.5130990634890336 32 -21.246901100490462;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.62032002210617065 0.83372616767883301 
		0.88197380304336548 0.60543829202651978 0.62169915437698364;
	setAttr -s 6 ".kiy[1:5]"  -0.78434878587722778 -0.55217826366424561 
		0.47129848599433899 0.79589229822158813 -0.78325611352920532;
	setAttr -s 6 ".kox[1:5]"  0.62032008171081543 0.83372610807418823 
		0.88197386264801025 0.60543829202651978 0.62169909477233887;
	setAttr -s 6 ".koy[1:5]"  -0.78434878587722778 -0.55217826366424561 
		0.4712984561920166 0.79589229822158813 -0.7832561731338501;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -2.5444437451708134e-14 1 -18.463869348155566 
		16 -18.463869348155566 24 -18.463869348155566 32 -18.463869348155566;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 169.43662675540818 16 169.43662678756837 
		24 169.4366268 32 169.4366268;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 1.6187086941486943 8 1.6627886921418749 
		16 1.6956448772574559 24 1.7068686900000001 32 1.6187086941486943;
	setAttr -s 6 ".kit[4:5]"  1 3;
	setAttr -s 6 ".kot[2:5]"  1 1 1 3;
	setAttr -s 6 ".ktl[1:5]" no no no yes no;
	setAttr -s 6 ".kix[4:5]"  0.99325746297836304 1;
	setAttr -s 6 ".kiy[4:5]"  -0.11592947691679001 0;
	setAttr -s 6 ".kox[2:5]"  0.94110554456710815 0.98678356409072876 
		0.99325746297836304 1;
	setAttr -s 6 ".koy[2:5]"  0.33811289072036743 0.1620439738035202 
		-0.11592942476272583 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 -3.5527136788005009e-15 1 -5.0956792728502585 
		8 -5.6301560947907454 16 -5.9662581575960862 24 -6.1646329168177614 32 -5.0956792728502585;
	setAttr -s 6 ".kit[2:5]"  1 1 1 3;
	setAttr -s 6 ".kot[3:5]"  1 3 3;
	setAttr -s 6 ".ktl[1:5]" no no no no no;
	setAttr -s 6 ".kix[2:5]"  0.2025478184223175 0.27526742219924927 
		0.67167145013809204 1;
	setAttr -s 6 ".kiy[2:5]"  -0.97927236557006836 -0.96136772632598877 
		-0.74084919691085815 0;
	setAttr -s 6 ".kox[3:5]"  0.89566713571548462 1 1;
	setAttr -s 6 ".koy[3:5]"  -0.4447251558303833 0 0;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -5 8 -4.5 16 -4.1386554621848743 
		24 -4 32 -5;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[2:5]"  1 1 1 3;
	setAttr -s 6 ".ktl[1:5]" no no no no no;
	setAttr -s 6 ".kix[5]"  0.20339491963386536;
	setAttr -s 6 ".kiy[5]"  -0.97909677028656006;
	setAttr -s 6 ".kox[2:5]"  0.30952712893486023 0.75103515386581421 
		0.9840967059135437 1;
	setAttr -s 6 ".koy[2:5]"  0.95089066028594971 0.66026228666305542 
		0.17763353884220123 0;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 16 0 24 0 32 0;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0.12186865917831181 16 0.12186865917831181 
		24 0.12186865917831181 28 0.22597132363390271 32 0.12186865917831181;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0.35255545174581215 16 0.35255545174581215 
		24 0.35255545174581215 28 0.18619502035513102 32 0.35255545174581215;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.82191622257232666 0.98770588636398315 
		0.94657552242279053 0.77336269617080688 0.82153207063674927;
	setAttr -s 6 ".kiy[1:5]"  -0.56960839033126831 0.15632367134094238 
		-0.32248219847679138 -0.63396382331848145 -0.57016229629516602;
	setAttr -s 6 ".kox[1:5]"  0.82191622257232666 0.98770588636398315 
		0.94657552242279053 0.77336281538009644 0.82153207063674927;
	setAttr -s 6 ".koy[1:5]"  -0.56960839033126831 0.15632367134094238 
		-0.32248219847679138 -0.63396370410919189 -0.57016241550445557;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_Thumb_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 0 32 0;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_Thumb_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 16 0 32 0;
createNode animCurveTL -n "Mike_Rig_jStick_L_wrist_Thumb_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.1315807562603854 16 0.1315807562603854 
		24 0.073308851357752003 32 0.1315807562603854;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 16 0 24 0 32 0;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0.39347879450862167 16 0.39347879450862167 
		24 0.40483919949937258 32 0.39347879450862167;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 1 16 1 24 0.73374960224962771 32 
		1;
	setAttr -s 5 ".kit[2:4]"  1 3 3;
	setAttr -s 5 ".kot[2:4]"  1 3 3;
	setAttr -s 5 ".kix[2:4]"  0.75577658414840698 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.65482956171035767 0 0;
	setAttr -s 5 ".kox[2:4]"  0.75577664375305176 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.65482956171035767 0 0;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_Thumb_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_Thumb_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Mike_Rig_jStick_R_wrist_Thumb_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.25310648974094896;
createNode animCurveTU -n "animCurveTU207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 3.5 1 3.5;
createNode animCurveTU -n "animCurveTU208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 4 1 4;
createNode animCurveTU -n "animCurveTU209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6 1 6;
createNode animCurveTU -n "animCurveTU210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 90 1 90;
createNode animCurveTU -n "animCurveTU211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 10;
createNode animCurveTU -n "animCurveTU212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 5.4;
createNode animCurveTU -n "animCurveTU213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 1.73717771137504 8 3.1869322239140416 
		16 3.5638190818788753 24 5.3826109701845839 32 1.73717771137504;
	setAttr -s 6 ".kit[0:5]"  3 3 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".ktl[1:5]" no yes yes yes no;
	setAttr -s 6 ".kix[2:5]"  0.12803179025650024 0.067851066589355469 
		0.060738883912563324 1;
	setAttr -s 6 ".kiy[2:5]"  0.99177008867263794 0.99769550561904907 
		0.99815374612808228 0;
	setAttr -s 6 ".kox[1:5]"  0.10434772819280624 0.12803180515766144 
		0.067851044237613678 0.060738883912563324 1;
	setAttr -s 6 ".koy[1:5]"  0.99454087018966675 0.99177014827728271 
		0.9976954460144043 0.9981536865234375 0;
createNode animCurveTU -n "animCurveTU214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.2821611059649799e-14 1 -33.291584619083999;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kix[1]"  0.92471033334732056;
	setAttr -s 2 ".kiy[1]"  -0.38067153096199036;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 -6.4356536132738332e-15 1 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kix[1]"  0.093411155045032501;
	setAttr -s 2 ".kiy[1]"  0.99562764167785645;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.0172028861385688e-13 1 0;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0.0031689768344033997;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kix[1]"  0.21069300174713135;
	setAttr -s 2 ".kiy[1]"  0.97755229473114014;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.1102230246251565e-16 1 1.123681668997528;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kix[1]"  0.33130303025245667;
	setAttr -s 2 ".kiy[1]"  -0.94352442026138306;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 -1.1102230246251565e-16 1 4.3314306420293525;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.42834785580635071;
	setAttr -s 2 ".kiy[1]"  0.90361398458480835;
	setAttr -s 2 ".kox[1]"  0.42834779620170593;
	setAttr -s 2 ".koy[1]"  0.90361398458480835;
createNode animCurveTU -n "animCurveTU216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 3.5 1 3.5;
createNode animCurveTU -n "animCurveTU217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 4 1 4;
createNode animCurveTU -n "animCurveTU218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6 1 6;
createNode animCurveTU -n "animCurveTU219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 -90 1 -90;
createNode animCurveTU -n "animCurveTU220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTU -n "animCurveTU222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.2722218725854067e-14 1 60.520441935590107;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0.87426096200942993;
	setAttr -s 2 ".koy[1]"  0.48545631766319275;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6.2865651125802323e-15 1 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 5.3431785055936712e-13 1 5.3431785055936712e-13;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 8.6736173798840355e-19 1 0.0020870836452411348;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  0.14540876448154449;
	setAttr -s 2 ".koy[1]"  -0.989371657371521;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0.22671022153935921;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 -1.1102230246251565e-16 1 3.2304409612934708;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.33008179068565369;
	setAttr -s 2 ".kiy[1]"  0.94395238161087036;
	setAttr -s 2 ".kox[1]"  0.33008164167404175;
	setAttr -s 2 ".koy[1]"  0.94395238161087036;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.0897344086351102e-31;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 7.5417098372040225;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 3.0897344086351102e-31 1 0.71831466233088692 
		16 -0.70187834475267741 32 0.71831466233088692;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -8.119710814294228 16 -9.7741111257274209 
		24 -13.566984709464718 32 -8.119710814294228;
	setAttr -s 5 ".kit[2:4]"  1 1 3;
	setAttr -s 5 ".kot[2:4]"  1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.89313334226608276 0.96889930963516235 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.44979208707809448 0.24745519459247589 
		0;
	setAttr -s 5 ".kox[2:4]"  0.89313334226608276 0.96889936923980713 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.44979208707809448 0.24745522439479828 
		0;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 51.872862053159153 32 51.872862053159153;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 8;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :lightList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -av ".w" 1280;
	setAttr -av ".h" 720;
	setAttr -k on ".pa" 1;
	setAttr -k on ".al";
	setAttr -av ".dar" 1.7769999504089355;
	setAttr -k on ".ldar";
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
select -ne :characterPartition;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
connectAttr "Psylocke_stand_animSource.cl" "clipLibrary7.sc[0]";
connectAttr "animCurveTA295.a" "clipLibrary7.cel[0].cev[0].cevr";
connectAttr "animCurveTA296.a" "clipLibrary7.cel[0].cev[1].cevr";
connectAttr "animCurveTA297.a" "clipLibrary7.cel[0].cev[2].cevr";
connectAttr "animCurveTL286.a" "clipLibrary7.cel[0].cev[3].cevr";
connectAttr "animCurveTL287.a" "clipLibrary7.cel[0].cev[4].cevr";
connectAttr "animCurveTL288.a" "clipLibrary7.cel[0].cev[5].cevr";
connectAttr "animCurveTA298.a" "clipLibrary7.cel[0].cev[6].cevr";
connectAttr "animCurveTA299.a" "clipLibrary7.cel[0].cev[7].cevr";
connectAttr "animCurveTA300.a" "clipLibrary7.cel[0].cev[8].cevr";
connectAttr "animCurveTL289.a" "clipLibrary7.cel[0].cev[9].cevr";
connectAttr "animCurveTL290.a" "clipLibrary7.cel[0].cev[10].cevr";
connectAttr "animCurveTL291.a" "clipLibrary7.cel[0].cev[11].cevr";
connectAttr "animCurveTL292.a" "clipLibrary7.cel[0].cev[12].cevr";
connectAttr "animCurveTL293.a" "clipLibrary7.cel[0].cev[13].cevr";
connectAttr "animCurveTL294.a" "clipLibrary7.cel[0].cev[14].cevr";
connectAttr "animCurveTU197.a" "clipLibrary7.cel[0].cev[15].cevr";
connectAttr "animCurveTU198.a" "clipLibrary7.cel[0].cev[16].cevr";
connectAttr "animCurveTU199.a" "clipLibrary7.cel[0].cev[17].cevr";
connectAttr "animCurveTU200.a" "clipLibrary7.cel[0].cev[18].cevr";
connectAttr "animCurveTA301.a" "clipLibrary7.cel[0].cev[19].cevr";
connectAttr "animCurveTA302.a" "clipLibrary7.cel[0].cev[20].cevr";
connectAttr "animCurveTA303.a" "clipLibrary7.cel[0].cev[21].cevr";
connectAttr "animCurveTL295.a" "clipLibrary7.cel[0].cev[22].cevr";
connectAttr "animCurveTL296.a" "clipLibrary7.cel[0].cev[23].cevr";
connectAttr "animCurveTL297.a" "clipLibrary7.cel[0].cev[24].cevr";
connectAttr "animCurveTA304.a" "clipLibrary7.cel[0].cev[25].cevr";
connectAttr "animCurveTA305.a" "clipLibrary7.cel[0].cev[26].cevr";
connectAttr "animCurveTA306.a" "clipLibrary7.cel[0].cev[27].cevr";
connectAttr "animCurveTL298.a" "clipLibrary7.cel[0].cev[28].cevr";
connectAttr "animCurveTL299.a" "clipLibrary7.cel[0].cev[29].cevr";
connectAttr "animCurveTL300.a" "clipLibrary7.cel[0].cev[30].cevr";
connectAttr "animCurveTA307.a" "clipLibrary7.cel[0].cev[31].cevr";
connectAttr "animCurveTA308.a" "clipLibrary7.cel[0].cev[32].cevr";
connectAttr "animCurveTA309.a" "clipLibrary7.cel[0].cev[33].cevr";
connectAttr "animCurveTU201.a" "clipLibrary7.cel[0].cev[37].cevr";
connectAttr "animCurveTU202.a" "clipLibrary7.cel[0].cev[38].cevr";
connectAttr "animCurveTU203.a" "clipLibrary7.cel[0].cev[39].cevr";
connectAttr "animCurveTA310.a" "clipLibrary7.cel[0].cev[40].cevr";
connectAttr "animCurveTA311.a" "clipLibrary7.cel[0].cev[41].cevr";
connectAttr "animCurveTA312.a" "clipLibrary7.cel[0].cev[42].cevr";
connectAttr "animCurveTL301.a" "clipLibrary7.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary7.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary7.cel[0].cev[45].cevr";
connectAttr "animCurveTA313.a" "clipLibrary7.cel[0].cev[46].cevr";
connectAttr "animCurveTA314.a" "clipLibrary7.cel[0].cev[47].cevr";
connectAttr "animCurveTA315.a" "clipLibrary7.cel[0].cev[48].cevr";
connectAttr "animCurveTL304.a" "clipLibrary7.cel[0].cev[49].cevr";
connectAttr "animCurveTL305.a" "clipLibrary7.cel[0].cev[50].cevr";
connectAttr "animCurveTL306.a" "clipLibrary7.cel[0].cev[51].cevr";
connectAttr "animCurveTA316.a" "clipLibrary7.cel[0].cev[52].cevr";
connectAttr "animCurveTA317.a" "clipLibrary7.cel[0].cev[53].cevr";
connectAttr "animCurveTA318.a" "clipLibrary7.cel[0].cev[54].cevr";
connectAttr "animCurveTU204.a" "clipLibrary7.cel[0].cev[58].cevr";
connectAttr "animCurveTU205.a" "clipLibrary7.cel[0].cev[59].cevr";
connectAttr "animCurveTU206.a" "clipLibrary7.cel[0].cev[60].cevr";
connectAttr "animCurveTA319.a" "clipLibrary7.cel[0].cev[61].cevr";
connectAttr "animCurveTA320.a" "clipLibrary7.cel[0].cev[62].cevr";
connectAttr "animCurveTA321.a" "clipLibrary7.cel[0].cev[63].cevr";
connectAttr "animCurveTL307.a" "clipLibrary7.cel[0].cev[64].cevr";
connectAttr "animCurveTL308.a" "clipLibrary7.cel[0].cev[65].cevr";
connectAttr "animCurveTL309.a" "clipLibrary7.cel[0].cev[66].cevr";
connectAttr "animCurveTA322.a" "clipLibrary7.cel[0].cev[67].cevr";
connectAttr "animCurveTA323.a" "clipLibrary7.cel[0].cev[68].cevr";
connectAttr "animCurveTA324.a" "clipLibrary7.cel[0].cev[69].cevr";
connectAttr "animCurveTL310.a" "clipLibrary7.cel[0].cev[70].cevr";
connectAttr "animCurveTL311.a" "clipLibrary7.cel[0].cev[71].cevr";
connectAttr "animCurveTL312.a" "clipLibrary7.cel[0].cev[72].cevr";
connectAttr "animCurveTL313.a" "clipLibrary7.cel[0].cev[73].cevr";
connectAttr "animCurveTL314.a" "clipLibrary7.cel[0].cev[74].cevr";
connectAttr "animCurveTL315.a" "clipLibrary7.cel[0].cev[75].cevr";
connectAttr "Mike_Rig_jStick_L_wrist_Thumb_translateZ.a" "clipLibrary7.cel[0].cev[76].cevr"
		;
connectAttr "Mike_Rig_jStick_L_wrist_Thumb_translateY.a" "clipLibrary7.cel[0].cev[77].cevr"
		;
connectAttr "Mike_Rig_jStick_L_wrist_Thumb_translateX.a" "clipLibrary7.cel[0].cev[78].cevr"
		;
connectAttr "animCurveTL316.a" "clipLibrary7.cel[0].cev[79].cevr";
connectAttr "animCurveTL317.a" "clipLibrary7.cel[0].cev[80].cevr";
connectAttr "animCurveTL318.a" "clipLibrary7.cel[0].cev[81].cevr";
connectAttr "Mike_Rig_jStick_R_wrist_Thumb_translateZ.a" "clipLibrary7.cel[0].cev[82].cevr"
		;
connectAttr "Mike_Rig_jStick_R_wrist_Thumb_translateY.a" "clipLibrary7.cel[0].cev[83].cevr"
		;
connectAttr "Mike_Rig_jStick_R_wrist_Thumb_translateX.a" "clipLibrary7.cel[0].cev[84].cevr"
		;
connectAttr "animCurveTU207.a" "clipLibrary7.cel[0].cev[91].cevr";
connectAttr "animCurveTU208.a" "clipLibrary7.cel[0].cev[92].cevr";
connectAttr "animCurveTU209.a" "clipLibrary7.cel[0].cev[93].cevr";
connectAttr "animCurveTU210.a" "clipLibrary7.cel[0].cev[94].cevr";
connectAttr "animCurveTU211.a" "clipLibrary7.cel[0].cev[96].cevr";
connectAttr "animCurveTU212.a" "clipLibrary7.cel[0].cev[97].cevr";
connectAttr "animCurveTU213.a" "clipLibrary7.cel[0].cev[98].cevr";
connectAttr "animCurveTU214.a" "clipLibrary7.cel[0].cev[99].cevr";
connectAttr "animCurveTU215.a" "clipLibrary7.cel[0].cev[100].cevr";
connectAttr "animCurveTA325.a" "clipLibrary7.cel[0].cev[101].cevr";
connectAttr "animCurveTA326.a" "clipLibrary7.cel[0].cev[102].cevr";
connectAttr "animCurveTA327.a" "clipLibrary7.cel[0].cev[103].cevr";
connectAttr "animCurveTL319.a" "clipLibrary7.cel[0].cev[104].cevr";
connectAttr "animCurveTL320.a" "clipLibrary7.cel[0].cev[105].cevr";
connectAttr "animCurveTL321.a" "clipLibrary7.cel[0].cev[106].cevr";
connectAttr "animCurveTU216.a" "clipLibrary7.cel[0].cev[119].cevr";
connectAttr "animCurveTU217.a" "clipLibrary7.cel[0].cev[120].cevr";
connectAttr "animCurveTU218.a" "clipLibrary7.cel[0].cev[121].cevr";
connectAttr "animCurveTU219.a" "clipLibrary7.cel[0].cev[122].cevr";
connectAttr "animCurveTU220.a" "clipLibrary7.cel[0].cev[124].cevr";
connectAttr "animCurveTU221.a" "clipLibrary7.cel[0].cev[125].cevr";
connectAttr "animCurveTU222.a" "clipLibrary7.cel[0].cev[126].cevr";
connectAttr "animCurveTU223.a" "clipLibrary7.cel[0].cev[127].cevr";
connectAttr "animCurveTU224.a" "clipLibrary7.cel[0].cev[128].cevr";
connectAttr "animCurveTA328.a" "clipLibrary7.cel[0].cev[129].cevr";
connectAttr "animCurveTA329.a" "clipLibrary7.cel[0].cev[130].cevr";
connectAttr "animCurveTA330.a" "clipLibrary7.cel[0].cev[131].cevr";
connectAttr "animCurveTL322.a" "clipLibrary7.cel[0].cev[132].cevr";
connectAttr "animCurveTL323.a" "clipLibrary7.cel[0].cev[133].cevr";
connectAttr "animCurveTL324.a" "clipLibrary7.cel[0].cev[134].cevr";
connectAttr "animCurveTA331.a" "clipLibrary7.cel[0].cev[141].cevr";
connectAttr "animCurveTA332.a" "clipLibrary7.cel[0].cev[142].cevr";
connectAttr "animCurveTA333.a" "clipLibrary7.cel[0].cev[143].cevr";
connectAttr "animCurveTA334.a" "clipLibrary7.cel[0].cev[144].cevr";
connectAttr "animCurveTA335.a" "clipLibrary7.cel[0].cev[145].cevr";
connectAttr "animCurveTA336.a" "clipLibrary7.cel[0].cev[146].cevr";
// End of te_stand_Psylocke_A.ma
