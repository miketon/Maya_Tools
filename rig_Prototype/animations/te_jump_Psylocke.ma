//Maya ASCII 2010 scene
//Name: te_jump_Psylocke.ma
//Last modified: Wed, Jun 16, 2010 1:27:51 PM
//Codeset: UTF-8
requires maya "2010";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2010";
fileInfo "version" "2010";
fileInfo "cutIdentifier" "200907280341-756013";
fileInfo "osv" "Mac OS X 10.5.8";
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 109 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 115 "cnt_charRoot.rotateZ" 2 
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
		1 35 "jStick_L_wrist.translateX" 1 36 "jStick_R_wrist.translateZ" 
		1 37 "jStick_R_wrist.translateY" 1 38 "jStick_R_wrist.translateX" 
		1 39 "cnt_L_foot_Group.__rollTOE_OFFSET" 0 11 "cnt_L_foot_Group.__rollANKLE_OFFSET" 
		0 12 "cnt_L_foot_Group.__rollHEEL_OFFSET" 0 13 "cnt_L_foot_Group.__KneeTWIST_OFFSET" 
		0 14 "cnt_L_foot_Group.FootLean" 0 15 "cnt_L_foot_Group.ToeTwist" 
		0 16 "cnt_L_foot_Group.Roll" 0 17 "cnt_L_foot_Group.KneeTwist" 
		0 18 "cnt_L_foot_Group.ikBlend" 0 19 "cnt_L_foot_Group.rotateZ" 
		2 31 "cnt_L_foot_Group.rotateY" 2 32 "cnt_L_foot_Group.rotateX" 
		2 33 "cnt_L_foot_Group.translateZ" 1 40 "cnt_L_foot_Group.translateY" 
		1 41 "cnt_L_foot_Group.translateX" 1 42 "cnt_R_foot_Group.__rollTOE_OFFSET" 
		0 20 "cnt_R_foot_Group.__rollANKLE_OFFSET" 0 21 "cnt_R_foot_Group.__rollHEEL_OFFSET" 
		0 22 "cnt_R_foot_Group.__KneeTWIST_OFFSET" 0 23 "cnt_R_foot_Group.FootLean" 
		0 24 "cnt_R_foot_Group.ToeTwist" 0 25 "cnt_R_foot_Group.Roll" 0 
		26 "cnt_R_foot_Group.KneeTwist" 0 27 "cnt_R_foot_Group.ikBlend" 0 
		28 "cnt_R_foot_Group.rotateZ" 2 34 "cnt_R_foot_Group.rotateY" 2 
		35 "cnt_R_foot_Group.rotateX" 2 36 "cnt_R_foot_Group.translateZ" 1 
		43 "cnt_R_foot_Group.translateY" 1 44 "cnt_R_foot_Group.translateX" 
		1 45 "cnt_Neck_1_Loc.rotateZ" 2 37 "cnt_Neck_1_Loc.rotateY" 2 
		38 "cnt_Neck_1_Loc.rotateX" 2 39 "cnt_Head_1_Loc.rotateZ" 2 40 "cnt_Head_1_Loc.rotateY" 
		2 41 "cnt_Head_1_Loc.rotateX" 2 42  ;
	setAttr ".cd[0].cim" -type "Int32Array" 115 0 1 2 3 4
		 5 6 7 8 9 10 11 12 13 14 15 16
		 17 18 19 20 21 22 23 24 25 26 27 28
		 29 30 31 32 33 34 35 36 37 38 39 40
		 41 42 43 44 45 46 47 48 49 50 51 52
		 53 54 55 56 57 58 59 60 61 62 63 64
		 65 66 67 68 69 70 71 72 73 74 75 76
		 77 78 79 80 81 82 83 84 85 86 87 88
		 89 90 91 92 93 94 95 96 97 98 99 100
		 101 102 103 104 105 106 107 108 109 110 111 112
		 113 114 ;
