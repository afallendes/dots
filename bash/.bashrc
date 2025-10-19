# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoredups:erasedups

# Operations
shopt -s histappend
shopt -s cdspell
shopt -s checkwinsize

# Functions
mcd() {
    mkdir -p "$1" && cd "$1"
}

# Aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll="ls -lA"
alias h="history"
alias c="clear"
alias r="clear && source ~/.bashrc"
alias t="tree --filesfirst -a -I .git"
alias v="vim"

# Bat
command -v batcat &> /dev/null && alias b="batcat"

# DevBox
command -v devbox &> /dev/null && eval "$(devbox global shellenv)"

# Starship
command -v starship &> /dev/null && eval "$(starship init bash)"
