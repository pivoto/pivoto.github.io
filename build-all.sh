#!/usr/bin/sh

cur_dir=${PWD}
sub_dirs=(
	docs
)

for sub_dir in "${sub_dirs[@]}" ;do
	cp ${cur_dir}/.bookignore ${sub_dir}/.bookignore
	cp ${cur_dir}/book.css ${sub_dir}/book.css
	cp ${cur_dir}/book.json ${sub_dir}/book.json
	cp ${cur_dir}/favicon.ico ${sub_dir}/favicon.ico

	cd ${sub_dir}
	npm i gitbook-plugin-advance-blockquote
	npm i gitbook-plugin-embed-file
	gitbook install
	gitbook build

	cd ${cur_dir}
	rm ${sub_dir}/.bookignore
	rm ${sub_dir}/book.css
	rm ${sub_dir}/book.json
	rm ${sub_dir}/favicon.ico
done;

