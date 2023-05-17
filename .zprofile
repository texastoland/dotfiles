[[ -r $BROOT_INIT ]] || broot --install
source $BROOT_INIT
source $LAZYGIT_INIT

RTX_PATH=$(brew --prefix rtx)/shims
CONSOLE_NINJA_PATH=$HOME/.console-ninja/.bin
export PATH=$CONSOLE_NINJA_PATH:$RTX_PATH:$PATH

alias unhist='rm -rf $HISTFILE $SHELL_SESSION_DIR && exit'
