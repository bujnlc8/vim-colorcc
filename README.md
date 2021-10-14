# 一个有颜色的VIM插件

先上图:

![](https://s3.bmp.ovh/imgs/2021/10/69ee37578068e0cb.jpg)


![](https://s3.bmp.ovh/imgs/2021/10/f84fa991a403c02b.jpg)

## 安装

*   将代码clone到`~/.vim/plugin`下面即可。

OR

*   如果你有安装插件管理工具，比如, `vim-plug`, 可以加入以下行到你的`.vimrc`进行安装

<!---->

    Plug 'bujnlc8/vim-colorcc'

## 命令

* `:Cs + 16进制色值|颜色名称`, 会在屏幕中间显示颜色样式。颜色名称需要在[http://zhongguose.com/](http://zhongguose.com/)存在，可以是中文也可以是拼音。

* `:Ct + [times + [disappear + [size]]]`, 会以色块(size为1)的方式铺满屏幕, 可以接收3个参数: `times`: 循环次数，默认1, `disappear`: 是否自动消失, 1是，0否，默认0, `size`指色块的大小，有四种选择0-3。

* `:Cr + [name]`, 随机从[http://zhongguose.com/](http://zhongguose.com/)选取一个颜色，如果加上了`name`, 会过滤出包含`name`的颜色，再随机选出一个显示。比如`:Cr 黄`会随机显示一个黄色。

* `:Cg + [disappear]`, 以随机大小色块铺满屏幕。可接收一个参数`disappear`:是否自动消失，1是，0否，默认0。


所有的色块可按`z`键进行关闭。
