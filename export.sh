#!/bin/bash

cd $1

if [ ! -d ".git" ]; then
	echo "# ecom-moce.github.io" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git branch -M main
	git remote add origin git@github.com:ecom-moce/ecom-moce.github.io.git
	git push -u origin main
fi


git remote add origin git@github.com:ecom-moce/ecom-moce.github.io.git
git branch -M main
git push -u origin main

git add -A
git commit -m "Website update."
git push -u origin main

