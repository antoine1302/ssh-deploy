#!/bin/sh

mkdir -p ~/.ssh

echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa

ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" >> /etc/ssh/ssh_known_hosts
ssh "$INPUT_USERNAME@$INPUT_HOST" -p "$INPUT_PORT"
