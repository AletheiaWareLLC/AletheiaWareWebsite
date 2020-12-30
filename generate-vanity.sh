#!/bin/bash

while read p; do sed -e "s/\${project}/${p}/g" aw-vanity-template.txt > html/static/${p}; done < packages

