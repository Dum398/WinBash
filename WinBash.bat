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
goto start)else if %command%==apt_remove (
set /p removepkg="what do you want to remove: "
winget uninstall "%removepkg%"
goto start)else if %command%==apt_update (
winget upgrade
goto start)else if %command%==apt_search (
set /p searchpkg="what do you want to search: "
winget search "%searchpkg%"
goto start)else if %command%==apt_list (
winget list
goto start)else if %command%==apt_show (
set /p showpkg="what do you want to show: "
winget show "%showpkg%"
goto start)else if %command%==apt_upgrade (
winget upgrade --all
goto start)else if %command%==mv (
set /p mvfile="enter the file you want to move: "
set /p mvdir="enter the directory you want to move to: "
move %mvfile% %mvdir%
echo %mvfile% moved to %mvdir%
goto start)else if %command%==cp (
set /p cpfile="enter the file you want to copy: "
set /p cpdir="enter the directory you want to copy to: "
copy %cpfile% %cpdir%
echo %cpfile% copied to %cpdir%
goto start)else if %command%==rm (
set /p rmfile="enter the file you want to remove: "
del "%rmfile%"
echo %rmfile% removed
goto start)
pause