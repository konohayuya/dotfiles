#!/bin/bash

export DOTFILES_DIR=$(cd $(dirname $0); pwd)

bash ${DOTFILES_DIR}/bin/init.sh
bash ${DOTFILES_DIR}/bin/deploy.sh

unset DOTFILES_DIR
