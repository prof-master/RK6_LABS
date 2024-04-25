#!/usr/bin/env bash

set -x

yacc -o A19_lc.tab.c A19_lower_case.y
gcc -o A19_lc A19_lc.tab.c
./A19_lc
