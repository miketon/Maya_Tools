//Maya ASCII 2010 scene
//Name: te_walk_Psylocke_A.ma
//Last modified: Wed, Jun 16, 2010 6:39:20 PM
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
	setAttr -s 109 ".cel[0].cev";
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
createNode animClip -n "Psylocke_walk_animSource";
	setAttr ".ihi" 0;
	setAttr ".ss" 1;
	setAttr ".se" 32;
	setAttr ".ci" no;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 16 0 32 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 16 0 32 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -0.3 8 -0.3 16 -0.3 24 -0.3 32 -0.3;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 1;
	setAttr -s 6 ".kix[1:5]"  0.36787259578704834 0.4176885187625885 
		0.38628780841827393 0.42380732297897339 0.36863905191421509;
	setAttr -s 6 ".kiy[1:5]"  -0.92987620830535889 0.90859031677246094 
		-0.92237824201583862 0.90575236082077026 -0.9295727014541626;
	setAttr -s 6 ".kox[1:5]"  0.36787265539169312 0.4176885187625885 
		0.38628733158111572 0.42380726337432861 0.36863863468170166;
	setAttr -s 6 ".koy[1:5]"  -0.92987620830535889 0.90859031677246094 
		-0.9223785400390625 0.90575236082077026 -0.92957282066345215;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0 8 -0.2 16 0 24 0.2 32 0;
	setAttr -s 6 ".kit[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kot[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kix[1:5]"  0.7003096342086792 1 0.78365284204483032 
		1 0.69141268730163574;
	setAttr -s 6 ".kiy[1:5]"  -0.71383929252624512 0 0.62119907140731812 
		0 -0.72246009111404419;
	setAttr -s 6 ".kox[1:5]"  0.7003093957901001 1 0.7836529016494751 
		1 0.69141232967376709;
	setAttr -s 6 ".koy[1:5]"  -0.71383947134017944 0 0.62119901180267334 
		0 -0.72246038913726807;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.5;
createNode animCurveTU -n "animCurveTU228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0.2;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0 8 3.0000000000000004 16 0 24 -3.0000000000000004 
		32 0;
	setAttr -s 6 ".kit[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kot[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kix[1:5]"  0.97514784336090088 1 0.97446894645690918 
		1 0.97482186555862427;
	setAttr -s 6 ".kiy[1:5]"  0.22155533730983734 0 -0.22452235221862793 
		0 0.22298499941825867;
	setAttr -s 6 ".kox[1:5]"  0.9751477837562561 1 0.97446894645690918 
		1 0.97482186555862427;
	setAttr -s 6 ".koy[1:5]"  0.22155529260635376 0 -0.22452236711978912 
		0 0.22298498451709747;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 -5 16 5 32 -5;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 8 -14.999999999999998 24 14.999999999999998 
		32 0;
	setAttr -s 5 ".kit[0:4]"  3 1 1 1 1;
	setAttr -s 5 ".kot[0:4]"  3 1 1 1 1;
	setAttr -s 5 ".kix[1:4]"  0.64703077077865601 0.993560791015625 0.98966526985168457 
		0.64620643854141235;
	setAttr -s 5 ".kiy[1:4]"  -0.76246392726898193 -0.11330024152994156 
		0.1433970034122467 -0.76316273212432861;
	setAttr -s 5 ".kox[1:4]"  0.64703088998794556 0.99356085062026978 
		0.98966526985168457 0.64620643854141235;
	setAttr -s 5 ".koy[1:4]"  -0.76246380805969238 -0.11330024152994156 
		0.1433970034122467 -0.76316273212432861;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 5 16 -5 32 5;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 8 0 32 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 0 32 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 0 8 -0.1 16 0 24 0.1 32 0;
	setAttr -s 6 ".kit[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kot[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kix[1:5]"  0.90906572341918945 1 0.92580169439315796 
		1 0.9106099009513855;
	setAttr -s 6 ".kiy[1:5]"  -0.41665270924568176 0 0.37800967693328857 
		0 -0.41326698660850525;
	setAttr -s 6 ".kox[1:5]"  0.90906572341918945 1 0.92580157518386841 
		1 0.91060978174209595;
	setAttr -s 6 ".koy[1:5]"  -0.41665282845497131 0 0.37800991535186768 
		0 -0.41326719522476196;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 1.4756444637808892e-30 1 -10.985590589999999;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.5902773407317584e-15 1 20.17178839 
		16 0.77189013169999998 32 20.17178839;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 1.7655625192200634e-31 1 -15.184221360000002 
		16 -15.184221360000002;
