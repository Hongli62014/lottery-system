@echo off
echo 正在启动年会抽奖系统部署...

echo 1. 启动本地服务器...
cd /d "d:/临时文件/it/年会抽奖系统/log-lottery-main/dist"
start /B serve -s . -l 3000

echo 2. 等待服务器启动...
timeout /t 5 /nobreak > nul

echo 3. 启动内网穿透...
cd /d "d:/临时文件/it/年会抽奖系统/log-lottery-main"
start /B ngrok http 3000

echo 4. 等待内网穿透启动...
timeout /t 10 /nobreak > nul

echo.
echo ========================================
echo 部署完成！
echo.
echo 您的网站现在可以通过以下地址访问：
echo 1. 本地地址: http://localhost:3000
echo 2. 局域网地址: http://192.168.1.5:3000
echo.
echo 请打开浏览器访问 http://localhost:3000 查看您的抽奖系统
echo.
echo 如果需要外网访问，请查看ngrok控制台获取外网地址
echo ========================================
echo.
pause