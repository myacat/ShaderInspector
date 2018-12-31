Shader "Mya/VectorDrawerTest"
{
	Properties
	{

		_MainTex("MainTex" , 2D) = ""{}

		[VectorField(Angle,Flow_U,Flow_V,0)] _VectorValue4("Vector" ,Vector) = (0,0,0,0)


	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
		}
	}
}
