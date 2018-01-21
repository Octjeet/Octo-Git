@echo off
echo type "commit" "pull" "exit"
cd curl

set GIT_PATH "C:\Program Files\Git\git-cmd.exe"
set BRANCH = "origin"

:P

set ACTION=

set /P ACTION=Action: %=%

if "%ACTION%"=="commit" (
	
	call git add *
	call git commit -m "commited with Octo Git on %date%"
	call git push %BRANCH%

)

if "%ACTION%"=="pull" (

	call git pull %BRANCH%

)

)

if "%ACTION%"=="exit" exit /b

goto P
Raw 
