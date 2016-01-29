@ECHO OFF
ECHO.
ECHO This is a batch file to install the SnapBack Development Environment
ECHO.

rem if "%1" == "" goto USAGE
rem ECHO "%1"
set mpath=%PUBLIC%
SET dpath=%ProgramData%
set pp=%dpath%\CDP\readme.txt

IF NOT EXIST %1\NUL goto PATHERROR

:CONTINUE
cd %mpath%
ECHO Creating Directory Structure

IF NOT EXIST CDP\NUL mkdir CDP
cd CDP
IF EXIST %pp% xcopy %pp% .
REM ---------------------------------------
REM - Create Directories under CDP
REM -    Notes-Meetngs
Rem -    Shortcuts
REM -    Tools-for-Developers
REM -    Tools-3rd-party
REM -    SnapBack *
REM ---------------------------------------
IF NOT EXIST Notes-Meetings\NUL mkdir Notes-Meetings
set pp=%dpath%\CDP\Notes-Meetings\readme.txt
IF EXIST %pp% xcopy %pp% Notes-Meetings\

IF NOT EXIST Shortcuts\NUL mkdir Shortcuts
set pp=%dpath%\CDP\Shortcuts\readme.txt
IF EXIST %pp% xcopy %pp% Shortcuts\

IF NOT EXIST Tools-for-Developers\NUL mkdir Tools-for-Developers
set pp=%dpath%\CDP\Tools-for-Developers\readme.txt
IF EXIST %pp% xcopy %pp% Tools-for-Developers\

IF NOT EXIST Tools-3rd-party\NUL mkdir Tools-3rd-party
set pp=%dpath%\CDP\Notes-Tools-3rd-party\readme.txt
IF EXIST %pp% xcopy %pp% Notes-Tools-3rd-party\


IF NOT EXIST SnapBack\NUL mkdir SnapBack
cd SnapBack

REM ---------------------------------------
REM - Create Directories under SnapBack
REM -    APPs  *
REM -    ExtAPPs  *
REM -    Install
REM -    Logs
REM -    Menus  *
REM -    Quarantine
REM -    Notifications
REM -    Templates
REM -    Update-BITS
REM -    Platform  *
REM -    Settings *
REM ---------------------------------------

IF NOT EXIST APPs\NUL mkdir APPs
set pp=%dpath%\CDP\APPs\readme.txt
IF EXIST %pp% xcopy %pp% APPs\
IF NOT EXIST ExtAPPs\NUL mkdir ExtAPPs
set pp=%dpath%\CDP\ExtAPPs\readme.txt
IF EXIST %pp% xcopy %pp% ExtAPPs\
IF NOT EXIST Install\NUL mkdir Install
set pp=%dpath%\CDP\Install\readme.txt
IF EXIST %pp% xcopy %pp% Install\
IF NOT EXIST Logs\NUL mkdir Logs
set pp=%dpath%\CDP\Logs\readme.txt
IF EXIST %pp% xcopy %pp% Logs\
IF NOT EXIST Menus\NUL mkdir Menus
set pp=%dpath%\CDP\Menus\readme.txt
IF EXIST %pp% xcopy %pp% Menus\
IF NOT EXIST Quarantine\NUL mkdir Quarantine
set pp=%dpath%\CDP\Quarantine\readme.txt
IF EXIST %pp% xcopy %pp% Quarantine\
IF NOT EXIST Notifications\NUL mkdir Notifications
set pp=%dpath%\CDP\Notifications\readme.txt
IF EXIST %pp% xcopy %pp% Notifications\
IF NOT EXIST Update-BITS\NUL mkdir Update-BITS
set pp=%dpath%\CDP\Update-BITS\readme.txt
IF EXIST %pp% xcopy %pp% Update-BITS\
IF NOT EXIST Platform\NUL mkdir Platform  
set pp=%dpath%\CDP\Platform\readme.txt
IF EXIST %pp% xcopy %pp% Platform\
IF NOT EXIST Settings\NUL mkdir Settings
set pp=%dpath%\CDP\Settings\readme.txt
IF EXIST %pp% xcopy %pp% Settings\ 
IF NOT EXIST Templates\NUL mkdir Templates
set pp=%dpath%\CDP\Templates\readme.txt
IF EXIST %pp% xcopy %pp% Templates\ 
REM ---------------------------------------
REM - Create Directories Under ExtApps
REM -    Tools-CDP
REM -    Tools-3rd-party
REM ---------------------------------------
cd ExtApps
IF NOT EXIST Tools-CDP\NUL mkdir Tools-CDP
set pp=%dpath%\CDP\Tools-CDP\readme.txt
IF EXIST %pp% xcopy %pp% Tools-CDP\ 
IF NOT EXIST Tools-3rd-party\NUL mkdir Tools-3rd-party
set pp=%dpath%\CDP\Tools-3rd-party\readme.txt
IF EXIST %pp% xcopy %pp% Tools-3rd-party\ 
cd ..

