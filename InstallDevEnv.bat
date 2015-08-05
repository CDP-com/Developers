@ECHO OFF
ECHO.
ECHO This is a batch file to install the SnapBack Development Environment
ECHO.

if "%1" == "" goto USAGE
ECHO "%1"
set pp=c:\programdata\CDP\readme.txt

IF NOT EXIST %1\NUL goto PATHERROR
ECHO The path exists.  You may be prompted to overwrite existing files.

:CONTINUE
Echo %1 > user-root.txt

cd %1
ECHO Creating Directory Structure

IF NOT EXIST CDP\NUL mkdir CDP
cd CDP

IF EXIST %pp% xcopy %pp%
REM ---------------------------------------
REM - Create Directories under CDP
REM -    Notes-Meetngs
Rem -    Shortcuts
REM -    Tools-for-Developers
REM -    Tools-3rd-party
REM -    SnapBack *
REM ---------------------------------------
IF NOT EXIST Notes-Meetings\NUL mkdir Notes-Meetings
set pp=c:\programdata\CDP\Notes-Meetings\readme.txt
IF EXIST %pp% xcopy %pp% Notes-Meetings\

IF NOT EXIST Shortcuts\NUL mkdir Shortcuts
set pp=c:\programdata\CDP\Shortcuts\readme.txt
IF EXIST %pp% xcopy %pp% Shortcuts\

IF NOT EXIST Tools-for-Developers\NUL mkdir Tools-for-Developers
set pp=c:\programdata\CDP\Tools-for-Developers\readme.txt
IF EXIST %pp% xcopy %pp% Tools-for-Developers\

IF NOT EXIST Tools-3rd-party\NUL mkdir Tools-3rd-party
set pp=c:\programdata\CDP\Notes-Tools-3rd-party\readme.txt
IF EXIST %pp% xcopy %pp% Notes-Tools-3rd-party\


IF NOT EXIST SnapBack\NUL mkdir SnapBack
cd SnapBack

REM ---------------------------------------
REM - Create Directories under SnapBack
REM -    APPs  *
REM -    ExtAPPs  *
REM -    Install
REM -    Logs
REM -    THEmenu  *
REM -    Quarantine
REM -    Notifications
REM -    Templates
REM -    Update-BITS
REM -    Platform  *
REM -    Settings *
REM ---------------------------------------

IF NOT EXIST APPs\NUL mkdir APPs
set pp=c:\programdata\CDP\APPs\readme.txt
IF EXIST %pp% xcopy %pp% APPs\
IF NOT EXIST ExtAPPs\NUL mkdir ExtAPPs
set pp=c:\programdata\CDP\ExtAPPs\readme.txt
IF EXIST %pp% xcopy %pp% ExtAPPs\
IF NOT EXIST Install\NUL mkdir Install
set pp=c:\programdata\CDP\Install\readme.txt
IF EXIST %pp% xcopy %pp% Install\
IF NOT EXIST Logs\NUL mkdir Logs
set pp=c:\programdata\CDP\Logs\readme.txt
IF EXIST %pp% xcopy %pp% Logs\
IF NOT EXIST THEmenu\NUL mkdir THEmenu
set pp=c:\programdata\CDP\THEmenu\readme.txt
IF EXIST %pp% xcopy %pp% THEmenu\
IF NOT EXIST Quarantine\NUL mkdir Quarantine
set pp=c:\programdata\CDP\Quarantine\readme.txt
IF EXIST %pp% xcopy %pp% Quarantine\
IF NOT EXIST Notifications\NUL mkdir Notifications
set pp=c:\programdata\CDP\Notifications\readme.txt
IF EXIST %pp% xcopy %pp% Notifications\
IF NOT EXIST Update-BITS\NUL mkdir Update-BITS
set pp=c:\programdata\CDP\Update-BITS\readme.txt
IF EXIST %pp% xcopy %pp% Update-BITS\
IF NOT EXIST Platform\NUL mkdir Platform  
set pp=c:\programdata\CDP\Platform\readme.txt
IF EXIST %pp% xcopy %pp% Platform\
IF NOT EXIST Settings\NUL mkdir Settings
set pp=c:\programdata\CDP\Settings\readme.txt
IF EXIST %pp% xcopy %pp% Settings\ 
IF NOT EXIST Templates\NUL mkdir Templates
set pp=c:\programdata\CDP\Templates\readme.txt
IF EXIST %pp% xcopy %pp% Templates\ 
REM ---------------------------------------
REM - Create Directories Under ExtApps
REM -    Tools-CDP
REM -    Tools-3rd-party
REM ---------------------------------------
cd ExtApps
IF NOT EXIST Tools-CDP\NUL mkdir Tools-CDP
set pp=c:\programdata\CDP\Tools-CDP\readme.txt
IF EXIST %pp% xcopy %pp% Tools-CDP\ 
IF NOT EXIST Tools-3rd-party\NUL mkdir Tools-3rd-party
set pp=c:\programdata\CDP\Tools-3rd-party\readme.txt
IF EXIST %pp% xcopy %pp% Tools-3rd-party\ 
cd ..

