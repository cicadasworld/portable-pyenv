## 搭建开箱即用的Python环境

在Python官方网站下载一个32位版的 Python-Embed的软件包，该软件包非常的小

![下载python](https://github.com/cicadasworld/portable-pyenv/blob/master/screenshot/download.png)



但该运行环境只包括了一些基础库，甚至连软件包管理工具都没有，下一步我们把pip工具安装到该运行环境中

从https://bootstrap.pypa.io/get-pip.py下载到 get-pip.py 放到刚刚的运行环境目录中

![python目录](https://github.com/cicadasworld/portable-pyenv/blob/master/screenshot/python.png)

打开python38._pth，去掉 import site 这行命令前的 # 号

``` bash
python38.zip
.

# Uncomment to run site.main() automatically
import site
```



按Win+R 打开运行，输入cmd并打开命令提示符，并进入该python环境目录，输入以下命令

``` python
python get-pip.py
```

写一个启动脚本

``` bash
@echo off

rem
rem 当前脚本所在目录为exeRunDir
rem
set exeRunDir=%~dp0

set PYTHON_HOME=%exeRunDir%\python

set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%

%PYTHON_HOME%\python.exe test.py
```

把python主程序放在启动脚本所在目录

最后把Python应用与运行环境目录一起打包