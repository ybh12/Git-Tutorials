@Echo Off
Title ��GitHub�ƶ˸��� brook ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://gitlab.com/free9999/ipupdate/-/raw/master/brook/brook.bat

if exist brook.bat goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\brook.bat_backup"
ren "..\brook.bat"  brook.bat_backup
copy /y "%~dp0brook.bat" ..\brook.bat
del "%~dp0brook.bat"
ECHO.&ECHO.�Ѹ����������brook����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit