@echo off
set "dir_path=./BurpSuite"
IF NOT EXIST %dir_path% (
	echo no BurpSuite folder
	goto end
)
if exist "%APPDATA%\BurpSuite" (
rmdir /s /q "%APPDATA%\BurpSuite"
)

xcopy BurpSuite "%APPDATA%\BurpSuite\" /s /y

:end