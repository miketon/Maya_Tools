#pragma language GLSL
#define _nullCOLOR float4(1.0, 1.0, 1.0, 1.0)
#define _nullMAP(color, scalar) ( \
	((color) * (scalar)) + \
	(1.0 - (scalar)) * float4(1.0, 1.0, 1.0, 1.0)\
)	//colorMAP 			= (colorMAP * K_img) + ((1.0 - K_img) * float4(1.0, 1.0, 1.0, 1.0));

////////////////////////////////////////////////////////////////
//////////////////// Untweakables //////////////////////////////
////////////////////////////////////////////////////////////////

float4x4 WorldViewProjXf : WorldViewProjection;
float4x4 WorldXf         : World;
float4x4 WorldIXf        : WorldInverse;
float4x4 WorldITXf       : WorldInverseTranspose;
float4x4 ViewIXf         : ViewInverse;	//
float4x4 ViewXf          : View;
float4x4 ViewITXf        : ViewInverseTranspose;
//float4 	 view_position : ViewPosition;

///////////////////////////////////////////////////////////////
//////////////// Variables & Controls /////////////////////////
///////////////////////////////////////////////////////////////

float4 cDiffuse  : Diffuse  < string UIWidget = "cDiffuse";  > = { 1.0, 0.75, 0.75, 1.0 };
float3 cAmbient  : Ambient  < string UIWidget = "cAmbient";  > = { 0.1, 0.2 , 0.3       };
float3 cSpecular : Specular < string UIWidget = "cSpecular"; > = { 0.5, 0.8 , 1.0       };
float3 cRim      : Diffuse  < string UIWidget = "cRim";      > = { 1.0, 0.5 , 1.0       };

int specExp <  int UIMin = 1; int UIMax = 128; 	> = 16;

float Kd    < float UIMin = 0.0;	float UIMax = 1.0; > = 1.0;
float Ka    < float UIMin = 0.0;	float UIMax = 1.0; > = 1.0;
float Ks    < float UIMin = 0.0;	float UIMax = 1.0; > = 0.5;
float K_rim < float UIMin = 0.0;	float UIMax = 4.0; > = 0.5;

float K_imgCO 	< float UIMin = 0.0;	float UIMax = 1.0; > = 0.0;	//texture map
float K_imgDF 	< float UIMin = 0.0;	float UIMax = 1.0; > = 1.0;	//texture map
float K_imgAM 	< float UIMin = 0.0;	float UIMax = 1.0; > = 1.0;	//texture map
float K_imgRM 	< float UIMin = 0.0;	float UIMax = 1.0; > = 0.0;	//texture map


///////////////////////////////////////////////////////////////
/////////////////// Maps & Samplers ///////////////////////////
///////////////////////////////////////////////////////////////

texture LookUpTexture : Diffuse <
	string ResourceName = "";
	string ResourceType = "2D";
	string UIName       = "Surface Texture (if used)";
>;

sampler2D LookUpSampler = sampler_state {
	Texture   = <LookUpTexture>;
	MinFilter = LinearMipMapLinear;
	MagFilter = Linear;
};

texture ColorTexture : Diffuse <
	string ResourceName = "";
	string ResourceType = "2D";
	string UIName       = "Surface Texture (if used)";
>;

sampler2D ColorSampler = sampler_state {
	Texture   = <ColorTexture>;
	MinFilter = LinearMipMapLinear;
	MagFilter = Linear;
};

///////////////////////////////////////////////////////////////
//////////////// Input & Output Structures ////////////////////
///////////////////////////////////////////////////////////////

struct VS_INPUT
{
	float4 pos    : POSITION0 ;
	float2 tc     : TEXCOORD0 ;
	float3 normal : NORMAL ;
};

struct VS_OUTPUT
{
	float4 pos      : POSITION0 ;
	float2 tc       : TEXCOORD0 ;
	float4 vLight   : TEXCOORD1 ;	//.x = diffuse	.y = specular	.z = rim
	float4 tcLookUp : TEXCOORD2 ;	//mul (ViewXf, float4(normalize(-IN.normal), 0.0)) * 0.5 + 0.5;
};

