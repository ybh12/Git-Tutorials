@Echo Off
Title ��COD�ƶ˸��� brook ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://cdn.jsdelivr.net/gh/Alvin9999/PAC@latest/brook/brook.ini

if exist brook.ini goto startcopy
echo ip����ʧ�ܣ�������ip_1����
pause
exit
:startcopy

del "..\brook.bat_backup"
ren "..\brook.bat"  brook.bat_backup
copy /y "%~dp0brook.ini" ..\brook.bat
del "%~dp0brook.ini"
ECHO.&ECHO.�Ѹ����������brook����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit