#!/bin/bash

if [ $# -eq 1 ]; then
	name=$1
else
	name="JasonHaas_Resume.md"
fi
new_name=${name//\.md/}

pandoc $name -t plain -o $new_name.txt
# pandoc $name -t docx -o $new_name.docx
# pandoc $name -t html5 -o $new_name.html
pandoc $name -o $new_name.pdf