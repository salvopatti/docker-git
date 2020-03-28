#!/bin/sh

mkdir -p ~/.ssh
echo "Host *">>~/.ssh/config
echo "  StrictHostKeyChecking no">>~/.ssh/config
cat ~/.ssh/config
eval `ssh-agent`
ssh-add /entry/id_rsa
git "$@"