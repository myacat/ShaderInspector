using UnityEngine;
using UnityEditor;
using System;


public class DisableDrawer : MaterialPropertyDrawer 
{
    public override void OnGUI (Rect position, MaterialProperty prop, String label, MaterialEditor editor)
    {
		EditorGUI.BeginDisabledGroup (true);
		{
			editor.DefaultShaderProperty (position,prop, label);	
		}
		EditorGUI.EndDisabledGroup ();
	}
	public override float GetPropertyHeight(MaterialProperty prop, String label, MaterialEditor editor)
	{
		return MaterialEditor.GetDefaultPropertyHeight (prop);
	}
}
