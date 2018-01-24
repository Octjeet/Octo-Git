@echo off

cd curls

	set /P message=Enter Commit Message: 
	jstack %id% > jstack.txt

	call git add *
	call git commit -m "%message%"
	call git push
