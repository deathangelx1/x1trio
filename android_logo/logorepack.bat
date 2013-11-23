CLS
@ECHO OFF
SETLOCAL
title logo.img tool

set CURRDIR=%CD%
set FULLCURRDIR=%~dp0
set TOOLS=%CURRDIR%\Tools\
set OUTPUTDIR=%CURRDIR%\Output\
set LOGOIMG=%CURRDIR%\Input\logo.img
set NEWLOGO=%CURRDIR%\Output\newlogo.img
set IMAGEHEADER=%CURRDIR%\Output\logo.header
set IMAGEJPG=%CURRDIR%\Output\logo.jpg
set PREBUILD=%CURRDIR%\PreBuild\

%TOOLS%chgcolor 07
ECHO.
ECHO ********************************************************************
ECHO **    REPACK NEWLOGO.IMG - Alteracao do logo incial do X1 Trio    **
ECHO **      23/11/13 deathangel - http://github.com/rallyn/x1trio     **
ECHO **                                                                **
ECHO **  Informacoes sobre o deco em http://freesatelitalhd.com/forum  **
ECHO ********************************************************************
ECHO.

%TOOLS%chgcolor 0A
%TOOLS%cat %IMAGEHEADER% %IMAGEJPG% > %NEWLOGO%
ECHO ** Gerando newlogo.img 
ECHO.
%TOOLS%chgcolor 08
echo Concatenando %IMAGEHEADER%
echo Concatenando %IMAGEJPG% 




%TOOLS%chgcolor 0A
ECHO.
ECHO ** Compactando META-INF + newlogo.img...

%TOOLS%chgcolor 08
%TOOLS%7z a  %CURRDIR%\Output\newlogo_unsigned.zip  -i!%PREBUILD%META-INF\* %NEWLOGO%

ECHO.


%TOOLS%chgcolor 0A
echo ** Versao do java...

%TOOLS%chgcolor 08
java -version

%TOOLS%chgcolor 0A
ECHO.
ECHO ** Assinando arquivo [Rom file]...
java -jar %TOOLS%signapk.jar -w %TOOLS%testkey.x509.pem %TOOLS%testkey.pk8 %OUTPUTDIR%newlogo_unsigned.zip %OUTPUTDIR%newlogo_signed.upg
ECHO.
ECHO ** Removendo arquivos temporarios...
del /f %CURRDIR%\Output\newlogo_unsigned.zip
del /f %NEWLOGO%


%TOOLS%chgcolor 0E
ECHO.
ECHO   Copie o arquivo newlogo_signed.upg para a raiz do
ECHO   pendrive, no gerenciador de arquivos do X1 Trio execute 
ECHO   o arquivo, o sistema ira reinicialar com o novo logo. 


%TOOLS%chgcolor 07
