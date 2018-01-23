@echo off

cd curl

start /wait SimpleForm.hta
for /f "tokens=1,2 delims=~" %%i in (C:\Output.txt) do (
  set message=%%i
)

del C:\Output.txt

	call git add *
	call git commit -m "%message%"
	call git push
