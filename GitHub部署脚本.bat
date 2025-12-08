@echo off
echo ========================================
echo 年会抽奖系统 - GitHub Pages 自动部署
echo ========================================
echo.

echo 正在检查并安装必要的工具...
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo 请先安装Git: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo.
echo 正在准备部署文件...
cd /d "d:/临时文件/it/年会抽奖系统/log-lottery-main"

echo.
echo 步骤1: 初始化Git仓库...
git init
git config user.name "GitHub Pages Deploy"
git config user.email "deploy@example.com"

echo.
echo 步骤2: 添加所有文件...
git add .

echo.
echo 步骤3: 提交文件...
git commit -m "Deploy lottery system to GitHub Pages"

echo.
echo 步骤4: 连接到您的GitHub仓库...
git remote add origin https://github.com/Hongli62014/lottery-system.git
git branch -M main

echo.
echo 步骤5: 推送文件到GitHub...
git push -f origin main

echo.
echo ========================================
echo 部署成功！
echo.
echo 请按以下步骤完成最后设置：
echo.
echo 1. 访问: https://github.com/Hongli62014/lottery-system
echo.
echo 2. 点击顶部的 "Settings" 选项卡
echo.
echo 3. 在左侧菜单中找到 "Pages"
echo.
echo 4. 在 "Build and deployment" 部分:
echo    - Source 选择: Deploy from a branch
echo    - Branch 选择: main
echo    - 文件夹选择: /(root)
echo    - 点击 "Save"
echo.
echo 5. 等待2-5分钟
echo.
echo 6. 您的网站将在以下地址可用:
echo    https://hongli62014.github.io/lottery-system/
echo.
echo ========================================
echo.
pause