@Echo Off
Title ip1�ƶ˸��� clash ��������
cd /d %~dp0
..\..\wget --no-check-certificate https://gitlab.com/free9999/ipupdate/-/raw/master/clash/config.yaml

if exist config.yaml goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\config.yaml_backup"
ren "..\config.yaml"  config.yaml_backup
copy /y "%~dp0config.yaml" ..\config.yaml
del "%~dp0config.yaml"
ECHO.&ECHO.�Ѹ����������clash����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit