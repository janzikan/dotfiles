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

# Disk usage of folders in the current folder
alias duc='du -h -d1'

# .bashrc
alias reloadrc='source ~/.bashrc'

# Start Elasticsearch with custom cluster and node
alias myes='bin/elasticsearch -Des.network.host=127.0.0.1 -Des.cluster.name=zikanj-localhost-cluster -Des.node.name=zikanj-localhost-node'
