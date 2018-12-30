Shader "Unlit/IntDraweTest"
{
	Properties
	{

		[PowerSlider(3)]_IntValue("float Value" , Range(0,10)) = 1
				[VectorField(asdsd,bbbbbasdsadb,cccc,30)]_VectorValue("Vector" ,Vector) = (0,0,0,0)

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
