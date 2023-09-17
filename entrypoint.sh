#!/bin/sh

mkdir ~/.ssh
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa
ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" >> /etc/ssh/ssh_known_hosts
current_date=current_date_time=$(date +"%Y-%m-%d")
rsync -avzh -e "ssh -i /github/home/.ssh/id_rsa -p $INPUT_PORT" ./ "$INPUT_USERNAME@$INPUT_HOST:~/projects/$INPUT_REPOSITORY/$current_date/"
