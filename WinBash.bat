@echo off
rem winbash console
:start
set /p command="enter command: "
if %command%==ls (
dir
goto start)else if %command%==pwd (
cd
goto start)else if %command%==ifconfig (
ipconfig
goto start)else if %command%==logname (
whoami
goto start)else if %command%==whoami (
whoami
goto start)else if %command%==exit (
goto eof
)else if %command%==nproc (
tasklist
goto start)else if %command%==df (
chkdsk C:
goto start)else if %command%==mkdir (
set /p dirname="set the name for this directory: "
mkdir %dirname%
goto start)else if %command%==date (
date /T
goto start)else if %command%==apt_install (
set /p pkg="what do you want to install: "
winget install "%pkg%"
goto start)
pause