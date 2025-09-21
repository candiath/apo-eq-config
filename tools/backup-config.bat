@echo off
REM APO Equalizer Configuration Backup Utility
REM Creates a timestamped backup of your current APO configuration

echo APO Equalizer Configuration Backup Utility
echo ============================================

REM Set variables
set APO_CONFIG_PATH=C:\Program Files\EqualizerAPO\config\config.txt
set BACKUP_DIR=%USERPROFILE%\Documents\APO_Backups
set TIMESTAMP=%date:~-4,4%-%date:~-10,2%-%date:~-7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%

REM Create backup directory if it doesn't exist
if not exist "%BACKUP_DIR%" (
    echo Creating backup directory: %BACKUP_DIR%
    mkdir "%BACKUP_DIR%"
)

REM Check if APO config exists
if not exist "%APO_CONFIG_PATH%" (
    echo ERROR: APO configuration file not found at %APO_CONFIG_PATH%
    echo Please ensure APO Equalizer is installed correctly.
    pause
    exit /b 1
)

REM Create backup
set BACKUP_FILE=%BACKUP_DIR%\config_backup_%TIMESTAMP%.txt
echo Backing up configuration to: %BACKUP_FILE%
copy "%APO_CONFIG_PATH%" "%BACKUP_FILE%"

if %errorlevel% == 0 (
    echo Backup completed successfully!
    echo.
    echo Backup location: %BACKUP_FILE%
    echo.
    echo To restore this backup, copy it back to:
    echo %APO_CONFIG_PATH%
) else (
    echo ERROR: Backup failed. Please check permissions and try running as Administrator.
)

echo.
pause