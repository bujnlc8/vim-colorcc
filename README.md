# 一个有颜色的VIM插件

先上图:

随机色块铺满屏幕:
![](https://s3.bmp.ovh/imgs/2021/10/f84fa991a403c02b.jpg)


所有的青色:
![](https://s3.bmp.ovh/imgs/2021/10/72cc3d9a2ff864a5.jpg)

## 安装

*   将本项目clone到`~/.vim/plugin`下面即可。

OR

*   如果你有安装插件管理工具，比如， `vim-plug`， 可以加入以下行到你的`.vimrc`进行安装

<!---->

    Plug 'bujnlc8/vim-colorcc'


## 选项

* `let g:color_show_hex=1`， 是否显示16进制色值，默认1。

* `let g:color_show_name=1`， 是否显示颜色名称，默认1。

* `let g:color_switch_timeout = 5`, 循环显示时，切换的时间间隔，默认为5s。

## 命令

* `:Cs + 16进制色值|颜色名称`， 会在屏幕中间显示颜色样式。另一个参数颜色名称可以是中文也可以是拼音。

* `:Ct + [times + [disappear + [size + [color]]]]`， 会以色块(size为1)的方式铺满屏幕， 可以接收4个参数: `times` 循环次数，默认1；`disappear` 是否自动消失， 1是，0否，默认0；`size` 色块的大小，有四种选择0-3； `color`， 如果指定颜色，会以该颜色铺满，否则以随机颜色铺满。

* `:Cr + [name + [num + [forcefull]]]`， 如果未指定参数，会随机从色彩库中选取一个颜色，如果加上了`name`， 会过滤出包含`name`的颜色，再随机显示。比如`:Cr 黄`会随机显示所有黄色。如果加上`num`会随机显示`num`个包含`name`的颜色，如果`num`小于`0`，会随机显示所有。如果`forcefull`参数为1，色块不够时会循环显示直到铺满屏幕，默认为1。

* `:Cg + [disappear]`， 以随机大小色块铺满屏幕。可接收一个参数`disappear`:是否自动消失，1是，0否，默认0。


所有的色块可按`z`键进行关闭。

色彩值来自[http://zhongguose.com/](http://zhongguose.com/) 和 [https://peiseka.com/zhongguochuantongse.html](https://peiseka.com/zhongguochuantongse.html)， 共计1115种。
