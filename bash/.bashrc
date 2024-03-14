#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Exports

export EDITOR="nvim"
export MANPAGER="nvim -c 'set ft=man' -"
export HISTCONTROL=ignoreboth
shopt -s xpg_echo

# Aliases
alias ls='ls --color=auto'
alias v='nvim'
alias l='exa -la --no-time'
alias pacs='sudo pacman -S'
