@echo off
chcp 65001 >nul
title Qwen3.8-27B Vision HIP Server
cd /d "%~dp0"

llama-server.exe ^
-m "models\Qwen3.8-27B-Uncensored-Q4_K_M.gguf" ^
--mmproj "models\mmproj-F16.gguf" ^
-c 131072 ^
-np 1 ^
--cache-type-k q4_0 ^
--cache-type-v q4_0 ^
-n -1 ^
-t 16 ^
--threads-batch 18 ^
-b 2048 ^
-ub 1024 ^
-fa on ^
--jinja ^
--host 127.0.0.1 ^
--port 8080

pause