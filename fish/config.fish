#!/usr/bin/env fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable welcome message
set -g fish_greeting

# Enable starship prompt
starship init fish | source 

# Aliases
alias c="clear"
alias r="clear && source ~/.config/fish/config.fish" 
