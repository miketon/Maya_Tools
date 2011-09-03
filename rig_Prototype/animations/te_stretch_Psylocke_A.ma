//Maya ASCII 2010 scene
//Name: te_stretch_Psylocke_A.ma
//Last modified: Wed, Jun 16, 2010 6:39:46 PM
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
createNode animClip -n "Psylocke_skinStretchTestSource1";
	setAttr ".ihi" 0;
	setAttr ".ss" -5;
	setAttr ".se" 32;
	setAttr ".ci" no;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 -3.0186161232756756;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 0.53778865855235924;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU253";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU254";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU255";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU256";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.2;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 -0.29784150025235778;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 4.4077406264206378e-29 5 0 10 46.646357690000002;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.5902773407317584e-15;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -2.8810633154343065e-30;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU257";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU258";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 0.9;
createNode animCurveTU -n "animCurveTU259";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 99.556992660000006;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6.9926699392056588e-31;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 5 -0.13478881440000001 10 1.95980596;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 3.5411036669999998 5 3.2841877570000002 
		10 -1.8864363;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 2.5579969230000001 5 1.6908055239999999 
		10 3.589716203;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6.9926699392056588e-31;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 5 0 10 46.646357688542004;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU260";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU261";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 -0.90000000000000036;
createNode animCurveTU -n "animCurveTU262";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 99.556992655679721;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 5 0.13478881439561641 10 -1.9598059598926085;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 -3.5411036672543199 5 -3.2841877573879343 
		10 1.8864363001519422;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 -2.5579969230246875 5 -1.6908055235219948 
		10 -3.5897162029857594;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU263";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.5;
