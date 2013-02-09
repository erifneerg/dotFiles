export CLICOLOR=1
export PS1="\n\u\e[0;32m@\e[m\h \w\n>"

PATH="/usr/local/bin:$PATH"

## for tmux: export 256color
#force 256 when possible
export TERM=xterm-256color
export TERM=screen-256color

#export DRUSH_PHP=/Applications/MAMP/bin/php/php5.4.4/bin/php
#export PATH=$PATH:/Applications/MAMP/Library/bin

#load aliases
source ~/.bash_alias

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
