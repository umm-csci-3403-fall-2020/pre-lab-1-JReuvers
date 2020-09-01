#!/usr/bin/env bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' <r0_input.txt >r0_output.txt

sed -E -e 's/\* I am ([K]+|[Nic]+|[Vincent]+)\. [A-z]+ [a-z]+ [a-z]+ [a-z]+ ([a-z]+)\./1. \1\n2. \2\n/' -e 's/\* I am a.+//' <r1_input.txt >r1_output.txt

sed -E 's/\* \w+ \w+ (\S+) (.+)/1. \1\n2. \2\n/' <r2_input.txt >r2_output.txt
