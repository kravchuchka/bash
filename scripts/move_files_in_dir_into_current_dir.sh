#!/bin/bash

#run in a directory with subdirectories in which you want to attach all the files to the new folders inside each of the subdirectories
#change [dir_name]

for d in *; do
    mkdir $d/[dir_name] | mv $d/* $d/[dir_name]
done
