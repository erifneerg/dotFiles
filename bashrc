#brew ordering
/usr/local/bin
source "`brew --prefix grc`/etc/grc.bashrc"

#Vim mode in bash?!
set -o vi

# for tmux: export 256color
export TERM=screen-256color

#force 256 when possible
export TERM=xterm-256color

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias pb='pianobar'
alias v='vim'
alias g='git'
alias bu='brew update && brew upgrade'
alias gu='sudo gem update'
