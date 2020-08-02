# Setting up bash prompt

# Enable tab completion
source ~/git-completion.bash
# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# Aliases
alias ls='ls -G'
alias v='nvim'
alias vim='nvim'

# PATH exports
# Adding PATH for personal scripts
export PATH="$HOME/bin:$PATH"
# Add PATH for homebrew
export PATH="/usr/local/sbin:$PATH"

# Exports
export HOMEBREW_NO_ANALYTICS=1              # Opt out of Homebrew analytics
export BASH_SILENCE_DEPRECATION_WARNING=1   # Hide "default interactive shell is now zsh" warning on macOS
export EDITOR='vim'
