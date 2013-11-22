CLS
@ECHO OFF
COLOR 0A
title Sign update.zip tool

java -version
ECHO.
ECHO ********************************************************************
ECHO **     BAT para assinatura de arquivo ANDROID/FLASH update.zip    **
ECHO ********************************************************************
ECHO.

FOR %%A in (.\Input\*.zip) do (
ECHO ASSINANDO - %%~nA.zip [Rom file]
java -jar .\Tools\signapk.jar -w .\Tools\testkey.x509.pem .\Tools\testkey.pk8 %%A .\Output\%%~nA-signed.zip
)

FOR %%A in (.\Output\*.zip) do (
ECHO GERANDO   - md5.txt [MD5 checksum]
.\Tools\md5sums.exe -u %%A >> ./Output/md5.txt
)

ECHO.
ECHO ********************************************************************
ECHO **                       Arquivo assinado                         **
ECHO ********************************************************************
ECHO.


