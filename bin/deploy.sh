#!/bin/bash

UNAME=$(uname -a)

if echo "$UNAME" | grep -q 'Darwin'; then
  bash ${DOTFILES_DIR}/etc/osx/deploy.sh
elif echo "$UNAME" | grep -q 'Ubuntu'; then
  bash ${DOTFILES_DIR}/etc/ubuntu/deploy.sh
elif echo "$UNAME" | grep -q 'microsoft'; then
  # wsl
  if grep '^NAME="Ubuntu' '/etc/os-release' >/dev/null; then
    # wsl ubuntu
    bash ${DOTFILES_DIR}/etc/ubuntu/deploy.sh
  else
    echo 'unsupporting'
    exit 1
  fi
else
  echo 'unsupporting'
  exit 1
fi
