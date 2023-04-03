#!/usr/bin/env bash

# This sh file is just so i don't have to remember flags and settings, not to replace a makefile with
# multi-header files.
# ADBeta 31 Mar 2023

cc="gcc"
cflag="--static -EL -mabi=32 -march=mips32"

# If no argument(s) are given, prompt the user for the input
if [ $# -eq 0 ]; then
	echo "No args. make prompt!"
	exit 1
else
# If arguments are given, just port them right into the compiler string(s)
	echo "compiling: $cc $cflag $@"
	eval "$cc $cflag $@"
fi
