#!/usr/bin/env bash

set -x

lex -o A19_lc.yy.c A19_lower_case.l
gcc -o A19_lc A19_lc.yy.c
./A19_lc
