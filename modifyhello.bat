@ECHO OFF
REM ECHO.
REM ECHO This is a batch file to assist the developer in 
REM ECHO Modifying a copy of the hello World App
REM ECHO.

REM what folder to use? ""= USAGE
REM user can pass in folder. Is it the same as last saved?
REM if user passes in folder and it does not match the last folder
REM what if last saved file/folder does not exist - Did not run Install

rem IF NOT EXIST "user-root.txt" goto SETDEFAULT
rem set mp=""
rem for /f "tokens=* delims=" %%x in (user-root.txt) do set mp=%%x
rem goto CONTINUEPATH

:SETDEFAULT
set mp="c:\users\public"

:CONTINUEPATH
rem if "%1" == "" goto USAGE
if %mp%=="" goto RUNINSTALL
set datapath=c:\users\public
IF %datapath:~-1%==\ SET datapath=%datapath:~0,-1%
if %datapath% NEQ %mp% goto USEPASS
goto USEPASS

:USEPASS
IF NOT EXIST %datapath%\NUL goto RUNINSTALL
set ad=%datapath%\CDP\SnapBack\Apps\MyFirstApp
IF EXIST %ad%\NUL goto FOLDEREXISTS
IF NOT EXIST %ad%\NUL mkdir %ad%
cd %1\CDP\SnapBack\APPs
xcopy appTemplate MyFirstApp\ /S
explorer.exe %ad%
goto END

:USETEXT
set ad=%mp%\CDP\SnapBack\Apps\MyFirstApp
IF EXIST %ad%\NUL goto FOLDEREXISTS
IF NOT EXIST %ad%\NUL mkdir %ad%
cd %1\CDP\SnapBack\APPs
xcopy appTemplate MyFirstApp\ /S
explorer.exe %ad%
goto END

:FOLDEREXISTS
REM ECHO The folder already Exists
explorer.exe %ad%
goto END

:MISMATCH
goto USEPASS
REM ECHO The folder you entered is not the same as the last saved development folder.
REM ECHO The last saved development folder is %mp%.
REM Which folder to use?
set pu="N"
set /P pu=Do you want to use %datapath% folder? (Y/[N])?
IF /I %pu%==Y goto USEPASS
set /P pu=Do you want to use %mp% folder (Y/[N])?
IF /I %pu%==Y goto USETEXT
REM ECHO You did not pick either path.
goto END

:RUNINSTALL
REM ECHO You have not run the install button. Please run that button first.
REM ECHO Then you can run the button to modify the Hello World App.
goto END

:USAGE
REM ECHO USAGE:
REM ECHO ModifyHello [full path to install directory]
REM ECHO You must install the development environment before using this tool.
goto END

:END
REM ECHO End Of Modify...
REM PAUSE
REM CLS 
Rem EXIT
