//Maya ASCII 2011 scene
//Name: NonCatesian_Mirror_Example.ma
//Last modified: Mon, Aug 08, 2011 11:48:38 AM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 Hotfix 3 x64";
fileInfo "cutIdentifier" "201007130309-777601";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5055339243879524 61.916748539041691 33.595696990763713 ;
	setAttr ".r" -type "double3" -63.938352729604233 -0.20000000000013601 -1.2424117416441818e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 70.635212355957165;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".rp" -type "double3" -6.6247211848061696 0.77030212958636879 -7 ;
	setAttr ".sp" -type "double3" -6.6247211848061696 0.77030212958636879 -7 ;
	setAttr ".dla" yes;
createNode mesh -n "pCubeShape1" -p "pCube1";
	addAttr -ci true -sn "bungie_object_type" -ln "bungie_object_type" -dt "string";
	addAttr -ci true -sn "bungie_object_animates" -ln "bungie_object_animates" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "bungie_object_ID" -ln "bungie_object_ID" -dt "string";
	addAttr -ci true -sn "bungie_mesh_type" -ln "bungie_mesh_type" -dt "string";
	addAttr -ci true -sn "bungie_mesh_global_material" -ln "bungie_mesh_global_material" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_primitive_type" -ln "bungie_mesh_primitive_type" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_tessellation_density" -ln "bungie_mesh_tessellation_density" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_additional_compression" -ln "bungie_mesh_additional_compression" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_use_uncompressed_verts" -ln "bungie_mesh_use_uncompressed_verts" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "halo_export" -ln "halo_export" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.5 0 0.625 
		0 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 
		0.5 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1 0.75 
		0 0.75 0.25 0.125 0 0.25 0 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -6.8273244 0.77030212 -10.579299 
		-7.9064631 0.77030212 -7.4406986 -8.9856014 0.77030212 -4.3020988 -6.8273244 0.77030212 
		-10.579299 -7.9064631 0.77030212 -7.4406986 -8.9856014 0.77030212 -4.3020988 -5.5455828 
		0.77030212 -10.1386 -6.6247211 0.77030212 -7 -7.7038598 0.77030212 -3.8613999 -4.2638407 
		0.77030212 -9.6979008 -5.342979 0.77030212 -6.5593014 -4.2638407 0.77030212 -9.6979008 
		-5.342979 0.77030212 -6.5593014 -5.5455828 0.77030212 -10.1386 -6.6247211 0.77030212 
		-7 -7.7038598 0.77030212 -3.8613999;
	setAttr -s 16 ".vt[0:15]"  -5.1037698 -0.77030212 2.0842783 0 -0.77030212 
		2.0842783 5.1037698 -0.77030212 2.0842783 -5.1037698 0.77030212 2.0842783 0 0.77030212 
		2.0842783 5.1037698 0.77030212 2.0842783 -5.1037698 0.77030212 0 0 0.77030212 0 5.1037698 
		0.77030212 0 -5.1037698 0.77030212 -2.0842783 0 0.77030212 -2.0842783 -5.1037698 
		-0.77030212 -2.0842783 0 -0.77030212 -2.0842783 -5.1037698 -0.77030212 0 0 -0.77030212 
		0 5.1037698 -0.77030212 0;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		3 4 0 4 5 0 6 7 1 7 8 0 
		9 10 0 11 12 0 13 14 1 14 15 0 
		0 3 0 1 4 1 2 5 0 3 6 0 
		4 7 1 5 8 0 6 9 0 7 10 0 
		9 11 0 10 12 0 11 13 0 12 14 0 
		13 0 0 14 1 1 15 2 0 15 8 0 
		13 6 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 11 -3 -11 
		mu 0 4 0 1 4 3 
		f 4 1 12 -4 -12 
		mu 0 4 1 2 5 4 
		f 4 2 14 -5 -14 
		mu 0 4 3 4 7 6 
		f 4 3 15 -6 -15 
		mu 0 4 4 5 8 7 
		f 4 4 17 -7 -17 
		mu 0 4 6 7 10 9 
		f 4 6 19 -8 -19 
		mu 0 4 9 10 12 11 
		f 4 7 21 -9 -21 
		mu 0 4 11 12 14 13 
		f 4 8 23 -1 -23 
		mu 0 4 13 14 17 16 
		f 4 9 24 -2 -24 
		mu 0 4 14 15 18 17 
		f 4 -25 25 -16 -13 
		mu 0 4 2 19 20 5 
		f 4 20 26 16 18 
		mu 0 4 21 22 24 23 
		f 4 22 10 13 -27 
		mu 0 4 22 0 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 3;
	setAttr ".bungie_object_type" -type "string" "_connected_geometry_object_type_mesh";
	setAttr ".bungie_object_ID" -type "string" "9097c81e-c1e6-11e0-9322-20cf3068500b";
	setAttr ".bungie_mesh_type" -type "string" "_connected_geometry_mesh_type_default";
	setAttr ".bungie_mesh_global_material" -type "string" "";
	setAttr ".bungie_mesh_primitive_type" -type "string" "_connected_geometry_primitive_type_none";
	setAttr ".bungie_mesh_tessellation_density" -type "string" "_connected_geometry_mesh_tessellation_density_none";
	setAttr ".bungie_mesh_additional_compression" -type "string" "_connected_geometry_mesh_additional_compression_default";
	setAttr ".halo_export" yes;
