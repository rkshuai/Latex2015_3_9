# 文档

详细文档见：[地址](https://gitcafe.com/yangkc/LaTeXTemplateofLZUThesis/raw/master/doc/doc.pdf)。

本模板就是这份文档本身，如果顺利，你应该可以自己编译出一份来。

# 快速开始

本模板已经经过适配，基本可以在不同平台上编译通过。唯一需要注意的问题是字体适配。

在主源文件`tempalte.tex`的导言区可以找到如下命令：

    %\usepackage{winfonts}
    %\usepackage{adobefonts}
    %\usepackage{wenquanfonts}
    \usepackage{macfonts}

请根据自己的平台选择对应的包，并把其他包注释起来。

编译时请使用`xelatex`引擎。

如果遇到任何问题，请先参考文档。
