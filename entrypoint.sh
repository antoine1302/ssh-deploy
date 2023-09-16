#!/bin/sh -l

list=$(ls -lah)
echo "list=$list" >> $GITHUB_OUTPUT