createNode transform -n "pCube2";
	setAttr ".rp" -type "double3" 5.8773160187817108 0.77030212958636879 -7 ;
	setAttr ".sp" -type "double3" 5.8773160187817108 0.77030212958636879 -7 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	addAttr -ci true -sn "bungie_object_type" -ln "bungie_object_type" -dt "string";
	addAttr -ci true -sn "bungie_object_animates" -ln "bungie_object_animates" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "bungie_object_ID" -ln "bungie_object_ID" -dt "string";
	addAttr -ci true -sn "bungie_mesh_type" -ln "bungie_mesh_type" -dt "string";
	addAttr -ci true -sn "bungie_mesh_global_material" -ln "bungie_mesh_global_material" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_primitive_type" -ln "bungie_mesh_primitive_type" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_tessellation_density" -ln "bungie_mesh_tessellation_density" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_additional_compression" -ln "bungie_mesh_additional_compression" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_use_uncompressed_verts" -ln "bungie_mesh_use_uncompressed_verts" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "halo_export" -ln "halo_export" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.5 0 0.625 
		0 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 
		0.5 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1 0.75 
		0 0.75 0.25 0.125 0 0.25 0 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  5.6747127 0.77030212 -10.579299 
		4.5955739 0.77030212 -7.4406986 3.5164354 0.77030212 -4.3020988 5.6747127 0.77030212 
		-10.579299 4.5955739 0.77030212 -7.4406986 3.5164354 0.77030212 -4.3020988 6.9564548 
		0.77030212 -10.1386 5.877316 0.77030212 -7 4.7981772 0.77030212 -3.8613999 8.2381964 
		0.77030212 -9.6979008 7.1590581 0.77030212 -6.5593014 8.2381964 0.77030212 -9.6979008 
		7.1590581 0.77030212 -6.5593014 6.9564548 0.77030212 -10.1386 5.877316 0.77030212 
		-7 4.7981772 0.77030212 -3.8613999;
	setAttr -s 16 ".vt[0:15]"  -5.1037698 -0.77030212 2.0842783 0 -0.77030212 
		2.0842783 5.1037698 -0.77030212 2.0842783 -5.1037698 0.77030212 2.0842783 0 0.77030212 
		2.0842783 5.1037698 0.77030212 2.0842783 -5.1037698 0.77030212 0 0 0.77030212 0 5.1037698 
		0.77030212 0 -5.1037698 0.77030212 -2.0842783 0 0.77030212 -2.0842783 -5.1037698 
		-0.77030212 -2.0842783 0 -0.77030212 -2.0842783 -5.1037698 -0.77030212 0 0 -0.77030212 
		0 5.1037698 -0.77030212 0;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		3 4 0 4 5 0 6 7 1 7 8 0 
		9 10 0 11 12 0 13 14 1 14 15 0 
		0 3 0 1 4 1 2 5 0 3 6 0 
		4 7 1 5 8 0 6 9 0 7 10 0 
		9 11 0 10 12 0 11 13 0 12 14 0 
		13 0 0 14 1 1 15 2 0 15 8 0 
		13 6 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 11 -3 -11 
		mu 0 4 0 1 4 3 
		f 4 1 12 -4 -12 
		mu 0 4 1 2 5 4 
		f 4 2 14 -5 -14 
		mu 0 4 3 4 7 6 
		f 4 3 15 -6 -15 
		mu 0 4 4 5 8 7 
		f 4 4 17 -7 -17 
		mu 0 4 6 7 10 9 
		f 4 6 19 -8 -19 
		mu 0 4 9 10 12 11 
		f 4 7 21 -9 -21 
		mu 0 4 11 12 14 13 
		f 4 8 23 -1 -23 
		mu 0 4 13 14 17 16 
		f 4 9 24 -2 -24 
		mu 0 4 14 15 18 17 
		f 4 -25 25 -16 -13 
		mu 0 4 2 19 20 5 
		f 4 20 26 16 18 
		mu 0 4 21 22 24 23 
		f 4 22 10 13 -27 
		mu 0 4 22 0 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 3;
	setAttr ".bungie_object_type" -type "string" "_connected_geometry_object_type_mesh";
	setAttr ".bungie_object_ID" -type "string" "b4832f8f-c1e6-11e0-80af-20cf3068500b";
	setAttr ".bungie_mesh_type" -type "string" "_connected_geometry_mesh_type_default";
	setAttr ".bungie_mesh_global_material" -type "string" "";
	setAttr ".bungie_mesh_primitive_type" -type "string" "_connected_geometry_primitive_type_none";
	setAttr ".bungie_mesh_tessellation_density" -type "string" "_connected_geometry_mesh_tessellation_density_none";
	setAttr ".bungie_mesh_additional_compression" -type "string" "_connected_geometry_mesh_additional_compression_default";
	setAttr ".halo_export" yes;
