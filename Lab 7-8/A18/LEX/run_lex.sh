#!/usr/bin/env bash

set -x

lex *.l
gcc -o lex lex.yy.c
./lex