createNode animCurveTU -n "animCurveTU229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU230";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 -0.996 16 0 32 -0.996;
createNode animCurveTU -n "animCurveTU231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.1299600123008406e-29 1 -85 8 -59.999999999999993 
		16 -85 32 -85;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 3.1805546814635168e-15 1 32.136358049999998 
		8 41.457324829999997 16 -4.4386816339999999 32 32.136358049999998;
	setAttr -s 5 ".kit[0:4]"  3 1 1 3 1;
	setAttr -s 5 ".kot[0:4]"  3 1 1 3 1;
	setAttr -s 5 ".kix[1:4]"  0.74061685800552368 0.8481869101524353 
		1 0.73875135183334351;
	setAttr -s 5 ".kiy[1:4]"  0.67192763090133667 -0.52969712018966675 
		0 0.67397809028625488;
	setAttr -s 5 ".kox[1:4]"  0.74061691761016846 0.8481869101524353 
		1 0.73875123262405396;
	setAttr -s 5 ".koy[1:4]"  0.67192763090133667 -0.52969712018966675 
		0 0.67397814989089966;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 6.9926699392056553e-31 32 6.9926699392056553e-31;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.1102230246251565e-16 1 1.6355333329999999 
		16 -0.32428944850000002 32 1.6355333329999999;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.7763568394002505e-15 1 3.0700468430000001 
		8 3.4 16 3.2464789700000001 32 3.0700468430000001;
	setAttr -s 5 ".kit[2:4]"  1 1 3;
	setAttr -s 5 ".kot[2:4]"  1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.91458380222320557 0.71848493814468384 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.40439644455909729 -0.69554251432418823 
		0;
	setAttr -s 5 ".kox[2:4]"  0.91458380222320557 0.71848493814468384 
		1;
	setAttr -s 5 ".koy[2:4]"  0.40439647436141968 -0.69554257392883301 
		0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 2.3115398819999999 16 2.5404015979999999 
		32 2.3115398819999999;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 1 1 1;
	setAttr -s 4 ".kix[1:3]"  0.26947188377380371 0.34796756505966187 
		0.26806405186653137;
	setAttr -s 4 ".kiy[1:3]"  0.96300828456878662 -0.93750661611557007 
		0.96340107917785645;
	setAttr -s 4 ".kox[1:3]"  0.26947185397148132 0.34796759486198425 
		0.26806402206420898;
	setAttr -s 4 ".koy[1:3]"  0.96300828456878662 -0.93750661611557007 
		0.96340107917785645;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.1299600123008406e-29;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.1805546814635168e-15;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6.9926699392056553e-31;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.1102230246251565e-16;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 1.7763568394002505e-15;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -10.985590587921434;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0 16 20.171788387330661 32 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 1 -15.184221363687596;