createNode transform -n "pCube3";
	setAttr ".r" -type "double3" 0 -37.94881856543725 0 ;
	setAttr ".rp" -type "double3" 5.8773160187817108 0.77030212958636879 3 ;
	setAttr ".sp" -type "double3" 5.8773160187817108 0.77030212958636879 3 ;
	setAttr ".dla" yes;
createNode mesh -n "pCubeShape3" -p "pCube3";
	addAttr -ci true -sn "bungie_object_type" -ln "bungie_object_type" -dt "string";
	addAttr -ci true -sn "bungie_object_animates" -ln "bungie_object_animates" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "bungie_object_ID" -ln "bungie_object_ID" -dt "string";
	addAttr -ci true -sn "bungie_mesh_type" -ln "bungie_mesh_type" -dt "string";
	addAttr -ci true -sn "bungie_mesh_global_material" -ln "bungie_mesh_global_material" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_primitive_type" -ln "bungie_mesh_primitive_type" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_tessellation_density" -ln "bungie_mesh_tessellation_density" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_additional_compression" -ln "bungie_mesh_additional_compression" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_use_uncompressed_verts" -ln "bungie_mesh_use_uncompressed_verts" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "halo_export" -ln "halo_export" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.5 0 0.625 
		0 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 
		0.5 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1 0.75 
		0 0.75 0.25 0.125 0 0.25 0 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  5.8773165 0.77030212 3.0000005 
		5.877316 0.77030212 3 5.8773165 0.77030212 2.9999995 5.8773165 0.77030212 3.0000005 
		5.877316 0.77030212 3 5.8773165 0.77030212 2.9999995 5.877316 0.77030212 3.0000005 
		5.877316 0.77030212 3 5.8773155 0.77030212 2.9999993 5.8773155 0.77030212 3.0000007 
		5.877316 0.77030212 3 5.8773155 0.77030212 3.0000007 5.877316 0.77030212 3 5.877316 
		0.77030212 3.0000005 5.877316 0.77030212 3 5.8773155 0.77030212 2.9999993;
	setAttr -s 16 ".vt[0:15]"  -5.1037698 -0.77030212 2.0842783 0 -0.77030212 
		2.0842783 5.1037698 -0.77030212 2.0842783 -5.1037698 0.77030212 2.0842783 0 0.77030212 
		2.0842783 5.1037698 0.77030212 2.0842783 -5.1037698 0.77030212 0 0 0.77030212 0 5.1037698 
		0.77030212 0 -5.1037698 0.77030212 -2.0842783 0 0.77030212 -2.0842783 -5.1037698 
		-0.77030212 -2.0842783 0 -0.77030212 -2.0842783 -5.1037698 -0.77030212 0 0 -0.77030212 
		0 5.1037698 -0.77030212 0;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		3 4 0 4 5 0 6 7 1 7 8 0 
		9 10 0 11 12 0 13 14 1 14 15 0 
		0 3 0 1 4 1 2 5 0 3 6 0 
		4 7 1 5 8 0 6 9 0 7 10 0 
		9 11 0 10 12 0 11 13 0 12 14 0 
		13 0 0 14 1 1 15 2 0 15 8 0 
		13 6 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 11 -3 -11 
		mu 0 4 0 1 4 3 
		f 4 1 12 -4 -12 
		mu 0 4 1 2 5 4 
		f 4 2 14 -5 -14 
		mu 0 4 3 4 7 6 
		f 4 3 15 -6 -15 
		mu 0 4 4 5 8 7 
		f 4 4 17 -7 -17 
		mu 0 4 6 7 10 9 
		f 4 6 19 -8 -19 
		mu 0 4 9 10 12 11 
		f 4 7 21 -9 -21 
		mu 0 4 11 12 14 13 
		f 4 8 23 -1 -23 
		mu 0 4 13 14 17 16 
		f 4 9 24 -2 -24 
		mu 0 4 14 15 18 17 
		f 4 -25 25 -16 -13 
		mu 0 4 2 19 20 5 
		f 4 20 26 16 18 
		mu 0 4 21 22 24 23 
		f 4 22 10 13 -27 
		mu 0 4 22 0 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 3;
	setAttr ".bungie_object_type" -type "string" "_connected_geometry_object_type_mesh";
	setAttr ".bungie_object_ID" -type "string" "ce565c80-c1e6-11e0-972d-20cf3068500b";
	setAttr ".bungie_mesh_type" -type "string" "_connected_geometry_mesh_type_default";
	setAttr ".bungie_mesh_global_material" -type "string" "";
	setAttr ".bungie_mesh_primitive_type" -type "string" "_connected_geometry_primitive_type_none";
	setAttr ".bungie_mesh_tessellation_density" -type "string" "_connected_geometry_mesh_tessellation_density_none";
	setAttr ".bungie_mesh_additional_compression" -type "string" "_connected_geometry_mesh_additional_compression_default";
	setAttr ".halo_export" yes;
