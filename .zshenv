export EDITOR=nano
export VISUAL=$EDITOR
export LESSHISTFILE=-
export XDG_CONFIG_HOME=~/.config
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config

BROOT_INIT=$XDG_CONFIG_HOME/broot/launcher/bash/br
LAZYGIT_INIT=$XDG_CONFIG_HOME/lazygit/lg
DOTFILES_REPO=$HOME/Documents/dotfiles.git

alias dotfiles='GIT_DIR=$DOTFILES_REPO GIT_WORK_TREE=$HOME'
