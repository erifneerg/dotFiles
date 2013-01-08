export CLICOLOR=1
export PS1="\n\u\e[0;32m@\e[m\h \w\n>"

PATH="/usr/local/bin:$PATH"
# Start tmux
[[ $TERM = "xterm" ]] && { tmux && exit 0; }
## for tmux: export 256color
alias tmux='tmux -2'

##force 256 when possible
export TERM=xterm-256color
export TERM=screen-256color

export DRUSH_PHP=/Applications/MAMP/bin/php/php5.4.4/bin/php
export PATH=$PATH:/Applications/MAMP/Library/bin

if [ -f ~/.bashrc ]; then
source ~/.bashrc
fi


