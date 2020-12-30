#!/bin/bash

while read p; do sed -e "s/\${project}/${p}/g" aw-vanity-template.html > html/static/${p}.html; done < packages

