#!/bin/sh

mkdir ~/.ssh && touch ~/.ssh/known_hosts
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa
ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" > ~/.ssh/known_hosts && chmod 700 ~/.ssh/known_hosts

ssh deploy@146.59.158.16 -p 50022 "touch testfile_from_today.txt"
