source <(fzf --zsh)

eval "$(starship init zsh)"

# Enable syntax highlighting
autoload -U colors && colors

# Aliases
alias dgit='git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# Auto-completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab completion


. "$HOME/.local/bin/env"