///////////////////////////////////////////////////////////////
///////////////////// Vertex Shader(s) ////////////////////////
///////////////////////////////////////////////////////////////

VS_OUTPUT vs_main_OG(VS_INPUT IN)
{
	VS_OUTPUT OUT;
	
			//xform to view space and pass TC attr
		float4 wPos = mul (glstate.matrix.program[0], IN.pos);
		float4 pPos = mul (glstate.matrix.mvp, IN.pos);
	OUT.pos    = pPos;
	OUT.tc     = IN.tc;
	OUT.vLight = float4 (IN.normal, 1.0);

		//Build 3x3 to store world inverse
	float3x3 worldIRot;
		worldIRot[0] = glstate.matrix.inverse.program[0][0].xyz;
		worldIRot[1] = glstate.matrix.inverse.program[0][1].xyz;
		worldIRot[2] = glstate.matrix.inverse.program[0][2].xyz;

		//diffuse attenuation
		float3 	lightVec    = normalize (mul(glstate.matrix.inverse.modelview[0], glstate.light[0].position)  - wPos);
		float3 	wNormal     = mul(IN.normal,  worldIRot);
		float 	diffuseAttn = max (0.0, dot( wNormal , lightVec));
	OUT.vLight.x = diffuseAttn;
	
		//specular attenuation
		float3 eyeVec      = normalize( float3 (glstate.matrix.invtrans.modelview[0][3] - wPos).xyz);  //row 4 of invtransposed modelview matrix contains view translation info
		float3 halfVec     = normalize( lightVec + eyeVec);
		float specularAttn = pow ( max(0.0, dot ( wNormal, halfVec )), specExp);
	OUT.vLight.y = saturate (specularAttn);	//How come this has to be resaturated at the pixel level??
		//rim attenuation
		float rimAttn = pow ( dot ( wNormal, eyeVec ), K_rim);
	OUT.vLight.z = rimAttn;

	
	OUT.tcLookUp = mul (ViewXf, float4(normalize(IN.normal), 0.0)) * 0.5 + 0.5;	//why did (x,y.z, 0.0) have to be zero??
	
	return OUT;
}

VS_OUTPUT vs_main_ZB(VS_INPUT IN)
{
	VS_OUTPUT OUT;
	
		//xform to view space and pass TC attr
	OUT.pos      = mul (WorldViewProjXf, IN.pos);
	OUT.tc       = IN.tc;
	OUT.tcLookUp = mul (ViewXf, float4(normalize(IN.normal), 0.0)) * 0.5 + 0.5;	//why did (x,y.z, 0.0) have to be zero??

	return OUT;
}

///////////////////////////////////////////////////////////////
////////////////////// Pixel Shader(s) ////////////////////////
///////////////////////////////////////////////////////////////
float4 ps_main_TEMP(VS_OUTPUT IN): COLOR
{
	float4 lookUpMAP = tex2D(ColorSampler, IN.tc);
		
		float diff = IN.vLight.x;	float spec = saturate(IN.vLight.y);	float rim = saturate(IN.vLight.z);
	float3 diffuse  = saturate ( Kd * cDiffuse.xyz * lookUpMAP.xyz );
	float3 specular = saturate ( Ks * spec * cSpecular);
	float3 ambient  = saturate ( (cAmbient * Ka * lookUpMAP.xyz) );

	return float4 ((specular * diff + ((1.0-diff)*ambient)), 1.0); // (diff * (diffuse + specular) + ((1.0 - diff) * (ambient)), 1.0); 
}


