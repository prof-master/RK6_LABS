#! /usr/bin/env bash

set -x

bison -y *.y
gcc -o bis y.tab.c
./bis
