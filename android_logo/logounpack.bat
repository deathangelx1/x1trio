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
ECHO **    UNPACK NEWLOGO.IMG - Alteracao do logo incial do X1 Trio    **
ECHO **      23/11/13 deathangel - http://github.com/rallyn/x1trio     **
ECHO **                                                                **
ECHO **  Informacoes sobre o deco em http://freesatelitalhd.com/forum  **
ECHO ********************************************************************
ECHO.
%TOOLS%chgcolor 0A
ECHO **Copiando logo.img header...


ECHO. 
%TOOLS%head -c 8192 %LOGOIMG% > %IMAGEHEADER%
ECHO **Copiando image.jpg footer...
%TOOLS%chgcolor 08
ECHO. 
%TOOLS%dd if=%LOGOIMG% bs=1 skip=8192 of=%IMAGEJPG%
ECHO.


%TOOLS%chgcolor 0E
ECHO   Altere ou substitua o arquivo logo.jpg na pasta Output com a  
ECHO   imagem desejada (JPEG 1920x1080 24bits 72dpi) e execute 
ECHO   o script logorepack.bat

%TOOLS%chgcolor 07