createNode transform -n "pCube4";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -6.6247211848061696 0.77030212958636879 12 ;
	setAttr ".sp" -type "double3" -6.6247211848061696 0.77030212958636879 12 ;
	setAttr ".dla" yes;
createNode mesh -n "pCubeShape4" -p "pCube4";
	addAttr -ci true -sn "bungie_object_type" -ln "bungie_object_type" -dt "string";
	addAttr -ci true -sn "bungie_object_animates" -ln "bungie_object_animates" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "bungie_object_ID" -ln "bungie_object_ID" -dt "string";
	addAttr -ci true -sn "bungie_mesh_type" -ln "bungie_mesh_type" -dt "string";
	addAttr -ci true -sn "bungie_mesh_global_material" -ln "bungie_mesh_global_material" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_primitive_type" -ln "bungie_mesh_primitive_type" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_tessellation_density" -ln "bungie_mesh_tessellation_density" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_additional_compression" -ln "bungie_mesh_additional_compression" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_use_uncompressed_verts" -ln "bungie_mesh_use_uncompressed_verts" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "halo_export" -ln "halo_export" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.5 0 0.625 
		0 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 
		0.5 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1 0.75 
		0 0.75 0.25 0.125 0 0.25 0 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -6.8273244 0.77030212 8.420701 
		-7.9064631 0.77030212 11.559301 -8.9856033 0.77030212 14.697902 -6.8273244 0.77030212 
		8.420701 -7.9064631 0.77030212 11.559301 -8.9856033 0.77030212 14.697902 -5.5455828 
		0.77030212 8.8613997 -6.6247211 0.77030212 12 -7.7038598 0.77030212 15.1386 -4.2638397 
		0.77030212 9.3020983 -5.342979 0.77030212 12.440699 -4.2638397 0.77030212 9.3020983 
		-5.342979 0.77030212 12.440699 -5.5455828 0.77030212 8.8613997 -6.6247211 0.77030212 
		12 -7.7038598 0.77030212 15.1386;
	setAttr -s 16 ".vt[0:15]"  -5.1037698 -0.77030212 2.0842783 0 -0.77030212 
		2.0842783 5.1037698 -0.77030212 2.0842783 -5.1037698 0.77030212 2.0842783 0 0.77030212 
		2.0842783 5.1037698 0.77030212 2.0842783 -5.1037698 0.77030212 0 0 0.77030212 0 5.1037698 
		0.77030212 0 -5.1037698 0.77030212 -2.0842783 0 0.77030212 -2.0842783 -5.1037698 
		-0.77030212 -2.0842783 0 -0.77030212 -2.0842783 -5.1037698 -0.77030212 0 0 -0.77030212 
		0 5.1037698 -0.77030212 0;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		3 4 0 4 5 0 6 7 1 7 8 0 
		9 10 0 11 12 0 13 14 1 14 15 0 
		0 3 0 1 4 1 2 5 0 3 6 0 
		4 7 1 5 8 0 6 9 0 7 10 0 
		9 11 0 10 12 0 11 13 0 12 14 0 
		13 0 0 14 1 1 15 2 0 15 8 0 
		13 6 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 11 -3 -11 
		mu 0 4 0 1 4 3 
		f 4 1 12 -4 -12 
		mu 0 4 1 2 5 4 
		f 4 2 14 -5 -14 
		mu 0 4 3 4 7 6 
		f 4 3 15 -6 -15 
		mu 0 4 4 5 8 7 
		f 4 4 17 -7 -17 
		mu 0 4 6 7 10 9 
		f 4 6 19 -8 -19 
		mu 0 4 9 10 12 11 
		f 4 7 21 -9 -21 
		mu 0 4 11 12 14 13 
		f 4 8 23 -1 -23 
		mu 0 4 13 14 17 16 
		f 4 9 24 -2 -24 
		mu 0 4 14 15 18 17 
		f 4 -25 25 -16 -13 
		mu 0 4 2 19 20 5 
		f 4 20 26 16 18 
		mu 0 4 21 22 24 23 
		f 4 22 10 13 -27 
		mu 0 4 22 0 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 3;
	setAttr ".bungie_object_type" -type "string" "_connected_geometry_object_type_mesh";
	setAttr ".bungie_object_ID" -type "string" "d3f93b80-c1e6-11e0-9790-20cf3068500b";
	setAttr ".bungie_mesh_type" -type "string" "_connected_geometry_mesh_type_default";
	setAttr ".bungie_mesh_global_material" -type "string" "";
	setAttr ".bungie_mesh_primitive_type" -type "string" "_connected_geometry_primitive_type_none";
	setAttr ".bungie_mesh_tessellation_density" -type "string" "_connected_geometry_mesh_tessellation_density_none";
	setAttr ".bungie_mesh_additional_compression" -type "string" "_connected_geometry_mesh_additional_compression_default";
	setAttr ".halo_export" yes;
