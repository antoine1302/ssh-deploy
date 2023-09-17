#!/bin/bash

mkdir ~/.ssh
echo "$INPUT_KEY" > ~/.ssh/id_rsa && chmod 700 ~/.ssh/id_rsa
ssh-keyscan -p "$INPUT_PORT" -H "$INPUT_HOST" >> /etc/ssh/ssh_known_hosts
path_on_remote="/home/$INPUT_USERNAME/projects/$INPUT_REPOSITORY/$(date +"%Y-%m-%d")/$(date +"%Y%m%d%H%M%S")"
ssh -i /github/home/.ssh/id_rsa "$INPUT_USERNAME@$INPUT_HOST" -p "$INPUT_PORT" mkdir -p "$path_on_remote"
rsync -avzh -e "ssh -i /github/home/.ssh/id_rsa -p $INPUT_PORT" ./ "$INPUT_USERNAME@$INPUT_HOST:$path_on_remote/"
