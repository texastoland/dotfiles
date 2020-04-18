# What does the random cow say?
fortune | cowsay -f "$(ls /usr/local/share/cows/*.cow | sort -R | head -1)"
source ~/.cache/p10k-instant-prompt-texas.zsh
source ~/.zprezto/init.zsh

export HISTFILE=/dev/null # disable history
export LESSHISTFILE=/dev/null # disable less history
export LESS='--RAW-CONTROL-CHARS --jump-target=.5 --tabs=4' # or -Rj.5 -x4

alias dotfiles='GIT_WORK_TREE=~ GIT_DIR=~/Documents/dotfiles.git'
# --color=always for piping with color
alias ls='lsd --color=always'
# manually pass ignore patterns as flags
alias tree="ls --tree $(xargs printf " --ignore-glob='%s'" < ~/.config/rg/ignore)"
# --ignore-file= is syntax error
alias fd='noglob fd --color=always --ignore-file ~/.config/rg/ignore'
alias rg='noglob rg --color=always --ignore-file ~/.config/rg/ignore --context=1'

export FZF_DEFAULT_COMMAND="$aliases[fd] --hidden --type=file"
export FZF_ALT_C_COMMAND="$aliases[fd] --hidden --type=directory"
export FZF_CTRL_T_COMMAND="$aliases[fd] --hidden"
export FZF_DEFAULT_OPTS='--ansi'
FZF_PREVIEW_COMMAND='bat --color=always --style=numbers,changes'
alias batfind="fzf --preview='$FZF_PREVIEW_COMMAND {} | head -500'"
alias batgrep="$FZF_PREVIEW_COMMAND --pager 'fzf --tac'"

function batman { batgrep <( eval "man -P ul $@") }
function brewls {
  echo "${@:-$(brew leaves)}" \
    | xargs brew deps --tree \
    | grep --color=never '\S'
}

# eval "$(direnv hook zsh)"
source ~/.p10k.zsh
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh
