@echo off
rem winbash console
:start
set /p command="enter command"
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
goto start)
pause