#brew ordering
/usr/local/bin
source "`brew --prefix grc`/etc/grc.bashrc"

# for tmux: export 256color
#[ -n "$TMUX" ] && export TERM=screen-256color

#force 256 when possible
export TERM=xterm-256color

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
