因为mac上的NSButton有很多属性都需要通过非常多得代码来修改，比如textColor， alignment等。不像iOS可以直接在XIB里改，于是我就把这些属性封装了一下，这样就可以通过直接设置属性来修改了。

主要是用到了runtime里的动态添加属性：
**objc_setAssociatedObject**

使用方法：

导入头文件 

`#import "NSButton+Button.h"`

设置属性

 ```
  _btn.textColor = [NSColor redColor];
  _btn.textAlignment = kTextAlignmentCenter;
 ```
 
 