@echo off

cd curls

	set /P id=Enter id: 
	jstack %id% > jstack.txt

	call git add *
	call git commit -m "%id%"
	call git push
