using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class SetMaterial : MonoBehaviour 
{
	//public propertyName
	public Texture 	_tex 		= null;
	public Color 	_color 		= Color.white;
	public float 	_float 		= 0;
	[Range(0,1)]
	public float 	_range 		= 0;
	public Vector4 	_vectorVal 	= Vector4.zero;

	Material 		mat;

	void Start () 
	{
		mat = GetComponent<Renderer>().sharedMaterial;
	}

	void Update () 
	{
		#if UNITY_EDITOR
			mat.SetTexture("_MainTex1",_tex);
			mat.SetTexture("_MainTex2",_tex);
			mat.SetColor("_Color1" , _color);
			mat.SetColor("_Color2" , _color);
			mat.SetFloat("_Float1" , _float);
			mat.SetFloat("_Float2" , _float);
			mat.SetFloat("_Range1" , _range);
			mat.SetFloat("_Range2" , _range);
			mat.SetVector("_VetorVal1" , _vectorVal);
			mat.SetVector("_VetorVal2" , _vectorVal);
		#endif	
	}
}
