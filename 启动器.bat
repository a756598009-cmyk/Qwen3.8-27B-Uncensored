@echo off
cd /d "%~dp0"
:MENU
cls
echo ------------------------------
echo Model Launcher Menu
echo ------------------------------
echo 1 = Qwen3.6-35B Text Only
echo 2 = Qwen3.6-35B Text+Vision
echo 3 = Qwen3.8-27B Text Only
echo 4 = Qwen3.8-27B Text+Vision
echo 0 = Exit
echo ------------------------------
set "SEL="
set /p SEL=Input number:

if "%SEL%"=="1" goto M1
if "%SEL%"=="2" goto M2
if "%SEL%"=="3" goto M3
if "%SEL%"=="4" goto M4
if "%SEL%"=="0" exit
echo Invalid input, press any key back to menu
pause >nul
goto MENU

:M1
title Qwen3.6-35B TextOnly
llama-server.exe ^
-m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-IQ4_XS.gguf" ^
-c 132144 ^
-ngl 999 --reasoning-format deepseek ^
-t 16 --threads-batch 20 -b 2048 -ub 512 ^
-n -1 -fa on --jinja --host 127.0.0.1 --port 8080
goto BACK

:M2
title Qwen3.6-35B TextVision
llama-server.exe ^
-m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-IQ4_XS.gguf" ^
--mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
-c 132144 ^
-ngl 999 --reasoning-format deepseek ^
-t 16 --threads-batch 20 -b 2048 -ub 512 ^
-n -1 -fa on --jinja --host 127.0.0.1 --port 8080
goto BACK

:M3
title Qwen3.8-27B TextOnly
llama-server.exe ^
-m "models\Qwen3.8-27B-Uncensored-Q4_K_M.gguf" ^
-c 131072 ^
-np 1 --cache-type-k q4_0 --cache-type-v q4_0 ^
-t 16 --threads-batch 18 -b 2048 -ub 1024 ^
-n -1 -fa on --jinja --host 127.0.0.1 --port 8080
goto BACK

:M4
title Qwen3.8-27B TextVision
llama-server.exe ^
-m "models\Qwen3.8-27B-Uncensored-Q4_K_M.gguf" ^
--mmproj "models\mmproj-F16.gguf" ^
-c 131072 ^
-np 1 --cache-type-k q4_0 --cache-type-v q4_0 ^
-t 16 --threads-batch 18 -b 2048 -ub 1024 ^
-n -1 -fa on --jinja --host 127.0.0.1 --port 8080
goto BACK

:BACK
echo Service stopped, press any key back to menu
pause >nul
goto MENU