createNode animClip -n "Psylocke_jump_animSource";
	setAttr ".ihi" 0;
	setAttr ".ss" 1;
	setAttr ".se" 32;
	setAttr ".ci" no;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -16.788559366170993 8 0 20 0 28 
		0 32 -16.788559370000002;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -52.63567260796291 8 0 20 0 28 0 
		32 -52.63567261;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 23.265721934229216 8 0 28 -360 29 
		0 32 23.265721930000002;
	setAttr -s 6 ".kit[2:5]"  1 1 3 3;
	setAttr -s 6 ".kot[2:5]"  1 1 3 3;
	setAttr -s 6 ".kix[2:5]"  0.12632860243320465 0.16687197983264923 
		1 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99198848009109497 0.98597860336303711 
		0 0;
	setAttr -s 6 ".kox[2:5]"  0.12632864713668823 0.1668720543384552 
		1 1;
	setAttr -s 6 ".koy[2:5]"  -0.99198848009109497 0.98597860336303711 
		0 0;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -1.0147978513203177 8 -1.0147978513203177 
		28 -1.014797851 32 -1.014797851;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -2.15 8 -4.7659370508271115 20 12.276420453086381 
		28 -2.15 32 -2.15;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.26742365956306458 0.084064386785030365 
		0.026306712999939919 0.050446182489395142 0.2660624086856842;
	setAttr -s 6 ".kiy[1:5]"  0.96357905864715576 -0.99646031856536865 
		-0.99965393543243408 0.99872678518295288 0.96395581960678101;
	setAttr -s 6 ".kox[1:5]"  0.26742354035377502 0.084064371883869171 
		0.026306703686714172 0.050446182489395142 0.26606234908103943;
	setAttr -s 6 ".koy[1:5]"  0.96357905864715576 -0.99646037817001343 
		-0.99965393543243408 0.99872678518295288 0.96395581960678101;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0.16811971447697438 8 0.16811971447697438 
		32 0.16811971447697438;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.5 1 0.5;
createNode animCurveTU -n "animCurveTU172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0.2 1 0.2;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 19.297 8 0 16 0 28 0 32 19.297;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -15.635999999999997 8 0 16 0 28 
		0 32 -15.635999999999997;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -8.797 8 0 16 0 28 0 32 -8.797;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 8 0 16 0;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 8 0 16 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 8 0 16 0 32 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 1;
	setAttr -s 3 ".kix[1:2]"  0.82012975215911865 0.81643408536911011;
	setAttr -s 3 ".kiy[1:2]"  0.5721777081489563 0.5774385929107666;
	setAttr -s 3 ".kox[1:2]"  0.82012975215911865 0.81643426418304443;
	setAttr -s 3 ".koy[1:2]"  0.57217758893966675 0.57743847370147705;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.1 32 0.1;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.4756444637808892e-30 1 0.6705941677432895 
		32 0.67059416770000002;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.5902773407317584e-15 1 -16.285522567929249 
		32 -16.285522570000001;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.7655625192200634e-31 1 23.392492211172453 
		32 23.39249221;
createNode animCurveTU -n "animCurveTU173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 10 8 0 28 0 32 10;
createNode animCurveTU -n "animCurveTU174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -5 8 0;
createNode animCurveTU -n "animCurveTU175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.1299600123008406e-29 1 57.520686893547271 
		8 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 3.1805546814635168e-15 1 3.3880501571929456 
		8 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 6.9926699392056553e-31 1 87.845565978983146 
		8 0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.1102230246251565e-16 1 0.57954519068744725 
		8 0 32 0.57954519069999999;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.7763568394002505e-15 1 0.03547702737133817 
		8 0 32 0.035477027369999997;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 1;
	setAttr -s 4 ".kix[1:3]"  0.35074493288993835 1 0.35154488682746887;
	setAttr -s 4 ".kiy[1:3]"  0.93647104501724243 0 0.93617105484008789;
	setAttr -s 4 ".kox[1:3]"  0.35074499249458313 1 0.35154491662979126;
	setAttr -s 4 ".koy[1:3]"  0.93647104501724243 0 0.93617105484008789;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0.48483451999313887 8 0 32 0.48483451999999999;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.1299600123008406e-29 1 86.426200129037355 
		32 86.426200129999998;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 3.1805546814635168e-15 1 17.68754815389379 
		32 17.687548154393227;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 1;
	setAttr -s 3 ".kix[1:2]"  0.61988043785095215 0.62000143527984619;
	setAttr -s 3 ".kiy[1:2]"  -0.78469628095626831 -0.78460073471069336;
	setAttr -s 3 ".kox[1:2]"  0.61988043785095215 0.62000143527984619;
	setAttr -s 3 ".koy[1:2]"  -0.78469628095626831 -0.78460073471069336;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 6.9926699392056553e-31 1 163.76133577965996 
		32 163.76133580000001;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.1102230246251565e-16 1 3 32 3;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".ktl[1:2]" no no;
	setAttr -s 3 ".kix[2]"  0.20244763791561127;
	setAttr -s 3 ".kiy[2]"  -0.9792931079864502;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.7763568394002505e-15 1 2 32 2;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".ktl[1:2]" no no;
	setAttr -s 3 ".kix[2]"  0.13894864916801453;
	setAttr -s 3 ".kiy[2]"  -0.99029964208602905;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 3.5 32 3.5;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".ktl[2]" no;
	setAttr -s 3 ".kix[2]"  0.26517555117607117;
	setAttr -s 3 ".kiy[2]"  -0.96420019865036011;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -2.2065604893169652 32 -2.2065604890000001;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -17.037035513445094 32 -17.037035509999999;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -28.649855287012656 32 -28.649855290000005;
