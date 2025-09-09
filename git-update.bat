@echo off
cd /d "%~dp0"
echo 正在执行 Git 更新操作...
echo 当前目录：%CD%
echo.

echo 1. 添加所有文件到暂存区...
git add .
if %errorlevel% neq 0 (
    echo 错误：git add 操作失败
    pause
    exit /b 1
)

echo 2. 提交更改...
git commit -m "update"
if %errorlevel% neq 0 (
    echo 错误：git commit 操作失败
    pause
    exit /b 1
)

echo 3. 推送到远程仓库...
git push
if %errorlevel% neq 0 (
    echo 错误：git push 操作失败
    pause
    exit /b 1
)

echo.
echo 所有操作完成！
pause
