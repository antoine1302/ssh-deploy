#!/bin/sh

mkdir ~/.ssh
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa

ssh "$INPUT_USERNAME@$INPUT_HOST" -p "$INPUT_PORT" touch testfile_from_today.txt
