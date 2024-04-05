# all shells
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DATA_HOME=$HOME/.local/share
export GENERATED_SCRIPTS=$XDG_DATA_HOME/scripts
export GIT_REPOS_HOME=$HOME/Developer # from nu-git-manager
export DOTFILES_GIT_DIR=$GIT_REPOS_HOME/dotfiles.git # from nu-git-manager-sugar

# for scripts
alias dot='GIT_DIR=$DOTFILES_GIT_DIR GIT_WORK_TREE=$HOME'
alias bunx='bun x --bun'
