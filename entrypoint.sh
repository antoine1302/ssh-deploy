#!/bin/sh

mkdir ~/.ssh && touch ~/.ssh/known_hosts

ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" >> ~/.ssh/known_hosts && chmod 700 ~/.ssh/known_hosts

ssh "$INPUT_USERNAME"@"$INPUT_HOST" -p "$INPUT_PORT" touch testfile_from_today.txt
