#!/usr/bin/env bash

set -x

yacc -o A19_ac.tab.c A19_any_case.y
gcc -o A19_ac A19_ac.tab.c
./A19_ac
