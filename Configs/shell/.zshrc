export VISUAL=zed
export EDITOR=fresh
export PAGER=moor
export MOOR='--no-linenumbers --reformat'
export LESSHISTFILE=-

export PATH; path=(
  $path
  ~/.lmstudio/bin
  ~/.antigravity/antigravity/bin
)

alias path='print -l $path'
alias brewfile='brew bundle dump --global --describe --force'
alias dot-track='tuckr push --add --only-files'