createNode animCurveTU -n "animCurveTU232";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 1.0044724409448822 16 0 32 1.0044724409448822;
createNode animCurveTU -n "animCurveTU234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 -85 16 -85 24 -59.999999999999993 
		32 -85;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 -2.5444437451708134e-14 1 -4.4386816340320063 
		16 32.136358052005107 32 -4.4386816340320063;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 1 1 1;
	setAttr -s 4 ".kix[1:3]"  0.31972378492355347 0.33424496650695801 
		0.31981766223907471;
	setAttr -s 4 ".kiy[1:3]"  -0.94751083850860596 0.94248628616333008 
		-0.94747912883758545;
	setAttr -s 4 ".kox[1:3]"  0.31972384452819824 0.3342449963092804 
		0.31981772184371948;
	setAttr -s 4 ".koy[1:3]"  -0.94751077890396118 0.94248628616333008 
		-0.94747912883758545;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 32 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0.3242894485062538 16 -1.6355333329999999 
		32 0.3242894485062538;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -3.5527136788005009e-15 1 -3.2464789701412986 
		16 -3.0700468430000001 24 -3.5 32 -3.2464789700000001;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -1 0 1 -2.5404015981836152 8 -1.8517412795694017 
		16 -2.3115398819999999 24 -3.014182708467549 32 -2.5404015979999999;
	setAttr -s 6 ".kit[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kot[1:5]"  1 3 1 3 1;
	setAttr -s 6 ".kix[1:5]"  0.28624489903450012 1 0.37072822451591492 
		1 0.28838002681732178;
	setAttr -s 6 ".kiy[1:5]"  0.9581565260887146 0 -0.928741455078125 
		0 0.95751607418060303;
	setAttr -s 6 ".kox[1:5]"  0.28624489903450012 1 0.37072834372520447 
		1 0.28837999701499939;
	setAttr -s 6 ".koy[1:5]"  0.9581565260887146 0 -0.92874139547348022 
		0 0.95751607418060303;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -2.5444437451708134e-14;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -3.5527136788005009e-15;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 -0.39247891489999998 16 0.1 32 -0.39247891489999998;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0.15 8 0.43984678748766404 32 0.15;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 1 0.1 16 -0.39247891487759951 32 0.1;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0.29996392356641893 16 -0.3 24 0.46511826690190028 
		32 0.3;
	setAttr -s 5 ".kit[1:4]"  1 3 3 1;
	setAttr -s 5 ".kot[1:4]"  1 3 3 1;
	setAttr -s 5 ".kix[1:4]"  0.63310480117797852 1 1 0.63095909357070923;
	setAttr -s 5 ".kiy[1:4]"  -0.77406615018844604 0 0 -0.77581614255905151;
	setAttr -s 5 ".kox[1:4]"  0.63310503959655762 1 1 0.63095927238464355;
	setAttr -s 5 ".koy[1:4]"  -0.77406597137451172 0 0 -0.77581602334976196;
createNode animCurveTU -n "animCurveTU235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.5;
createNode animCurveTU -n "animCurveTU236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 4;
createNode animCurveTU -n "animCurveTU237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6;
createNode animCurveTU -n "animCurveTU238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 90;
createNode animCurveTU -n "animCurveTU239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 16 0 31 2 32 0;
createNode animCurveTU -n "animCurveTU242";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 0 31 0;
createNode animCurveTU -n "animCurveTU243";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.2821611059649799e-14 1 1.2821611059649799e-14 
		8 -5 16 1.2821611059649799e-14 32 1.2821611059649799e-14;
	setAttr -s 5 ".kit[3:4]"  1 3;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kix[3:4]"  0.92471033334732056 1;
	setAttr -s 5 ".kiy[3:4]"  -0.38067153096199036 0;
	setAttr -s 5 ".kox[1:4]"  0.95312982797622681 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0.30256167054176331 0 0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 -6.4356536132738332e-15 1 0 8 63.690403931378185 
		16 6.2865651130000002e-15 32 -6.4356536132738332e-15;
	setAttr -s 5 ".kit[2:4]"  1 1 3;
	setAttr -s 5 ".kot[2:4]"  1 3 3;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kix[2:4]"  0.69519370794296265 0.093411155045032501 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.7188224196434021 0.99562764167785645 
		0;
	setAttr -s 5 ".kox[2:4]"  0.69519364833831787 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.71882247924804688 0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.0172028861385688e-13 1 1.0172028861385688e-13 
		16 1.0172028861385688e-13 32 1.0172028861385688e-13;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 8 1.5698401983617978 16 0 32 -0.0027970873126042235;
	setAttr -s 5 ".kit[3:4]"  1 3;
	setAttr -s 5 ".kot[1:4]"  1 3 3 3;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kix[3:4]"  0.21069300174713135 1;
	setAttr -s 5 ".kiy[3:4]"  0.97755229473114014 0;
	setAttr -s 5 ".kox[1:4]"  0.12392417341470718 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0.99229174852371216 0 0 0;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 1.1102230246251565e-16 1 0 8 -0.5 16 
		0 32 0;
	setAttr -s 5 ".kit[2:4]"  1 1 3;
	setAttr -s 5 ".kot[1:4]"  1 1 3 3;
	setAttr -s 5 ".ktl[1:4]" no yes no yes;
	setAttr -s 5 ".kix[2:4]"  0.8383861780166626 0.33130303025245667 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.54507678747177124 -0.94352442026138306 
		0;
	setAttr -s 5 ".kox[1:4]"  0.50771987438201904 0.8383861780166626 
		1 1;
	setAttr -s 5 ".koy[1:4]"  0.86152225732803345 0.54507672786712646 
		0 0;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 -1.1102230246251565e-16 1 -2.4542706860000001 
		16 2.2625920089593925 32 -2.4542706861643446;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 1 1 1;
	setAttr -s 4 ".kix[1:3]"  0.14236900210380554 0.42834785580635071 
		0.1450875997543335;
	setAttr -s 4 ".kiy[1:3]"  -0.98981368541717529 0.90361398458480835 
		-0.98941886425018311;
	setAttr -s 4 ".kox[1:3]"  0.14236894249916077 0.42834779620170593 
		0.14508762955665588;
	setAttr -s 4 ".koy[1:3]"  -0.98981362581253052 0.90361398458480835 
		-0.98941886425018311;
