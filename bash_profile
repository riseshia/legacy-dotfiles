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

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

# Retain current working directory when opening a new tab
# https://github.com/revans/bash-it/issues/240
export PROMPT_COMMAND="$PROMPT_COMMAND;update_terminal_cwd;"

export PATH="/usr/local/share/git-core/contrib/diff-highlight/:${PATH}"

# alias
alias be='bundle exec'
alias dive='cd ~/Develop/ && cd'
alias e='elixir'
alias ga='git add'
alias gc='git commit'
alias gd='git diff HEAD'
alias gn='git checkout -b'
alias go='git checkout'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gs='git status'
alias go='git checkout'
alias rs='bin/rails server'
alias update_brew='brew upgrade && brew update && brew cleanup'

