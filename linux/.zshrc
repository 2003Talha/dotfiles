# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/talha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable ls color like Ubuntu
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C'

# Fancy prompt like Ubuntu
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

PROMPT='[%F{green}%n@%m%f:%F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f]$ '
#PROMPT='[%n@%m %1~]$ '

# Enable color for completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Show fastfetch if installed
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi

# Created by `pipx` on 2025-09-20 07:57:14
export PATH="$PATH:/home/talha/.local/bin"

# Set editor for sudoedit command
# export VISUAL=nvim
# export Editor=nvim
source ~/.zshenv
