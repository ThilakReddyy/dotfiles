#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# custom aliases
# custom aliases
alias cls='clear'
alias venvcreate='python -m venv venv'
alias activate='source venv/bin/activate'
alias jntuhfrontend='cd ~/github/projects/jntuhresults_new && nvim .'
alias jntuhbackend='cd ~/github/projects/JNTUHRESULTS-SERVICE && activate && nvim .'
alias jobs='cd ~/github/projects/randomprojects/jobs/google/jobs/ && activate && nvim .'
alias n.="nvim ."

alias djangostart='activate && python manage.py runserver'

#git aliases
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gpull='git pull'
alias bashrc='nvim ~/.bashrc'

#npm/node aliases
alias ni='npm install'
alias nrd='npm run dev'
alias nrb='npm run build'
alias ns='npm start'

#temporary
alias zoomclone="cd ~/harkiratclasses/projec/zoom && nvim ."
alias cpprun="g++ firstcode.cpp -o firstcode && ./firstcode "
