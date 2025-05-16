#!/bin/bash

echo "👉 跳转到Wihend目录..."
cd .\Wihend\

echo "👉 进入 dist 并初始化 Git"
cd dist
git init
git add .
git commit -m "build: deploy to master"
git branch -M master

# 改成你自己的仓库地址
git remote add origin https://github.com/3026546679/3026546679.github.io.git

echo "🚀 推送到 master 分支..."
git push -f origin master

echo "✅ 部署完成"
cd ..
