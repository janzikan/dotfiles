# ls aliases
alias ll='ls -lA'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../../'

# Git
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdw='git diff --word-diff'
alias gsl='git stash list'

# Go to git project root directory
alias cdr='cd $(git rev-parse --show-cdup)'

# Run Rubocop on all added/modified files
alias rcopam='rubocop $(git diff --name-only --diff-filter=MA)'

# Validate all modified elm files
alias elmval='elm-format --validate `git diff --name-only -- "*.elm"`'

# Screen
alias sl='screen -ls'

# Disk usage of folders in the current folder
alias duc='du -h -d1'

# .bashrc
alias reloadrc='source ~/.bashrc'
