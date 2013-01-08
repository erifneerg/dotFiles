#short hand
alias clr='clear'
#apache
alias apstart='sudo apachectl start'
alias apstop='sudo apachectl stop'
alias vh='vim /etc/hosts' 
#tmux 
#alias tmux='tmux -2'
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
