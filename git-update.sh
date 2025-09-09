#!/bin/bash

cd "$(dirname "$0")"
echo "正在执行 Git 更新操作..."
echo "当前目录：$(pwd)"
echo

echo "1. 添加所有文件到暂存区..."
git add .
if [ $? -ne 0 ]; then
    echo "错误：git add 操作失败"
    read -p "按任意键继续..."
    exit 1
fi

echo "2. 提交更改..."
git commit -m "update"
if [ $? -ne 0 ]; then
    echo "错误：git commit 操作失败"
    read -p "按任意键继续..."
    exit 1
fi

echo "3. 推送到远程仓库..."
git push
if [ $? -ne 0 ]; then
    echo "错误：git push 操作失败"
    read -p "按任意键继续..."
    exit 1
fi

echo
echo "所有操作完成！"
read -p "按任意键继续..."
