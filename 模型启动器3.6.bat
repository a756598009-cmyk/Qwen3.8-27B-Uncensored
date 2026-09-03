@echo off
chcp 65001 >nul
title Qwen3.6-35B-A3B IQ4_XS HIP Vision
cd /d "%~dp0"

llama-server.exe ^
-m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-IQ4_XS.gguf" ^
--mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
-ngl 999 ^
-c 132144 ^
-n -1 ^
-t 16 ^
--threads-batch 20 ^
-b 2048 ^
-ub 512 ^
-fa on ^
--jinja ^
--reasoning-format deepseek ^
--host 127.0.0.1 ^
--port 8080

pause