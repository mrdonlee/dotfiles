source <(fzf --zsh)

eval "$(starship init zsh)"

# Enable syntax highlighting
autoload -U colors && colors

# Aliases
source "$HOME/.config/sh/aliases.sh"

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
. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"

# opencode
export PATH=$HOME/.opencode/bin:$PATH
