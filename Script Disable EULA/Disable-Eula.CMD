@ECHO OFF
REM Set variables
SET SOURCE=%~dp0
SET SOURCE=%SOURCE:~0,-1%
IF NOT DEFINED LOGDIR SET LOGDIR=%SystemRoot%\TEMP

ECHO - Installing Click Share
PUSHD "%SOURCE%"
MD "C:\Script"
xCopy /Y /S  /i Script C:\Script
schtasks /Create /XML "Delete Eula.XML" /TN "Disable EULA"