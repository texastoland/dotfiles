# all login shells
# but Mac waits to initialize PATH until /etc/zprofile
# and Homebrew needs prepended instead of appended in .zshenv
export PATH=/home/linuxbrew/.linuxbrew/bin:/opt/homebrew/bin:$PATH
