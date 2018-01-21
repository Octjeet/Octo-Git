@echo off
echo type "commit" "pull" "exit"
cd curl

set BRANCH = "origin"

:P

set ACTION=

set /P ACTION=Action: %=%

if "%ACTION%"=="commit" (
	
	call git add *
	call git commit -m "commited with Octo Git on %date%"
	call git push

)

if "%ACTION%"=="pull" (

	call git pull

)

)

if "%ACTION%"=="exit" exit /b

goto P
