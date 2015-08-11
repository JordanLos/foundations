SHELL := /bin/bash 
all:
	@cat makefile

serve_local:
	cd ./site && jekyll serve

build:
	. index-jade
	. layouts-jade
	. includes-jade
	sass ./site/assets/sass/main.scss ./site/assets/style/main.css
	rm ./site/_includes/main.css
	cp ./site/assets/style/main.css ./site/_includes/main.css
	jekyll build -s ./site -d ./site/_build


jekyll-build:
	jekyll build -s ./site -d ./site/_build

serve_local:
	cd ./site && jekyll serve

inline_critical:
	sass ./site/assets/sass/main.scss ./site/assets/style/main.css
	csso -i ./site/assets/style/main.css -o ./site/_includes/main.min.css
