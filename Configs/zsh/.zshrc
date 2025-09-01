export EDITOR=edit
export PAGER=moor
export MOOR='--no-linenumbers --reformat'
export LESSHISTFILE=-

alias path='print -l $path'

tuckr_adopt() {
  local group=$1
  shift
  tuckr push $group $@
  tuckr add $group --force -y
}

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/texas/.lmstudio/bin"
# End of LM Studio CLI section
