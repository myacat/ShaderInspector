using UnityEngine;
using UnityEditor;
using System;

namespace MyaShaderDrawer
{
    /// <summary>
    /// 在shader Property前面加上[Disable]标签可以使这个Property在inspector中处于灰色禁用状态，禁止编辑；
    /// </summary>
    public class DisableDrawer : MaterialPropertyDrawer
    {
        public override void OnGUI(Rect position, MaterialProperty prop, String label, MaterialEditor editor)
        {
            //EditorGUI.BeginDisabledGroup(true);
            //{
            //    editor.DefaultShaderProperty(position, prop, label);
            //}
            //EditorGUI.EndDisabledGroup();

            //unity建议使用DisabledScope会更安全（然而我并不知道为什么更安全）
            using (new EditorGUI.DisabledScope(true))
            {
                editor.DefaultShaderProperty(position, prop, label);
            }

        }
        public override float GetPropertyHeight(MaterialProperty prop, String label, MaterialEditor editor)
        {
            return MaterialEditor.GetDefaultPropertyHeight(prop);
        }
    }

    /// <summary>
    /// 在shader Property前面加上[Int]标签可以使这个Property在inspector中显示为整型的输入框，输入的值都只能是整数(忽略小数取整)；
    /// </summary>
    public class IntDrawer : MaterialPropertyDrawer
    {
        public override void OnGUI(Rect position, MaterialProperty prop, String label, MaterialEditor editor)
        {
            EditorGUI.BeginChangeCheck();

            int newValue = EditorGUI.IntField(position, label, (int)prop.floatValue);
            if (EditorGUI.EndChangeCheck())
            {
                prop.floatValue = newValue;
            }

        }

    }
}

