export XDG_CONFIG_HOME=~/.config
export MAC_CONFIG_HOME=~/Library/Application\ Support

export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
export XDG_BIN_HOME=~/.local/bin

export PROJECTS_DIR=~/Developer
export TUCKR_HOME=$PROJECTS_DIR

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh)"
source ~/.orbstack/shell/init.zsh

export PATH; path=(
  $XDG_BIN_HOME
  $path
  $MAC_CONFIG_HOME/JetBrains/Toolbox/scripts
)
