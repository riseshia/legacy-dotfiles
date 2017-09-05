eval "$(rbenv init -)"
eval "$(pyenv init -)"

export EDITOR=vim

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

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
alias c='clear'
alias deploy='bundle exec cap production deploy'
alias e='elixir'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff HEAD'
alias gg='git grep'
alias gpull='git pull origin'
alias gpu='git pull upstream master'
alias gpush='git push origin'
alias gs='git status'
alias rs='bin/rails server'
alias update_brew='brew upgrade && brew update && brew cleanup'
alias run_pg='pg_ctl -D /usr/local/var/postgres start'

# custom functions
export PATH="$HOME/.bash_functions:${PATH}"

# brew git
export PATH="/usr/local/share/git-core/contrib/diff-highlight:${PATH}"

# maat
export PATH="/Users/shia/bin:${PATH}"

# yarn
export PATH="$HOME/.yarn/bin:${PATH}"

# python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
