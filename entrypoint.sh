#!/bin/sh

mkdir ~/.ssh
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa
ssh-keyscan -p 50022 -H 146.59.158.16 > ~/.ssh/known_hosts && chmod 700 ~/.ssh/known_hosts
ssh "$INPUT_USERNAME"@"$INPUT_HOST" -p "$INPUT_PORT"
