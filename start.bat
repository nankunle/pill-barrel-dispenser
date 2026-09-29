@echo off
rem 五瓶智能分药与取药提醒系统 - 本地演示启动脚本
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:8765/"
  py -3 -m http.server 8765
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:8765/"
  python -m http.server 8765
  goto :eof
)
echo [!] 未找到 Python，请先安装 Python 或使用: npx serve -l 8765 .
pause