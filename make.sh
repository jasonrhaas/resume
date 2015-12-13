#!/bin/bash

if [ $# -eq 1 ]; then
    name=${1//\.md/}
    pandoc $1 -t plain -o $name.txt
    pandoc $1 -t docx -o $name.docx
    pandoc $1 -t html5 -o $name.html
else
    echo "Usage : $0 YourResume.md"
    exit 1
fi

