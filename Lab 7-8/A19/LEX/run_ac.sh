#!/usr/bin/env bash

set -x

lex -o A19_ac.yy.c A19_any_case.l
gcc -o A19_ac A19_ac.yy.c
./A19_ac
