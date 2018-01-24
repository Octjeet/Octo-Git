@echo off

cd curl

set BRANCH = "origin"

	call git add *
	call git commit -m "commited with Octo Git on %date%"
	call git push