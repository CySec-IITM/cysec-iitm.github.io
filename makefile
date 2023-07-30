.DEFAULT_GOAL := git
m ?= Based commit
git:
	git add -A
	git commit -m "$m"
	git push origin main