createNode animCurveTU -n "animCurveTU176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 10 8 0 28 0 32 10;
createNode animCurveTU -n "animCurveTU177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 3.2 8 0;
createNode animCurveTU -n "animCurveTU178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -55.165490257931623 8 0;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -2.5444437451708134e-14 1 40.755066466870446 
		8 0;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 109.8073423182197 8 0 28 0 32 109.8073423;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -0.3 8 0 28 0 32 -0.3;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -3.5527136788005009e-15 1 -2.3 8 0 28 
		0 32 -2.3;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -2.8371951219512193 8 0 28 0 32 
		-2.8371951219512193;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -21.246901100490462 32 -21.246901100490462;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 1;
	setAttr -s 3 ".kix[1:2]"  0.62032002210617065 0.62169915437698364;
	setAttr -s 3 ".kiy[1:2]"  -0.78434878587722778 -0.78325611352920532;
	setAttr -s 3 ".kox[1:2]"  0.62032008171081543 0.62169909477233887;
	setAttr -s 3 ".koy[1:2]"  -0.78434878587722778 -0.7832561731338501;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -2.5444437451708134e-14 1 -18.463869348155566 
		32 -18.463869348155566;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 169.43662675540818 32 169.4366268;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 1.6187086941486943 32 1.6187086941486943;
	setAttr -s 3 ".ktl[1:2]" no no;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -3.5527136788005009e-15 1 -5.0956792728502585 
		32 -5.0956792728502585;
	setAttr -s 3 ".ktl[1:2]" no no;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -5 32 -5;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".ktl[1:2]" no no;
	setAttr -s 3 ".kix[2]"  0.20339491963386536;
	setAttr -s 3 ".kiy[2]"  -0.97909677028656006;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.12186865917831181 32 0.12186865917831181;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.35255545174581215 32 0.35255545174581215;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 1;
	setAttr -s 3 ".kix[1:2]"  0.82191622257232666 0.82153207063674927;
	setAttr -s 3 ".kiy[1:2]"  -0.56960839033126831 -0.57016229629516602;
	setAttr -s 3 ".kox[1:2]"  0.82191622257232666 0.82153207063674927;
	setAttr -s 3 ".koy[1:2]"  -0.56960839033126831 -0.57016241550445557;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0.39347879450862167 32 0.39347879450862167;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 1 32 1;
createNode animCurveTU -n "animCurveTU179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 3.5 1 3.5;
createNode animCurveTU -n "animCurveTU180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 4 1 4;
createNode animCurveTU -n "animCurveTU181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6 1 6;
createNode animCurveTU -n "animCurveTU182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 90 1 90;
createNode animCurveTU -n "animCurveTU183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 10 8 0 32 10;
createNode animCurveTU -n "animCurveTU184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 5.4 8 0 32 5.4;
createNode animCurveTU -n "animCurveTU185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 1.73717771137504 8 0 32 1.737177711;
	setAttr -s 4 ".kot[1:3]"  1 3 3;
	setAttr -s 4 ".ktl[1:3]" no yes yes;
	setAttr -s 4 ".kox[1:3]"  0.10434772819280624 1 1;
	setAttr -s 4 ".koy[1:3]"  0.99454087018966675 0 0;
