#!/usr/bin/env bash

set -x

yacc -o A19_uc.yy.c A19_upper_case.y
gcc -o A19_uc A19_uc.yy.c
./A19_uc