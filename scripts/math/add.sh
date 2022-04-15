#!/bin/bash

# parameters
# TODO: allow any number of parameters
value1=$1;
value2=$2;

# type checks
# use double braces for regex checking
# TODO: create a function outside of this file to validate ints
error=false;
regex='^[0-9]+$';
if ! [[ $1 =~ $regex ]] ; then
	echo "ERROR - Invalid Number $1";
	error=true;
fi
if ! [[ $2 =~ $regex ]] ; then
        echo "ERROR - Invalid Number $2";
	error=true;
fi

# expr handles basic arithmetic
if ! $error ; then
	expr $1 + $2;
fi
