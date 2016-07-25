all:
	jekyll serve

build:
	jekyll build

deploy: build
	rsync -avr --rsh='ssh' --delete-after --delete-excluded   _site/ puntingo@shell.gridhost.co.uk:public_html/
