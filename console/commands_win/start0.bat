@echo off
python ..\commands_py\startup.py

:start
rem echo start
set getCommand=
set tmp=
set command=
set modi=
set mmodi=
set mmmodi=
set /p getCommand=">> "
set t=%getCommand%
if defined getCommand if not "%getCommand: =%"=="" goto valid
rem echo variable is either undefined or contains only spaces
goto :start

:valid

:loop1
for /f "tokens=1*" %%a in ("%t%") do (
    rem echo %%a
    set t=%%b
    set tmp=%%a
)
if not defined command goto :setCommand

:weiter
if defined t goto :loop1

echo(%command%

::pause
goto start

:setCommand
rem echo Command
set command=%tmp%
goto :weiter
