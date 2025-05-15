#!/usr/bin/env bash

cur_dir=${PWD}
sub_dirs=(
	docs
)

npm i gitbook-plugin-advance-blockquote
npm i gitbook-plugin-embed-file
gitbook install

for sub_dir in "${sub_dirs[@]}" ;do
	cp ${cur_dir}/.bookignore ${sub_dir}/.bookignore
	cp ${cur_dir}/book.css ${sub_dir}/book.css
	cp ${cur_dir}/book-pdf.css ${sub_dir}/book-pdf.css
	cp ${cur_dir}/book.json ${sub_dir}/book.json
	cp ${cur_dir}/favicon.ico ${sub_dir}/favicon.ico
	cp ${cur_dir}/package.json ${sub_dir}/package.json
	cp ${cur_dir}/package-lock.json ${sub_dir}/package-lock.json

	cp -rf node_modules ${sub_dir}/
	cd ${sub_dir}
	gitbook pdf
	rm -rf node_modules

	cd ${cur_dir}
	rm ${sub_dir}/.bookignore
	rm ${sub_dir}/book.css
	rm ${sub_dir}/book-pdf.css
	rm ${sub_dir}/book.json
	rm ${sub_dir}/favicon.ico
	rm ${sub_dir}/package.json
	rm ${sub_dir}/package-lock.json
done;

