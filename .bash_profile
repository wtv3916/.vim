# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-chalk.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Tmux git
#echo "if [[ \$TMUX ]]; then source ~/.tmux-git/tmux-git.sh; fi" >> ~/.bash_profile

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"
  local GITBRANCH="\$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"

#  export PS1="[ $GREEN\t $CYAN\u$RESETCOLOR@$PURPLE\h$YELLOW\w $CYANBOLD$GITBRANCH$RESETCOLOR ] $CYANBOLD → $RESETCOLOR "
  export PS1="[ $BLUE\u@\h $YELLOW\w $PURPLEBOLD$GITBRANCH$RESETCOLOR ] $CYANBOLD → $RESETCOLOR "
  export PS2=" | → $RESETCOLOR"
}
prompt

#export PS1="[ \d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]branch: \$(git rev-parse --abbrev-ref HEAD 2> /dev/null)] $ "
#export PS1="\n$CYAN\u@\h $WHITE\w $RESETCOLOR$PURPLE\$(git rev-parse --abbrev-ref HEAD 2> /dev/null)\n $BLUE[\#] → $RESETCOLOR"
export PS2=" | → $RESETCOLOR"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'
alias torrents='cd ~/Documents/Downloads'
alias projects='cd ~/Documents/Projects'
alias workspace='cd ~/workspace'
alias playground='cd ~/workspace/playground'
alias vim="/usr/local/bin/vim"


#export NODE_PATH=/usr/local/lib/node_modules
export NODE_PATH=$NODE_PATH:`npm root -g`

export ENV=develop
export PORT=8000
export PROTOCOL=https
export FIREBASE_URL=https://blistering-inferno-462.firebaseio.com/

export NVM_DIR="/Users/chungsam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