REM ---------------------------------------
REM - Create Directories Under Menus
REM -    Default
REM -    MyMenu
REM -    OurMenu
REM -    SharedMenu
REM ---------------------------------------
cd Menus
IF NOT EXIST Default\NUL mkdir Default
set pp=%dpath%\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST MyMenu\NUL mkdir MyMenu
set pp=%dpath%\CDP\MyMenu\readme.txt
IF EXIST %pp% xcopy %pp% MyMenu\ 
IF NOT EXIST OurMenu\NUL mkdir OurMenu
set pp=%dpath%\CDP\OurMenu\readme.txt
IF EXIST %pp% xcopy %pp% OurMenu\ 
IF NOT EXIST SharedMenu\NUL mkdir SharedMenu
set pp=%dpath%\CDP\SharedMenu\readme.txt
IF EXIST %pp% xcopy %pp% SharedMenu\ 
cd ..
REM ---------------------------------------
REM - Create Directories Under Platform
REM -    SnapBack
REM ---------------------------------------
cd Platform
IF NOT EXIST SnapBack\NUL mkdir SnapBack
cd ..
REM ---------------------------------------
REM - Create Directories Under Settings
REM -    LocalMachine
REM -    CurrentUser
REM -    AdminUser
REM ---------------------------------------
cd Settings
IF NOT EXIST LocalMachine\NUL mkdir LocalMachine
set pp=%dpath%\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST CurrentUser\NUL mkdir CurrentUser
set pp=%dpath%\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST AdminUser\NUL mkdir AdminUser
set pp=%dpath%\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
cd ..
REM ---------------------------------------
REM - Copy Directories Under Apps from 
REM - Production
REM -    appTemplate (copy)
REM -    Common (copy)
REM -    HelloWorld (copy)
REM ---------------------------------------
cd Apps
IF NOT EXIST appTemplate\NUL mkdir appTemplate 
IF NOT EXIST Common\NUL mkdir Common 
IF NOT EXIST HelloWorld\NUL mkdir HelloWorld 
IF NOT EXIST Developers\NUL mkdir Developers

IF NOT EXIST %dpath%\CDP\SnapBack\Apps\NUL goto MISSINGPROD
IF NOT EXIST %dpath%\CDP\SnapBack\Apps\appTemplate\NUL goto MISSINGPROD
IF NOT EXIST %dpath%\CDP\SnapBack\Apps\Common\NUL goto MISSINGPROD
IF NOT EXIST %dpath%\CDP\SnapBack\Apps\HelloWorld\NUL goto MISSINGPROD
IF NOT EXIST %dpath%\CDP\SnapBack\Apps\Developers \NUL goto MISSINGPROD

xcopy %dpath%\CDP\SnapBack\Apps\appTemplate appTemplate\ /S
xcopy %dpath%\CDP\SnapBack\Apps\Common Common\ /S
xcopy %dpath%\CDP\SnapBack\Apps\HelloWorld HelloWorld\ /S
xcopy %dpath%\CDP\SnapBack\Apps\Developers Developers\ /S

ECHO Created Directory Structure
goto END

:MISSINGPROD
ECHO Production Folders are missing for Copying.
goto END

:CREATEPATH
mkdir %mpath%
ECHO Folder Created.
goto CONTINUE

:PATHERROR
ECHO The Supplied Path does not Exist.
ECHO IF We Create the path it will prompt to overwrite files.
set /P CREATEIT=Do you want me to create it? (Y/[N])?
IF /I %CREATEIT% NEQ "N" goto CREATEPATH
goto END


:USAGE
ECHO USAGE:
ECHO InstallDevEnv [full path to install directory]
goto END

:END
rem PAUSE
CLS 
Rem EXIT
