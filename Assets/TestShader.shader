Shader "Mya/TestShader"
{
	Properties
	{
		_MainTex1 ("Texture1", 2D) = "white" {}
		_Color1 ("Color1" , Color) = (1,1,1,1)
		_Float1 ("Float1" , Float) = 0
		_Range1 ("Range1" , Range(0,1)) = 0
		_VetorVal1 ("VectorVal1" , Vector) = (0,0,0,0)

		[Disable]_MainTex2 ("Texture2", 2D) = "white" {}
		[Disable]_Color2 ("Color2" , Color) = (1,1,1,1)	
		[Disable]_Float2 ("Float2" , Float) = 0
		[Disable]_Range2 ("Range2" , Range(0,1)) = 0
		[Disable]_VetorVal2 ("VectorVal2" , Vector) = (0,0,0,0)


	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex 	: POSITION;
				float2 uv 		: TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex 	: SV_POSITION;
				float2 uv 		: TEXCOORD0;
				UNITY_FOG_COORDS(1)
			};

			sampler2D 	_MainTex;
			float4 		_MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}
