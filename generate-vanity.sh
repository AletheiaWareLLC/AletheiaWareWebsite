#!/bin/bash

while read p
do
	mkdir -p html/static/${p}/
	base="$(cut -d'/' -f1 <<<${p})"
	sed -e "s/\${base}/${base}/g" -e "s~\${full}~${p}~g" aw-vanity-template.txt > html/static/${p}/index.html
done < packages

