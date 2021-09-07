#!/bin/bash

export DOTFILES_DIR=$(cd $(dirname $0); pwd)

while getopts 'di' flag; do
  case "${flag}" in
    d) bash ${DOTFILES_DIR}/bin/deploy.sh
      ;;
    i) bash ${DOTFILES_DIR}/bin/init.sh
      ;;
    *) bash ${DOTFILES_DIR}/bin/init.sh
      bash ${DOTFILES_DIR}/bin/deploy.sh
      ;;
  esac
done

unset DOTFILES_DIR
