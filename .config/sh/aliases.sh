alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# fzf aliases
alias f='fzf --preview "bat --style=numbers --color=always {}"'
alias edit='fzf --preview "bat --style=numbers --color=always {}" | xargs -r $EDITOR'