createNode animCurveTU -n "animCurveTU264";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 4;
createNode animCurveTU -n "animCurveTU265";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6;
createNode animCurveTU -n "animCurveTU266";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 90;
createNode animCurveTU -n "animCurveTU267";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 -9.6000000000000014;
createNode animCurveTU -n "animCurveTU271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -1.2722218725854067e-14;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -6.3611093629270335e-15;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.5269865544281965e-13;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -1.1102230246251565e-16;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.5;
createNode animCurveTU -n "animCurveTU273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 4;
createNode animCurveTU -n "animCurveTU274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6;
createNode animCurveTU -n "animCurveTU275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -90;
createNode animCurveTU -n "animCurveTU276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU277";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU278";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 10 9.6;
createNode animCurveTU -n "animCurveTU280";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -4.9696166897867449e-17;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.0941308053656001e-12;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -8.6736173798840355e-19;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 2.2204460492503131e-16;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -1.908332808878111e-14;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.987846675914698e-16;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 8.1093004658611138e-16;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -1.908332808878111e-14;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.987846675914698e-16;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 8.1093004658611138e-16;
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
connectAttr "Psylocke_skinStretchTestSource1.cl" "clipLibrary7.sc[0]";
connectAttr "animCurveTA379.a" "clipLibrary7.cel[0].cev[0].cevr";
connectAttr "animCurveTA380.a" "clipLibrary7.cel[0].cev[1].cevr";
connectAttr "animCurveTA381.a" "clipLibrary7.cel[0].cev[2].cevr";
connectAttr "animCurveTL364.a" "clipLibrary7.cel[0].cev[3].cevr";
connectAttr "animCurveTL365.a" "clipLibrary7.cel[0].cev[4].cevr";
connectAttr "animCurveTL366.a" "clipLibrary7.cel[0].cev[5].cevr";
connectAttr "animCurveTA382.a" "clipLibrary7.cel[0].cev[6].cevr";
connectAttr "animCurveTA383.a" "clipLibrary7.cel[0].cev[7].cevr";
connectAttr "animCurveTA384.a" "clipLibrary7.cel[0].cev[8].cevr";
connectAttr "animCurveTL367.a" "clipLibrary7.cel[0].cev[9].cevr";
connectAttr "animCurveTL368.a" "clipLibrary7.cel[0].cev[10].cevr";
connectAttr "animCurveTL369.a" "clipLibrary7.cel[0].cev[11].cevr";
connectAttr "animCurveTL370.a" "clipLibrary7.cel[0].cev[12].cevr";
connectAttr "animCurveTL371.a" "clipLibrary7.cel[0].cev[13].cevr";
connectAttr "animCurveTL372.a" "clipLibrary7.cel[0].cev[14].cevr";
connectAttr "animCurveTU253.a" "clipLibrary7.cel[0].cev[15].cevr";
connectAttr "animCurveTU254.a" "clipLibrary7.cel[0].cev[16].cevr";
connectAttr "animCurveTU255.a" "clipLibrary7.cel[0].cev[17].cevr";
connectAttr "animCurveTU256.a" "clipLibrary7.cel[0].cev[18].cevr";
connectAttr "animCurveTA385.a" "clipLibrary7.cel[0].cev[19].cevr";
connectAttr "animCurveTA386.a" "clipLibrary7.cel[0].cev[20].cevr";
connectAttr "animCurveTA387.a" "clipLibrary7.cel[0].cev[21].cevr";
connectAttr "animCurveTL373.a" "clipLibrary7.cel[0].cev[22].cevr";
connectAttr "animCurveTL374.a" "clipLibrary7.cel[0].cev[23].cevr";
connectAttr "animCurveTL375.a" "clipLibrary7.cel[0].cev[24].cevr";
connectAttr "animCurveTA388.a" "clipLibrary7.cel[0].cev[25].cevr";
connectAttr "animCurveTA389.a" "clipLibrary7.cel[0].cev[26].cevr";
connectAttr "animCurveTA390.a" "clipLibrary7.cel[0].cev[27].cevr";
connectAttr "animCurveTL376.a" "clipLibrary7.cel[0].cev[28].cevr";
connectAttr "animCurveTL377.a" "clipLibrary7.cel[0].cev[29].cevr";
connectAttr "animCurveTL378.a" "clipLibrary7.cel[0].cev[30].cevr";
connectAttr "animCurveTA391.a" "clipLibrary7.cel[0].cev[31].cevr";
connectAttr "animCurveTA392.a" "clipLibrary7.cel[0].cev[32].cevr";
connectAttr "animCurveTA393.a" "clipLibrary7.cel[0].cev[33].cevr";
connectAttr "animCurveTL379.a" "clipLibrary7.cel[0].cev[34].cevr";
connectAttr "animCurveTL380.a" "clipLibrary7.cel[0].cev[35].cevr";
connectAttr "animCurveTL381.a" "clipLibrary7.cel[0].cev[36].cevr";
connectAttr "animCurveTU257.a" "clipLibrary7.cel[0].cev[37].cevr";
connectAttr "animCurveTU258.a" "clipLibrary7.cel[0].cev[38].cevr";
connectAttr "animCurveTU259.a" "clipLibrary7.cel[0].cev[39].cevr";
connectAttr "animCurveTA394.a" "clipLibrary7.cel[0].cev[40].cevr";
connectAttr "animCurveTA395.a" "clipLibrary7.cel[0].cev[41].cevr";
connectAttr "animCurveTA396.a" "clipLibrary7.cel[0].cev[42].cevr";
connectAttr "animCurveTL382.a" "clipLibrary7.cel[0].cev[43].cevr";
connectAttr "animCurveTL383.a" "clipLibrary7.cel[0].cev[44].cevr";
connectAttr "animCurveTL384.a" "clipLibrary7.cel[0].cev[45].cevr";
connectAttr "animCurveTA397.a" "clipLibrary7.cel[0].cev[46].cevr";
connectAttr "animCurveTA398.a" "clipLibrary7.cel[0].cev[47].cevr";
connectAttr "animCurveTA399.a" "clipLibrary7.cel[0].cev[48].cevr";
connectAttr "animCurveTL385.a" "clipLibrary7.cel[0].cev[49].cevr";
connectAttr "animCurveTL386.a" "clipLibrary7.cel[0].cev[50].cevr";
connectAttr "animCurveTL387.a" "clipLibrary7.cel[0].cev[51].cevr";
connectAttr "animCurveTA400.a" "clipLibrary7.cel[0].cev[52].cevr";
connectAttr "animCurveTA401.a" "clipLibrary7.cel[0].cev[53].cevr";
connectAttr "animCurveTA402.a" "clipLibrary7.cel[0].cev[54].cevr";
connectAttr "animCurveTL388.a" "clipLibrary7.cel[0].cev[55].cevr";
connectAttr "animCurveTL389.a" "clipLibrary7.cel[0].cev[56].cevr";
connectAttr "animCurveTL390.a" "clipLibrary7.cel[0].cev[57].cevr";
connectAttr "animCurveTU260.a" "clipLibrary7.cel[0].cev[58].cevr";
connectAttr "animCurveTU261.a" "clipLibrary7.cel[0].cev[59].cevr";
connectAttr "animCurveTU262.a" "clipLibrary7.cel[0].cev[60].cevr";
connectAttr "animCurveTA403.a" "clipLibrary7.cel[0].cev[61].cevr";
connectAttr "animCurveTA404.a" "clipLibrary7.cel[0].cev[62].cevr";
connectAttr "animCurveTA405.a" "clipLibrary7.cel[0].cev[63].cevr";
connectAttr "animCurveTL391.a" "clipLibrary7.cel[0].cev[64].cevr";
connectAttr "animCurveTL392.a" "clipLibrary7.cel[0].cev[65].cevr";
connectAttr "animCurveTL393.a" "clipLibrary7.cel[0].cev[66].cevr";
connectAttr "animCurveTA406.a" "clipLibrary7.cel[0].cev[67].cevr";
connectAttr "animCurveTA407.a" "clipLibrary7.cel[0].cev[68].cevr";
connectAttr "animCurveTA408.a" "clipLibrary7.cel[0].cev[69].cevr";
connectAttr "animCurveTL394.a" "clipLibrary7.cel[0].cev[70].cevr";
connectAttr "animCurveTL395.a" "clipLibrary7.cel[0].cev[71].cevr";
connectAttr "animCurveTL396.a" "clipLibrary7.cel[0].cev[72].cevr";
connectAttr "animCurveTL397.a" "clipLibrary7.cel[0].cev[73].cevr";
connectAttr "animCurveTL398.a" "clipLibrary7.cel[0].cev[74].cevr";
connectAttr "animCurveTL399.a" "clipLibrary7.cel[0].cev[75].cevr";
connectAttr "animCurveTL400.a" "clipLibrary7.cel[0].cev[79].cevr";
connectAttr "animCurveTL401.a" "clipLibrary7.cel[0].cev[80].cevr";
connectAttr "animCurveTL402.a" "clipLibrary7.cel[0].cev[81].cevr";
connectAttr "animCurveTU263.a" "clipLibrary7.cel[0].cev[91].cevr";
connectAttr "animCurveTU264.a" "clipLibrary7.cel[0].cev[92].cevr";
connectAttr "animCurveTU265.a" "clipLibrary7.cel[0].cev[93].cevr";
connectAttr "animCurveTU266.a" "clipLibrary7.cel[0].cev[94].cevr";
connectAttr "animCurveTU267.a" "clipLibrary7.cel[0].cev[96].cevr";
connectAttr "animCurveTU268.a" "clipLibrary7.cel[0].cev[97].cevr";
connectAttr "animCurveTU269.a" "clipLibrary7.cel[0].cev[98].cevr";
connectAttr "animCurveTU270.a" "clipLibrary7.cel[0].cev[99].cevr";
connectAttr "animCurveTU271.a" "clipLibrary7.cel[0].cev[100].cevr";
connectAttr "animCurveTA409.a" "clipLibrary7.cel[0].cev[101].cevr";
connectAttr "animCurveTA410.a" "clipLibrary7.cel[0].cev[102].cevr";
connectAttr "animCurveTA411.a" "clipLibrary7.cel[0].cev[103].cevr";
connectAttr "animCurveTL403.a" "clipLibrary7.cel[0].cev[104].cevr";
connectAttr "animCurveTL404.a" "clipLibrary7.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary7.cel[0].cev[106].cevr";
connectAttr "animCurveTU272.a" "clipLibrary7.cel[0].cev[119].cevr";
connectAttr "animCurveTU273.a" "clipLibrary7.cel[0].cev[120].cevr";
connectAttr "animCurveTU274.a" "clipLibrary7.cel[0].cev[121].cevr";
connectAttr "animCurveTU275.a" "clipLibrary7.cel[0].cev[122].cevr";
connectAttr "animCurveTU276.a" "clipLibrary7.cel[0].cev[124].cevr";
connectAttr "animCurveTU277.a" "clipLibrary7.cel[0].cev[125].cevr";
connectAttr "animCurveTU278.a" "clipLibrary7.cel[0].cev[126].cevr";
connectAttr "animCurveTU279.a" "clipLibrary7.cel[0].cev[127].cevr";
connectAttr "animCurveTU280.a" "clipLibrary7.cel[0].cev[128].cevr";
connectAttr "animCurveTA412.a" "clipLibrary7.cel[0].cev[129].cevr";
connectAttr "animCurveTA413.a" "clipLibrary7.cel[0].cev[130].cevr";
connectAttr "animCurveTA414.a" "clipLibrary7.cel[0].cev[131].cevr";
connectAttr "animCurveTL406.a" "clipLibrary7.cel[0].cev[132].cevr";
connectAttr "animCurveTL407.a" "clipLibrary7.cel[0].cev[133].cevr";
connectAttr "animCurveTL408.a" "clipLibrary7.cel[0].cev[134].cevr";
connectAttr "animCurveTA415.a" "clipLibrary7.cel[0].cev[141].cevr";
connectAttr "animCurveTA416.a" "clipLibrary7.cel[0].cev[142].cevr";
connectAttr "animCurveTA417.a" "clipLibrary7.cel[0].cev[143].cevr";
connectAttr "animCurveTA418.a" "clipLibrary7.cel[0].cev[144].cevr";
connectAttr "animCurveTA419.a" "clipLibrary7.cel[0].cev[145].cevr";
connectAttr "animCurveTA420.a" "clipLibrary7.cel[0].cev[146].cevr";
// End of te_stretch_Psylocke_A.ma
