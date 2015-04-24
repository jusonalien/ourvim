ouvimrc
=======
## 前话
想要真真地学会如何使用Vim，你至少要学会如何配置合适自己的一套Vim的开发环境，因此非常强烈地推荐大家先去阅读下面这些文章。
- [谁说Vim不是IDE(1)](http://www.cnblogs.com/chijianqiang/archive/2012/10/30/vim-1.html)
- [谁说Vim不是IDE(2)](http://www.cnblogs.com/chijianqiang/archive/2012/10/31/vim-2.html)
- [谁说Vim不是IDE(3)](http://www.cnblogs.com/chijianqiang/archive/2012/11/06/vim-3.html)
- [谁说Vim不是IDE(4)](http://www.cnblogs.com/chijianqiang/archive/2012/12/17/vim-4.html)

这是属于非常符合我个人三观的一份Vim的配置文件，如果你喜欢的话，非常地欢迎你使用这一份Vim的配置文件，配置完毕后的显示效果大概如下：
![效果图](https://github.com/jusonalien/ourvim/blob/master/la.png)

## 安装步骤
### 免责声明，使用这个脚本所带来的一切后果本人无任何责任。
- **0.**
- **1.**先将`my_vim.sh`放置在主文件夹下面
- **2.**为这个`shel`脚本文件赋予可执行的权限，运行如下指令：
```
chmod +x my_vim.sh
```
- **3.**最后执行这脚本，运行如下指令:
 ```
 ./my_vim.sh
 ```
- **4.**网速好一点的话二十分钟左右，差一点的话可能半个小时了，毕竟是托管在githu上，有时候网速啥的大家都懂。
 
## 一些Freature
- 主题颜色使用是[solarzed主题](https://github.com/altercation/vim-colors-solarized)
- 下面的那些好看的状态栏使用的是[powerline](http://vimawesome.com/plugin/vim-powerline-love-story)插件
- 支持C/C++, Python,SQL语法的提示
- 支持一件编译源文件(单文件编译)

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
