#!/bin/sh -l

list=$(ls -lah)
echo "list=$list" >> $GITHUB_OUTPUT

whereami=$(pwd)
echo "whereami=$whereami" >> $GITHUB_OUTPUT