createNode transform -n "pCube5";
	setAttr ".r" -type "double3" 0 -37.94881856543725 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 5.8773160187817099 0.77030212958636879 12 ;
	setAttr ".sp" -type "double3" 5.8773160187817099 0.77030212958636879 12 ;
	setAttr ".dla" yes;
createNode mesh -n "pCubeShape5" -p "pCube5";
	addAttr -ci true -sn "bungie_object_type" -ln "bungie_object_type" -dt "string";
	addAttr -ci true -sn "bungie_object_animates" -ln "bungie_object_animates" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "bungie_object_ID" -ln "bungie_object_ID" -dt "string";
	addAttr -ci true -sn "bungie_mesh_type" -ln "bungie_mesh_type" -dt "string";
	addAttr -ci true -sn "bungie_mesh_global_material" -ln "bungie_mesh_global_material" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_primitive_type" -ln "bungie_mesh_primitive_type" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_tessellation_density" -ln "bungie_mesh_tessellation_density" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_additional_compression" -ln "bungie_mesh_additional_compression" 
		-dt "string";
	addAttr -ci true -sn "bungie_mesh_use_uncompressed_verts" -ln "bungie_mesh_use_uncompressed_verts" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "halo_export" -ln "halo_export" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 25 ".uvst[0].uvsp[0:24]" -type "float2" 0.375 0 0.5 0 0.625 
		0 0.375 0.25 0.5 0.25 0.625 0.25 0.375 0.375 0.5 0.375 0.625 0.375 0.375 0.5 0.5 
		0.5 0.375 0.75 0.5 0.75 0.375 0.875 0.5 0.875 0.625 0.875 0.375 1 0.5 1 0.625 1 0.75 
		0 0.75 0.25 0.125 0 0.25 0 0.125 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  5.877316 0.77030212 12.000001 
		5.877316 0.77030212 12 5.877316 0.77030212 11.999999 5.877316 0.77030212 12.000001 
		5.877316 0.77030212 12 5.877316 0.77030212 11.999999 5.877316 0.77030212 12 5.877316 
		0.77030212 12 5.877316 0.77030212 12 5.877316 0.77030212 12.000001 5.877316 0.77030212 
		12 5.877316 0.77030212 12.000001 5.877316 0.77030212 12 5.877316 0.77030212 12 5.877316 
		0.77030212 12 5.877316 0.77030212 12;
	setAttr -s 16 ".vt[0:15]"  -5.1037698 -0.77030212 2.0842783 0 -0.77030212 
		2.0842783 5.1037698 -0.77030212 2.0842783 -5.1037698 0.77030212 2.0842783 0 0.77030212 
		2.0842783 5.1037698 0.77030212 2.0842783 -5.1037698 0.77030212 0 0 0.77030212 0 5.1037698 
		0.77030212 0 -5.1037698 0.77030212 -2.0842783 0 0.77030212 -2.0842783 -5.1037698 
		-0.77030212 -2.0842783 0 -0.77030212 -2.0842783 -5.1037698 -0.77030212 0 0 -0.77030212 
		0 5.1037698 -0.77030212 0;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 2 0 
		3 4 0 4 5 0 6 7 1 7 8 0 
		9 10 0 11 12 0 13 14 1 14 15 0 
		0 3 0 1 4 1 2 5 0 3 6 0 
		4 7 1 5 8 0 6 9 0 7 10 0 
		9 11 0 10 12 0 11 13 0 12 14 0 
		13 0 0 14 1 1 15 2 0 15 8 0 
		13 6 1;
	setAttr -s 12 ".fc[0:11]" -type "polyFaces" 
		f 4 0 11 -3 -11 
		mu 0 4 0 1 4 3 
		f 4 1 12 -4 -12 
		mu 0 4 1 2 5 4 
		f 4 2 14 -5 -14 
		mu 0 4 3 4 7 6 
		f 4 3 15 -6 -15 
		mu 0 4 4 5 8 7 
		f 4 4 17 -7 -17 
		mu 0 4 6 7 10 9 
		f 4 6 19 -8 -19 
		mu 0 4 9 10 12 11 
		f 4 7 21 -9 -21 
		mu 0 4 11 12 14 13 
		f 4 8 23 -1 -23 
		mu 0 4 13 14 17 16 
		f 4 9 24 -2 -24 
		mu 0 4 14 15 18 17 
		f 4 -25 25 -16 -13 
		mu 0 4 2 19 20 5 
		f 4 20 26 16 18 
		mu 0 4 21 22 24 23 
		f 4 22 10 13 -27 
		mu 0 4 22 0 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 3;
	setAttr ".bungie_object_type" -type "string" "_connected_geometry_object_type_mesh";
	setAttr ".bungie_object_ID" -type "string" "d3fa7400-c1e6-11e0-aa80-20cf3068500b";
	setAttr ".bungie_mesh_type" -type "string" "_connected_geometry_mesh_type_default";
	setAttr ".bungie_mesh_global_material" -type "string" "";
	setAttr ".bungie_mesh_primitive_type" -type "string" "_connected_geometry_primitive_type_none";
	setAttr ".bungie_mesh_tessellation_density" -type "string" "_connected_geometry_mesh_tessellation_density_none";
	setAttr ".bungie_mesh_additional_compression" -type "string" "_connected_geometry_mesh_additional_compression_default";
	setAttr ".halo_export" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 3 -max 26 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
// End of NonCatesian_Mirror_Example.ma
