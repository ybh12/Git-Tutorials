@Echo Off
Title ��GitHub�ƶ˸��� SS �����ļ�
cd /d %~dp0
..\..\wget --no-check-certificate https://cdn.jsdelivr.net/gh/Alvin9999/pac2@latest/SS-Kcptun/ssconfig.txt

if exist ssconfig.txt goto startcopy
echo ip����ʧ�ܣ�����������һ������������У��뷴��kebi2014@gmail.com
pause
exit
:startcopy

del "..\gui-config.json_backup"
ren "..\gui-config.json"  gui-config.json_backup
b64 -d ssconfig.txt gui-config.json
copy /y "%~dp0gui-config.json" ..\gui-config.json
del "%~dp0ssconfig.txt"
del "%~dp0gui-config.json"
ECHO.&ECHO.�Ѹ���SS-plugin�����ļ�,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit