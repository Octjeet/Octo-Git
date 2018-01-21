@echo off
echo type "commit" "pull" "exit"
cd curl

set GIT_PATH "C:\Program Files\Git\git.exe"
set BRANCH = "origin"

:P

set ACTION=

set /P ACTION=Action: %=%

if "%ACTION%"=="commit" (
  %GIT_PATH% add -A

	%GIT_PATH% commit -am "commited with the Octo commit on %date%"

	%GIT_PATH% push %BRANCH%

)

if "%ACTION%"=="pull" (

	%GIT_PATH% pull %BRANCH%

)

)

if "%ACTION%"=="exit" exit /b

goto P
Raw 
