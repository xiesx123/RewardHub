@echo off
chcp 65001 >nul

REM Execute script
set SCRIPT_CMD=uv run
set SCRIPT_PATH=cli.py
set SCRIPT_ARGS=start --host 0.0.0.0 --port 8081
if "%~1"=="--debug" (
    set SCRIPT_ARGS=%SCRIPT_ARGS% --debug
)

REM Run the Python script
%SCRIPT_CMD% %SCRIPT_PATH% %SCRIPT_ARGS%

pause