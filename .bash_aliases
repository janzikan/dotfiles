# ls aliases
alias ll='ls -lA'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../../'

# Git
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'

# Go to git project root directory
alias cdr='cd $(git rev-parse --show-cdup)'

# Screen
alias sl='screen -ls'

# .bashrc
alias reloadrc='source ~/.bashrc'
