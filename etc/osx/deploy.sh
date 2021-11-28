# fish-shell
mkdir -p ~/.config/fish/functions/
ln -sfn ${DOTFILES_DIR}/.config/fish/config.fish ~/.config/fish/
ln -sfn ${DOTFILES_DIR}/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/
ln -sfn ${DOTFILES_DIR}/.config/fish/functions/la.fish ~/.config/fish/functions/
ln -sfn ${DOTFILES_DIR}/.config/fish/functions/u.fish ~/.config/fish/functions/
ln -sfn ${DOTFILES_DIR}/.config/fish/functions/uu.fish ~/.config/fish/functions/

fish ${DOTFILES_DIR}/etc/fish/color.fish
fish ${DOTFILES_DIR}/etc/fish/powerline-go-extra.fish

# httpie
mkdir -p ~/.httpie
ln -sfn ${DOTFILES_DIR}/.httpie/config.json ~/.httpie/

# vim
ln -sfn ${DOTFILES_DIR}/.vimrc ~/.vimrc

# git
mkdir -p ~/.cofig/git
grep -sq "~/.config/git/myconfig" ~/.config/git/config || ln -sfn ${DOTFILES_DIR}/.config/git/myconfig ~/.config/git/myconfig && \
  printf "\n[include]\n\tpath = ~/.config/git/myconfig" >> ~/.config/git/config