float4 ps_main_OG(VS_OUTPUT IN): COLOR
{
	float4 lookUpMAP = tex2D(ColorSampler, IN.tc);
	//	lookUpMAP	 = _nullMAP(lookUpMAP, K_imgDF);	//uses define instead of function...drawback is that there is no error checking
		
		float diff = IN.vLight.x;	float spec = saturate(IN.vLight.y);	float rim = saturate(IN.vLight.z);
	float3 diffuse  = saturate ( Kd * cDiffuse.xyz * lookUpMAP.xyz );
	float3 specular = saturate ( Ks * spec * cSpecular);
	float3 ambient  = saturate ( (cAmbient * Ka * lookUpMAP.xyz) );

	return float4 (diff * (diffuse + specular) + ((1.0 - diff) * (ambient)), 1.0); // + rimLite), 1.0 );
}

float4 ps_main_TEV(VS_OUTPUT IN): COLOR
{
	float diff = IN.vLight.x;	float spec = saturate(IN.vLight.y);	float rim = saturate(IN.vLight.z);
	float4 colorMAP 	= tex2D(ColorSampler, IN.tc);
		colorMAP      = (colorMAP * K_imgCO) + ((1.0 - K_imgCO) * float4(1.0, 1.0, 1.0, 1.0));	//black n white version of map
		float4 bnwMAP = (0.299 * colorMAP.x + 0.587 * colorMAP.y + 0.194 * colorMAP.z);
		//get lookUp Map and separate into controls for diffuse, ambient and rim
	float4 lookUpMAP 	= tex2D(LookUpSampler, IN.tcLookUp.xy);
		float4 envDIF = (lookUpMAP * K_imgDF) + ((1.0 - K_imgDF) * float4(1.0, 1.0, 1.0, 1.0));
		float4 envAMB = (lookUpMAP * K_imgAM) + ((1.0 - K_imgAM) * float4(1.0, 1.0, 1.0, 1.0));
		float4 envRIM = (lookUpMAP * K_imgRM) + ((1.0 - K_imgRM) * float4(1.0, 1.0, 1.0, 1.0));
	
	float3 specular = saturate ( diff * Ks * spec * cSpecular);
	float3 diffuse  = saturate ( diff * Kd * cDiffuse.xyz * envDIF.xyz );
	float3 ambient  = saturate ( (1.0 - diff) * cAmbient * Ka * envAMB.xyz );
	float3 rimLite  = saturate ( (1.0 - rim) * K_rim * cRim * envRIM.xyz );

	return float4 ( colorMAP.xyz * (diffuse + specular) + (bnwMAP * (ambient + rimLite)), 1.0 );
}

float4 ps_main_lookUpMap(VS_OUTPUT IN): COLOR
{
	float4 lookUpMAP = tex2D(LookUpSampler, IN.tcLookUp.xy);
		//lookUpMAP 	 = (lookUpMAP * K_imgDF) + ((1.0 - K_imgDF) * float4(1.0, 1.0, 1.0, 1.0));
		
	return lookUpMAP;
}

float4 ps_main_colorMap(VS_OUTPUT IN): COLOR
{
	float4 lookUpMAP = tex2D(ColorSampler, IN.tc);
	return lookUpMAP;
}


/////////////////////////////////////////////////////////
// techniques ///////////////////////////////////////////
/////////////////////////////////////////////////////////

technique openGL {
	pass p0 {
		DepthFunc       = LEqual;
		DepthTestEnable = true;
		VertexProgram   = compile vp40 vs_main_OG();
		FragmentProgram = compile fp40 ps_main_OG();
	}
}

technique TEVconcept {
	pass p0 {
		DepthFunc       = LEqual;
		DepthTestEnable = true;
		VertexProgram   = compile vp40 vs_main_OG();
		FragmentProgram = compile fp40 ps_main_TEV();
	}
}

technique lookUpMap {
	pass p0 {
		DepthFunc       = LEqual;
		DepthTestEnable = true;
		VertexProgram   = compile vp40 vs_main_ZB();
		FragmentProgram = compile fp40 ps_main_lookUpMap();
	}
}

technique colorMap {
	pass p0 {
		DepthFunc       = LEqual;
		DepthTestEnable = true;
		VertexProgram   = compile vp40 vs_main_ZB();
		FragmentProgram = compile fp40 ps_main_colorMap();
	}
}
