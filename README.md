ShaderInspector
===========================
一些对unity Shader GUI对拓展方法

****

## 目录

* [在面板上禁用属性](#在面板上禁用属性)	

## 在面板上禁用属性

在项目开发中，为了使shader更灵活，会把很多变量暴露在材质面板上，让美术可以很方便的对材质进行调整，但有一些属性我们并不希望美术修改它，通常我们会在Properties里对应但属性前面加上[HideInInspector]使这个属性不显示，但有时候我们又希望能在面板上看到这个属性，所以我拓展了一个MaterialPropertyDrawer来实现这个效果。

材质面板的显示效果：

![](https://github.com/myacat/ShaderInspector/blob/master/Readme/InspectorPreview.png "材质面板的显示效果")

只需要如下图所示在Shader Properties相应属性前面加上[Disable]就可以了：

![](https://github.com/myacat/ShaderInspector/blob/master/Readme/Usage.png "使用方法")

仅仅只是禁止在面板上修改，使用在c#脚本里赋值是不受影响的：

![](https://github.com/myacat/ShaderInspector/blob/master/Readme/PreviewGif.gif )