ouvimrc
=======
## 前话
想要真真地学会如何使用Vim，你至少要学会如何配置合适自己的一套Vim的开发环境，因此非常强烈地推荐大家先去阅读下面这些文章,了解并入门Vim的插件管理的机制还有`.vimrc`的管理。
- [谁说Vim不是IDE(1)](http://www.cnblogs.com/chijianqiang/archive/2012/10/30/vim-1.html)
- [谁说Vim不是IDE(2)](http://www.cnblogs.com/chijianqiang/archive/2012/10/31/vim-2.html)
- [谁说Vim不是IDE(3)](http://www.cnblogs.com/chijianqiang/archive/2012/11/06/vim-3.html)
- [谁说Vim不是IDE(4)](http://www.cnblogs.com/chijianqiang/archive/2012/12/17/vim-4.html)

这是属于非常符合我个人三观的一份Vim的配置文件，如果你喜欢的话，非常地欢迎你使用这一份Vim的配置文件，配置完毕后的显示效果大概如下：
![效果图](https://github.com/jusonalien/ourvim/blob/master/la.png)

## 安装步骤

- **0.**免责声明，使用这个脚本所带来的一切后果本人无任何责任。
- **1.**先将`my_vim.sh`放置在主文件夹下面
- **2.**为这个`shel`脚本文件赋予可执行的权限，运行如下指令：
```
chmod +x my_vim.sh
```
- **3.**最后执行这脚本，运行如下指令:
```
./my_vim.sh
```
- **4.**网速好一点的话二十分钟左右，差一点的话可能半个小时了，毕竟是托管在github上，有时候网速啥的大家都懂。
 
## 一些Feature
- 主题颜色使用是[solarzed主题](https://github.com/altercation/vim-colors-solarized)
- 下面的那些好看的状态栏使用的是[powerline](http://vimawesome.com/plugin/vim-powerline-love-story)插件
- 支持C/C++, Python,SQL语法的提示
- 支持一件编译源文件(单文件编译)
- 除了Vundle插件外，其余的插件全部都用Vundle来安装管理，需要安装删除一些插件的话就只需要在`.vimrc`里面修改增加即可

## 所使用的插件介绍
- Vim的杀手级插件：[Vundle](http://vimawesome.com/plugin/vundle-vim),管理插件插件
- 好看的状态条：[powerline](http://vimawesome.com/plugin/vim-powerline-love-story)
- 代码提示的插件，装了这个后就堪比IDE了：[YouCompleteMe](http://vimawesome.com/plugin/youcompleteme)
- 目录树插件: [The Nerd Tree](http://vimawesome.com/plugin/the-nerd-tree)
- 提供快速导航定位文件功能的插件：[Command-T](http://vimawesome.com/plugin/command-t-ours)
- h与cpp切换插件[a.vim](http://vimawesome.com/plugin/a-vim)
- SQL 语法补全[SQL Complete](http://vimawesome.com/plugin/sqlcomplete-vim)
- Python 语法补全:[pythoncomplete](http://vimawesome.com/?q=pythoncomplete)

## 一些使用技巧
- 按F5,会执行程序
- 按F4,会显示OutLine
- 按F3,会显示目录

## 插件的管理
先在这个[网站](http://vimawesome.com/)上搜索相对应的插件，然后按照里面的教程相应地修改`.vimrc`文件即可

## 一些问题
这个脚本只在Ubuntu14.04上成功运行过
## 放在最后
要非常感谢以下的这两个Vim的配置项，我的这一套Vim的配置文件很大程度地参考了他们的配置，包括`shell`安装脚本以及`.vimrc`的配置文件，还有非常感谢一开始的那四篇介绍vim博文的作者池建强先生。
- [ma6174](https://github.com/ma6174/vim)
- [dyl](https://github.com/dengyaolong/myvimrc)

## 脚本代码
```sh
#!/bin/bash
cd 
echo "一起来愉快地使用Vim来敲打出我们的代码"
install_handle=""
if which apt-get >/dev/null; then
    install_handle="apt-get"
elif which yum >/dev/null; then
    install_handle="yum"
else
    echo -n "Enter your installer:" 
    read  install_name
    install_handle=$install_name
fi 
sudo $install_handle install -y gcc g++ vim  ctags xclip astyle python-setuptools python-dev git  python-pip python-twisted  xsel Cmake sl cowsay > /dev/null
sudo pip install --upgrade autopep8  > /dev/null #python缩进 


echo "------------把老vim备份移除--------------------------"
[ -d .vim   ] && mv -v .vim   .vim.$(stat -c%Y   .vim)
[ -f .vimrc ] && mv -v .vimrc .vimrc.$(stat -c%Y .vimrc)

echo "------------咱们来休闲一下---------------------------"
echo " duang !duang !duang !duang !duang !"
sl
cowsay "我不会使用Vim肿么办？"
cowsay "没关系，就让这个脚本带你装逼带你飞！！"
echo "------------从github上获取Vim的一些配置文件-----------"
[ ! -d "myvimrc" ] && git clone git@github.com:jusonalien/ourvim.git > /dev/null
cp -R ~/ourvim/vim ~/.vim 
cp  ~/ourvim/vimrc ~/.vimrc 

echo "------------插件的安装-------------------------------"
echo "安装vundle，一个管理插件的插件"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle > /dev/null
cd ~/.vim/bundle
echo "这个Vim的配置具体请到 https://github.com/jusonalien/ourvim 下查看" > jusonalien
echo "安装vim颜色" >> jusonalien
echo "安装h与cpp切换插件" >> jusonalien
echo "安装好看的状态条" >> jusonalien
echo "安装目录树插件，完成后使用时按F2即可" >> jusonalien
echo "安装处理括号神器" >> jusonalien
echo "安装错误提示插件" >> jusonalien
echo "安装OutLine插件" >> jusonalien
echo "安装Command-T，用于模糊搜索" >> jusonalien
echo "jusonalien 正在努力地为您安装各种好玩的插件" >> jusonalien
echo "请耐心等待。。。。。。。。。" >> jusonalien
echo "按F5,会执行程序" >> jusonalien
echo "按F4,会显示OutLine" >> jusonalien
echo "按F3,会显示目录" >> jusonalien
echo "程序员只有两种信仰" >> jusonalien
echo "第一种是信仰Vim的" >> jusonalien
echo "另一种是不信仰Vim的" >> jusonalien

vim jusonalien -c "BundleInstall" -c "q" -c "q"
rm jusonalien
cd ~/.vim/bundle/YouCompleteMe
sudo ./install.sh --clang-completer

## 设置solarized 主题的颜色
mkdir ~/.fonts
cd ~/.fonts
git clone https://github.com/eugeneching/consolas-powerline-vim.git
echo "-----------开始配置颜色咯-------------------"
#配色开始
echo 'export TERM=xterm-256color' >> ~/.bashrc
cp ~/ourvim/dircolors.256dark ~/.dircolors
eval 'dircolors ~/.dircolors' > /dev/null 
cd ~/ourvim
. set_dark.sh   
rm -Rf ~/ourvim
echo "安装终于完成~\(≧▽≦)/~啦啦啦"
```
