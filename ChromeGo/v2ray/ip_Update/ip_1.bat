@Echo Off
Title ��GitHub�ƶ˸��� v2ray ���¿��� IP
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://gitlab.com/free9999/ipupdate/-/raw/master/v2rayN/guiNConfig.json

if exist guiNConfig.json goto startcopy
echo ip����ʧ�ܣ�����������һ������������У��뷴��kebi2014@gmail.com
pause
exit
:startcopy

del "..\guiNConfig.json_backup"
ren "..\guiNConfig.json"  guiNConfig.json_backup
copy /y "%~dp0guiNConfig.json" ..\guiNConfig.json
del "%~dp0guiNConfig.json"
ECHO.&ECHO.�Ѹ����������v2ray����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit