@echo off
setlocal enabledelayedexpansion

set "cs_path=C:\Program Files (x86)\Steam\steamapps\common\Half-Life\cstrike"
set /p first_line=<"%cs_path%\autobuy.txt"

if "!first_line!"=="// Force-buy" (
    copy /y "cstrike\autobuy_full.txt" "%cs_path%\autobuy.txt" >nul
) else (
    copy /y "cstrike\autobuy_force.txt" "%cs_path%\autobuy.txt" >nul
)

set /p first_line=<"%cs_path%\autobuy.txt"
echo !first_line!

pause