export CLICOLOR=1
export PS1="\n\u\e[0;32m@\e[m\h \w\n>"

PATH="/usr/local/bin:$PATH"
#Start tmux
#[[ $TERM = "xterm" ]] && { tmux && exit 0; }
./usr/local/Cellar/drush/5.8/
libexec/drush
## for tmux: export 256color
#force 256 when possible
export TERM=xterm-256color
export TERM=screen-256color

export DRUSH_PHP=/Applications/MAMP/bin/php/php5.4.4/bin/php
export PATH=$PATH:/Applications/MAMP/Library/bin

###########
#Alias fun!
###########

#short hand
alias clr='clear'
alias gt='gittower'
alias vrc='vim ~/.vimrc' 
#apache
alias apstart='sudo apachectl start'
alias apstop='sudo apachectl stop'
alias vh='vim /etc/hosts' 
#apache mac
alias vvh="vim /applications/MAMP/conf/apache/httpd.conf"
#tmux 
alias tmux='tmux -2'
alias vt='vim ~/.tmux.conf' 
alias ta='tmux attach'
alias t='tmux'
#bash
alias vbr='vim ~/.bashrc'
alias vbp='vim ~/.bash_profile'
alias rb='source ~/.bashrc && source ~/.bash_profile && echo .bashrc and .bash_profile have been reloaded'
#ls 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# apps
alias otx="open -a textual"
alias pb='pianobar'
alias dr='drush'
alias v='vim'
alias g='git'
alias ed='ed -p:'
# brew  
alias bu='brew update && brew upgrade'
alias bd='brew doctor'
alias bl='brew link'
#gem 
alias gu='sudo gem update'
alias o='open'
#mac 
alias oa='open -a'
#youtubedownloader
alias ytd='youtube-dl'
alias ytda='youtube-dl --extract-audio --audio-format m4a' 
#SASS & Compass
alias cw='compass watch'
alias cwd='compass watch --debug-info'
#SSH
alias smt='ssh tingreendoor.com@s85361.gridserver.com' 

fp () { #find and list processes matching a case-insensitive partial-match string
      ps Ao pid,comm|awk '{match($0,/[^:register
      ]+$/); print substr($0,RSTART,RLENGTH)": "$1}'|grep -i $1|grep -v grep
    }

    fk () { 
        IFS=$'\n'
          PS3='Kill which process? (1 to cancel): '
            select OPT in "Cancel" $(fp $1); do
                  if [ $OPT != "Cancel" ]; then
                          kill $(echo $OPT|awk '{print $NF}')
                              fi
                                  break
                                    done
                                      unset IFS
                                    }
