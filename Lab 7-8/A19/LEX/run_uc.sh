#!/usr/bin/env bash

set -x

lex -o A19_uc.yy.c A19_upper_case.l
gcc -o A19_uc A19_uc.yy.c
./A19_uc