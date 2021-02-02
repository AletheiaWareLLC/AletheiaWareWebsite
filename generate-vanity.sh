#!/bin/bash

while read p; do mkdir -p html/static/${p}/ && sed -e "s~\${project}~${p}~g" aw-vanity-template.txt > html/static/${p}/index.html; done < packages

