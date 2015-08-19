SHELL := /bin/bash 
all:
	@cat makefile
build:
	. index-jade
	. layouts-jade
	. includes-jade
	sass ./site/assets/sass/main.scss ./site/assets/style/main.css
	rm ./site/_includes/main.css
	cp ./site/assets/style/main.css ./site/_includes/main.css
	jekyll build -s ./site -d ./site/_build


jekyll-watch:
	jekyll build -s ./site -d ./site/_build --watch


browser-sync-all:
	browser-sync start --server site/_build --files "site/_build/*.html, site/_build/assets/styles/*.css, site/_build/assets/js/*.js"


index-jade-watch:
	jade ./site/assets/jade/index.jade -o ./site -w
layouts-jade-watch:
	jade ./site/assets/jade/{master.jade,post.jade} -o ./site/_layouts -w
	

compass-watch:
	compass watch ./site/assets \
	&& rm ./site/_includes/main.css \
	&& echo -e "    $red rm $nc site/_includes/main.css" \
	&& cp ./site/assets/style/main.css ./site/_includes/main.css \
	&& echo -e "    $red cp $nc site/_includes/main.css" \

inline_critical:
	sass ./site/assets/sass/main.scss ./site/assets/style/main.css
	csso -i ./site/assets/style/main.css -o ./site/_includes/main.min.css

