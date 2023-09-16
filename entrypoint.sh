#!/bin/sh

mkdir ~/.ssh && touch ~/.ssh/known_hosts
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa
ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" > ~/.ssh/known_hosts && chmod 700 ~/.ssh/known_hosts

cat ~/.ssh/known_hosts

ssh "$INPUT_USERNAME"@"$INPUT_HOST" -p "$INPUT_PORT" touch testfile_from_today.txt