REM ---------------------------------------
REM - Create Directories Under THEmenu
REM -    Default
REM -    CurrentUser
REM -    SharedUser
REM -    CompanyUser
REM ---------------------------------------
cd THEmenu
IF NOT EXIST Default\NUL mkdir Default
set pp=c:\programdata\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST CurrentUser\NUL mkdir CurrentUser
set pp=c:\programdata\CDP\CurrentUser\readme.txt
IF EXIST %pp% xcopy %pp% CurrentUser\ 
IF NOT EXIST SharedUser\NUL mkdir SharedUser
set pp=c:\programdata\CDP\SharedUser\readme.txt
IF EXIST %pp% xcopy %pp% SharedUser\ 
IF NOT EXIST CompanyUser\NUL mkdir CompanyUser
set pp=c:\programdata\CDP\CompanyUser\readme.txt
IF EXIST %pp% xcopy %pp% CompanyUser\ 
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
set pp=c:\programdata\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST CurrentUser\NUL mkdir CurrentUser
set pp=c:\programdata\CDP\Default\readme.txt
IF EXIST %pp% xcopy %pp% Default\ 
IF NOT EXIST AdminUser\NUL mkdir AdminUser
set pp=c:\programdata\CDP\Default\readme.txt
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

IF NOT EXIST C:\ProgramData\CDP\SnapBack\Apps\NUL goto MISSINGPROD
IF NOT EXIST C:\ProgramData\CDP\SnapBack\Apps\appTemplate\NUL goto MISSINGPROD
IF NOT EXIST C:\ProgramData\CDP\SnapBack\Apps\Common\NUL goto MISSINGPROD
IF NOT EXIST C:\ProgramData\CDP\SnapBack\Apps\HelloWorld\NUL goto MISSINGPROD
IF NOT EXIST C:\ProgramData\CDP\SnapBack\Apps\Developers \NUL goto MISSINGPROD

xcopy C:\ProgramData\CDP\SnapBack\Apps\appTemplate appTemplate\ /S
xcopy C:\ProgramData\CDP\SnapBack\Apps\Common Common\ /S
xcopy C:\ProgramData\CDP\SnapBack\Apps\HelloWorld HelloWorld\ /S
xcopy C:\ProgramData\CDP\SnapBack\Apps\Developers Developers\ /S

ECHO Created Directory Structure
goto END

:MISSINGPROD
ECHO Production Folders are missing for Copying.
goto END

:CREATEPATH
mkdir %1
ECHO Folder has been Created.
goto CONTINUE

:PATHERROR
ECHO The Supplied Path does not Exist.
set CREATEIT="N"
set /P CREATEIT=Do you want me to create it? (Y/[N])?
IF /I %CREATEIT%==Y goto CREATEPATH
ECHO You selected not to Create the Path.
goto END


:USAGE
ECHO USAGE:
ECHO InstallDevEnv [full path to install directory]
goto END

:END
ECHO End Of Install...
PAUSE
CLS 
Rem EXIT