createNode animCurveTU -n "animCurveTU244";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.5;
createNode animCurveTU -n "animCurveTU245";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 4;
createNode animCurveTU -n "animCurveTU246";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 6;
createNode animCurveTU -n "animCurveTU247";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 -90;
createNode animCurveTU -n "animCurveTU248";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU249";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU250";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 16 2 17 0 32 0;
createNode animCurveTU -n "animCurveTU251";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTU -n "animCurveTU252";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 10;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 1.2722218725854067e-14 16 1.2722218725854067e-14 
		24 -5 32 1.2722218725854067e-14;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[1:3]"  1 3 3;
	setAttr -s 4 ".ktl[1:3]" no yes no;
	setAttr -s 4 ".kix[3]"  0.54585909843444824;
	setAttr -s 4 ".kiy[3]"  -0.83787697553634644;
	setAttr -s 4 ".kox[1:3]"  0.87426096200942993 1 1;
	setAttr -s 4 ".koy[1:3]"  0.48545631766319275 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 6.2865651125802323e-15 1 6.2865651130000002e-15 
		16 0 24 63.690403930000002 32 6.2865651125802323e-15;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 3;
	setAttr -s 5 ".ktl[2:4]" no yes no;
	setAttr -s 5 ".kix[3:4]"  0.58529657125473022 0.12118656188249588;
	setAttr -s 5 ".kiy[3:4]"  -0.81081932783126831 0.9926297664642334;
	setAttr -s 5 ".kox[3:4]"  0.58529669046401978 1;
	setAttr -s 5 ".koy[3:4]"  -0.81081926822662354 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -1 5.3431785055936712e-13 32 5.3431785055936712e-13;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 8.6736173798840355e-19 1 0 16 0 24 -1.5698401980000001 
		32 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[2:4]"  1 3 3;
	setAttr -s 5 ".ktl[2:4]" no yes no;
	setAttr -s 5 ".kix[4]"  0.2114357054233551;
	setAttr -s 5 ".kiy[4]"  -0.97739195823669434;
	setAttr -s 5 ".kox[2:4]"  0.14540876448154449 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.989371657371521 0 0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 0 1 0 14 0 23 0.5 32 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[2:4]"  1 1 3;
	setAttr -s 5 ".ktl[2:4]" no yes no;
	setAttr -s 5 ".kix[3:4]"  0.69718295335769653 0.28048712015151978;
	setAttr -s 5 ".kiy[3:4]"  -0.71689331531524658 0.95985782146453857;
	setAttr -s 5 ".kox[2:4]"  0.56792336702346802 0.69718289375305176 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.82308149337768555 -0.71689337491989136 
		0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 -1.1102230246251565e-16 1 -2.262592009 
		16 2.4542706860000001 32 -2.262592009;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 1 1 1;
	setAttr -s 4 ".kix[1:3]"  0.49352699518203735 0.33008179068565369 
		0.49632391333580017;
	setAttr -s 4 ".kiy[1:3]"  -0.86973047256469727 0.94395238161087036 
		-0.8681374192237854;
	setAttr -s 4 ".kox[1:3]"  0.49352699518203735 0.33008164167404175 
		0.49632400274276733;
	setAttr -s 4 ".koy[1:3]"  -0.86973047256469727 0.94395238161087036 
		-0.86813735961914062;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 3.0897344086351102e-31;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  -1 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -1 3.0897344086351102e-31 1 3.0897344086351102e-31 
		8 -5 24 5 32 3.0897344086351102e-31;
	setAttr -s 5 ".kit[1:4]"  1 3 3 1;
	setAttr -s 5 ".kot[1:4]"  1 3 3 1;
	setAttr -s 5 ".kix[1:4]"  0.91814345121383667 1 1 0.91618949174880981;
	setAttr -s 5 ".kiy[1:4]"  -0.39624825119972229 0 0 -0.40074539184570312;
	setAttr -s 5 ".kox[1:4]"  0.91814339160919189 1 1 0.91618943214416504;
	setAttr -s 5 ".koy[1:4]"  -0.39624831080436707 0 0 -0.4007454514503479;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -1 0 1 0 32 0;
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
connectAttr "Psylocke_walk_animSource.cl" "clipLibrary7.sc[0]";
connectAttr "animCurveTA337.a" "clipLibrary7.cel[0].cev[0].cevr";
connectAttr "animCurveTA338.a" "clipLibrary7.cel[0].cev[1].cevr";
connectAttr "animCurveTA339.a" "clipLibrary7.cel[0].cev[2].cevr";
connectAttr "animCurveTL325.a" "clipLibrary7.cel[0].cev[3].cevr";
connectAttr "animCurveTL326.a" "clipLibrary7.cel[0].cev[4].cevr";
connectAttr "animCurveTL327.a" "clipLibrary7.cel[0].cev[5].cevr";
connectAttr "animCurveTA340.a" "clipLibrary7.cel[0].cev[6].cevr";
connectAttr "animCurveTA341.a" "clipLibrary7.cel[0].cev[7].cevr";
connectAttr "animCurveTA342.a" "clipLibrary7.cel[0].cev[8].cevr";
connectAttr "animCurveTL328.a" "clipLibrary7.cel[0].cev[9].cevr";
connectAttr "animCurveTL329.a" "clipLibrary7.cel[0].cev[10].cevr";
connectAttr "animCurveTL330.a" "clipLibrary7.cel[0].cev[11].cevr";
connectAttr "animCurveTL331.a" "clipLibrary7.cel[0].cev[12].cevr";
connectAttr "animCurveTL332.a" "clipLibrary7.cel[0].cev[13].cevr";
connectAttr "animCurveTL333.a" "clipLibrary7.cel[0].cev[14].cevr";
connectAttr "animCurveTU225.a" "clipLibrary7.cel[0].cev[15].cevr";
connectAttr "animCurveTU226.a" "clipLibrary7.cel[0].cev[16].cevr";
connectAttr "animCurveTU227.a" "clipLibrary7.cel[0].cev[17].cevr";
connectAttr "animCurveTU228.a" "clipLibrary7.cel[0].cev[18].cevr";
connectAttr "animCurveTA343.a" "clipLibrary7.cel[0].cev[19].cevr";
connectAttr "animCurveTA344.a" "clipLibrary7.cel[0].cev[20].cevr";
connectAttr "animCurveTA345.a" "clipLibrary7.cel[0].cev[21].cevr";
connectAttr "animCurveTL334.a" "clipLibrary7.cel[0].cev[22].cevr";
connectAttr "animCurveTL335.a" "clipLibrary7.cel[0].cev[23].cevr";
connectAttr "animCurveTL336.a" "clipLibrary7.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary7.cel[0].cev[25].cevr";
connectAttr "animCurveTA347.a" "clipLibrary7.cel[0].cev[26].cevr";
connectAttr "animCurveTA348.a" "clipLibrary7.cel[0].cev[27].cevr";
connectAttr "animCurveTL337.a" "clipLibrary7.cel[0].cev[28].cevr";
connectAttr "animCurveTL338.a" "clipLibrary7.cel[0].cev[29].cevr";
connectAttr "animCurveTL339.a" "clipLibrary7.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary7.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary7.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary7.cel[0].cev[33].cevr";
connectAttr "animCurveTU229.a" "clipLibrary7.cel[0].cev[37].cevr";
connectAttr "animCurveTU230.a" "clipLibrary7.cel[0].cev[38].cevr";
connectAttr "animCurveTU231.a" "clipLibrary7.cel[0].cev[39].cevr";
connectAttr "animCurveTA352.a" "clipLibrary7.cel[0].cev[40].cevr";
connectAttr "animCurveTA353.a" "clipLibrary7.cel[0].cev[41].cevr";
connectAttr "animCurveTA354.a" "clipLibrary7.cel[0].cev[42].cevr";
connectAttr "animCurveTL340.a" "clipLibrary7.cel[0].cev[43].cevr";
connectAttr "animCurveTL341.a" "clipLibrary7.cel[0].cev[44].cevr";
connectAttr "animCurveTL342.a" "clipLibrary7.cel[0].cev[45].cevr";
connectAttr "animCurveTA355.a" "clipLibrary7.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary7.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary7.cel[0].cev[48].cevr";
connectAttr "animCurveTL343.a" "clipLibrary7.cel[0].cev[49].cevr";
connectAttr "animCurveTL344.a" "clipLibrary7.cel[0].cev[50].cevr";
connectAttr "animCurveTL345.a" "clipLibrary7.cel[0].cev[51].cevr";
connectAttr "animCurveTA358.a" "clipLibrary7.cel[0].cev[52].cevr";
connectAttr "animCurveTA359.a" "clipLibrary7.cel[0].cev[53].cevr";
connectAttr "animCurveTA360.a" "clipLibrary7.cel[0].cev[54].cevr";
connectAttr "animCurveTU232.a" "clipLibrary7.cel[0].cev[58].cevr";
connectAttr "animCurveTU233.a" "clipLibrary7.cel[0].cev[59].cevr";
connectAttr "animCurveTU234.a" "clipLibrary7.cel[0].cev[60].cevr";
connectAttr "animCurveTA361.a" "clipLibrary7.cel[0].cev[61].cevr";
connectAttr "animCurveTA362.a" "clipLibrary7.cel[0].cev[62].cevr";
connectAttr "animCurveTA363.a" "clipLibrary7.cel[0].cev[63].cevr";
connectAttr "animCurveTL346.a" "clipLibrary7.cel[0].cev[64].cevr";
connectAttr "animCurveTL347.a" "clipLibrary7.cel[0].cev[65].cevr";
connectAttr "animCurveTL348.a" "clipLibrary7.cel[0].cev[66].cevr";
connectAttr "animCurveTA364.a" "clipLibrary7.cel[0].cev[67].cevr";
connectAttr "animCurveTA365.a" "clipLibrary7.cel[0].cev[68].cevr";
connectAttr "animCurveTA366.a" "clipLibrary7.cel[0].cev[69].cevr";
connectAttr "animCurveTL349.a" "clipLibrary7.cel[0].cev[70].cevr";
connectAttr "animCurveTL350.a" "clipLibrary7.cel[0].cev[71].cevr";
connectAttr "animCurveTL351.a" "clipLibrary7.cel[0].cev[72].cevr";
connectAttr "animCurveTL352.a" "clipLibrary7.cel[0].cev[73].cevr";
connectAttr "animCurveTL353.a" "clipLibrary7.cel[0].cev[74].cevr";
connectAttr "animCurveTL354.a" "clipLibrary7.cel[0].cev[75].cevr";
connectAttr "animCurveTL355.a" "clipLibrary7.cel[0].cev[79].cevr";
connectAttr "animCurveTL356.a" "clipLibrary7.cel[0].cev[80].cevr";
connectAttr "animCurveTL357.a" "clipLibrary7.cel[0].cev[81].cevr";
connectAttr "animCurveTU235.a" "clipLibrary7.cel[0].cev[91].cevr";
connectAttr "animCurveTU236.a" "clipLibrary7.cel[0].cev[92].cevr";
connectAttr "animCurveTU237.a" "clipLibrary7.cel[0].cev[93].cevr";
connectAttr "animCurveTU238.a" "clipLibrary7.cel[0].cev[94].cevr";
connectAttr "animCurveTU239.a" "clipLibrary7.cel[0].cev[96].cevr";
connectAttr "animCurveTU240.a" "clipLibrary7.cel[0].cev[97].cevr";
connectAttr "animCurveTU241.a" "clipLibrary7.cel[0].cev[98].cevr";
connectAttr "animCurveTU242.a" "clipLibrary7.cel[0].cev[99].cevr";
connectAttr "animCurveTU243.a" "clipLibrary7.cel[0].cev[100].cevr";
connectAttr "animCurveTA367.a" "clipLibrary7.cel[0].cev[101].cevr";
connectAttr "animCurveTA368.a" "clipLibrary7.cel[0].cev[102].cevr";
connectAttr "animCurveTA369.a" "clipLibrary7.cel[0].cev[103].cevr";
connectAttr "animCurveTL358.a" "clipLibrary7.cel[0].cev[104].cevr";
connectAttr "animCurveTL359.a" "clipLibrary7.cel[0].cev[105].cevr";
connectAttr "animCurveTL360.a" "clipLibrary7.cel[0].cev[106].cevr";
connectAttr "animCurveTU244.a" "clipLibrary7.cel[0].cev[119].cevr";
connectAttr "animCurveTU245.a" "clipLibrary7.cel[0].cev[120].cevr";
connectAttr "animCurveTU246.a" "clipLibrary7.cel[0].cev[121].cevr";
connectAttr "animCurveTU247.a" "clipLibrary7.cel[0].cev[122].cevr";
connectAttr "animCurveTU248.a" "clipLibrary7.cel[0].cev[124].cevr";
connectAttr "animCurveTU249.a" "clipLibrary7.cel[0].cev[125].cevr";
connectAttr "animCurveTU250.a" "clipLibrary7.cel[0].cev[126].cevr";
connectAttr "animCurveTU251.a" "clipLibrary7.cel[0].cev[127].cevr";
connectAttr "animCurveTU252.a" "clipLibrary7.cel[0].cev[128].cevr";
connectAttr "animCurveTA370.a" "clipLibrary7.cel[0].cev[129].cevr";
connectAttr "animCurveTA371.a" "clipLibrary7.cel[0].cev[130].cevr";
connectAttr "animCurveTA372.a" "clipLibrary7.cel[0].cev[131].cevr";
connectAttr "animCurveTL361.a" "clipLibrary7.cel[0].cev[132].cevr";
connectAttr "animCurveTL362.a" "clipLibrary7.cel[0].cev[133].cevr";
connectAttr "animCurveTL363.a" "clipLibrary7.cel[0].cev[134].cevr";
connectAttr "animCurveTA373.a" "clipLibrary7.cel[0].cev[141].cevr";
connectAttr "animCurveTA374.a" "clipLibrary7.cel[0].cev[142].cevr";
connectAttr "animCurveTA375.a" "clipLibrary7.cel[0].cev[143].cevr";
connectAttr "animCurveTA376.a" "clipLibrary7.cel[0].cev[144].cevr";
connectAttr "animCurveTA377.a" "clipLibrary7.cel[0].cev[145].cevr";
connectAttr "animCurveTA378.a" "clipLibrary7.cel[0].cev[146].cevr";
// End of te_walk_Psylocke_A.ma
