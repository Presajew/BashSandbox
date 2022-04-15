#!/bin/bash

# This script should recursively look through the "scripts" folder
# and find any instances of "TODO" in files. If exists, return a list
# of file names and line numbers.
grep "TODO" --recursive --exclude=todolist.sh ~/*
