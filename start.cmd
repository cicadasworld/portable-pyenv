@echo off

rem
rem 当前脚本所在目录为exeRunDir
rem
set exeRunDir=%~dp0

set PYTHON_HOME=%exeRunDir%\python

set PATH=%PYTHON_HOME%;%PYTHON_HOME%\Scripts;%PATH%

%PYTHON_HOME%\python.exe test.py