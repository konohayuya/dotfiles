#!/bin/bash

UNAME=$(uname -a)

if echo "$UNAME" | grep -q 'Darwin'; then
  bash ${DOTFILES_DIR}/etc/osx/init.sh
elif echo "$UNAME" | grep -q 'Ubuntu'; then
  bash ${DOTFILES_DIR}/etc/ubuntu/init.sh
else
  echo 'unsupporting'
  exit 1
fi