createNode animCurveTU -n "animCurveTU186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 2.6 8 0 32 2.6;
createNode animCurveTU -n "animCurveTU187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.2821611059649799e-14 1 -33.291584619083999 
		8 0 28 0 32 -33.291584620000002;
	setAttr -s 5 ".kit[1:4]"  1 3 3 3;
	setAttr -s 5 ".kix[1:4]"  0.92471033334732056 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  -0.38067153096199036 0 0 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 -6.4356536132738332e-15 1 0 28 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.093411155045032501 1;
	setAttr -s 3 ".kiy[1:2]"  0.99562764167785645 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.0172028861385688e-13 1 0 28 0;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0.0031689768344033997 8 0 28 0 32 
		0.0031689768340000001;
	setAttr -s 5 ".kit[1:4]"  1 3 3 3;
	setAttr -s 5 ".kix[1:4]"  0.21069300174713135 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0.97755229473114014 0 0 0;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.1102230246251565e-16 1 1.123681668997528 
		8 0 28 0 32 1.123681669;
	setAttr -s 5 ".kit[1:4]"  1 3 3 3;
	setAttr -s 5 ".kix[1:4]"  0.33130303025245667 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  -0.94352442026138306 0 0 0;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -1.1102230246251565e-16 1 4.3314306420293525 
		8 0 28 0 32 4.3314306419999999;
	setAttr -s 5 ".kit[1:4]"  1 3 3 3;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".kix[1:4]"  0.42834785580635071 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0.90361398458480835 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0.42834779620170593 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0.90361398458480835 0 0 0;
createNode animCurveTU -n "animCurveTU188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 3.5 1 3.5;
createNode animCurveTU -n "animCurveTU189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 4 1 4;
createNode animCurveTU -n "animCurveTU190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6 1 6;
createNode animCurveTU -n "animCurveTU191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 90 1 90;
createNode animCurveTU -n "animCurveTU192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTU -n "animCurveTU194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 0;
createNode animCurveTU -n "animCurveTU196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 10 1 10;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.2722218725854067e-14 1 60.520441935590107 
		8 0 28 0 32 60.520441939999998;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".kox[1:4]"  0.87426096200942993 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0.48545631766319275 0 0 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 6.2865651125802323e-15 1 0 28 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 5.3431785055936712e-13 1 5.3431785055936712e-13 
		28 5.3431785055936712e-13;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 8.6736173798840355e-19 1 0.0020870836452411348 
		8 0 28 0 32 0.002087083645;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".kox[1:4]"  0.14540876448154449 1 1 1;
	setAttr -s 5 ".koy[1:4]"  -0.989371657371521 0 0 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0.22671022153935921 8 0 28 0 32 
		0.2267102215;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -1.1102230246251565e-16 1 3.2304409612934708 
		8 0 28 0 32 3.2304409610000002;
	setAttr -s 5 ".kit[1:4]"  1 3 3 3;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".kix[1:4]"  0.33008179068565369 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0.94395238161087036 0 0 0;
	setAttr -s 5 ".kox[1:4]"  0.33008164167404175 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0.94395238161087036 0 0 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.0897344086351102e-31;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 7.5417098372040225;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 3.0897344086351102e-31 1 0.71831466233088692 
		32 0.71831466233088692;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 -8.119710814294228 32 -8.119710814294228;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 51.872862053159153 32 51.872862053159153;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 2;
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
connectAttr "Psylocke_jump_animSource.cl" "clipLibrary4.sc[0]";
connectAttr "animCurveTA253.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTA254.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTA255.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL247.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL248.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTL249.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTA256.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTA257.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTA258.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTL250.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTL251.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTL252.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTL253.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTL254.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTL255.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTU169.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTU170.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTU171.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTU172.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTA259.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTA260.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTA261.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL256.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTL257.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTL258.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA262.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTA263.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTA264.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL259.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTL260.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTL261.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA265.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA266.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA267.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTU173.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTU174.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTU175.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA268.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA269.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA270.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL262.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL263.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL264.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTA271.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA272.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA273.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL265.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL266.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL267.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA274.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA275.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA276.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTU176.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTU177.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTU178.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA277.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA278.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA279.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTL268.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTL269.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTL270.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA280.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA281.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA282.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTL271.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTL272.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTL273.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTL274.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTL275.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTL276.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL277.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL278.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL279.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTU179.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTU180.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTU181.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTU182.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTU183.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTU184.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTU185.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTU186.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTU187.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTA283.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTA284.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTA285.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTL280.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTL281.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTL282.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTU188.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTU189.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTU190.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTU191.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTU192.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTU193.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTU194.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTU195.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTU196.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA286.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA287.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA288.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL283.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL284.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL285.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA289.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA290.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA291.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA292.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA293.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA294.a" "clipLibrary4.cel[0].cev[114].cevr";
// End of te_jump_Psylocke.ma
