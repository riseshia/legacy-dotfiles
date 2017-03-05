eval "$(rbenv init -)"
eval "$(pyenv init -)"

export EDITOR=vim

# Path to the bash it configuration
export BASH_IT="/Users/Shia/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='minimal'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source $BASH_IT/bash_it.sh

# alias
alias be='bundle exec'
alias deploy='bundle exec cap production deploy'
alias dive='cd ~/Develop/ && cd'
alias e='elixir'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff HEAD'
alias gn='git checkout -b'
alias go='git checkout'
alias go='git checkout'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gs='git status'
alias rs='bin/rails server'
alias update_brew='brew upgrade && brew update && brew cleanup'
alias v='vim .'

# custom functions
export PATH="$HOME/.bash_functions:${PATH}"

# brew git
export PATH="/usr/local/share/git-core/contrib/diff-highlight/:${PATH}"

# maat
export PATH="/Users/shia/bin/:${PATH}"

# yarn
export PATH="$HOME/.yarn/bin:${PATH}"

# python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
