my_dir = $(CURDIR)/release

all: node html run

node:
	emcc src/hello.c -o release/hello.js
	node release/hello.js

html:
	emcc src/hello.c -o release/hello.html --shell-file src/html_template.html

run:
	cd ${my_dir}
	echo ${my_dir}
	npx http-server ${my_dir} -o -p 9999

