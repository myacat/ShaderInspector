Shader "Unlit/IntDraweTest"
{
	Properties
	{
		_IntValue("float Value" , float) = 1
		_IntValue2("Int Value" , int) = 1
		[Int]_IntValue3("float Value" , float) = 1
		[Int]_IntValue4("Int Value" , int) = 1
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100
		Fog {Mode Off}
		Pass
		{

		}
	}
}
