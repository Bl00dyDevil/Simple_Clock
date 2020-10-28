@echo off
title clock
color 0a
chcp 65001 >nul
mode con: cols=43 lines=4

:loop
cls
echo ╔═══════════════════════════════════════╗
echo ║      %date% %time%      ║
echo ╚═══════════════════════════════════════╝

for /L %%a In (0 1 %number_of_pings%) do (
ping -n 1 -w 1.1.1.1 > nul
)
goto loop