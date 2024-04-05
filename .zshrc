# all interactive shells
export EDITOR=micro
export VISUAL=zed
export PAGER=moar
export MOAR='--wrap --no-linenumbers --no-clear-on-exit --mousemode scroll'
export LESSHISTFILE=-

export STARSHIP_CONFIG=$GENERATED_SCRIPTS/starship.toml
SHELL_NAME=${ZSH_VERSION:+zsh}${BASH_VERSION:+bash} # sourced in .bashrc
HISTORY_FILES=(
  "$HISTFILE"
  "$HOME/.${SHELL_NAME}_sessions" # Mac default
)

alias clear-history='history -p'
alias reset-history='clear-history && rm -rf "${HISTORY_FILES[@]}" && reset'
alias path='echo $PATH | tr  ":" "\n"' # zsh> print -l $path
alias e='$EDITOR'
alias v='$VISUAL'
alias lg=lazygit

eval "$(broot --print-shell-function "$SHELL_NAME")"
eval "$(starship init "$SHELL_NAME")"
# jdx/mise#1886
if [[ -t 0 ]]; then
  eval "$(mise activate "$SHELL_NAME")"
else
  eval "$(mise activate --shims)"
  PATH=$HOME/.console-ninja/.bin:$PATH
fi
