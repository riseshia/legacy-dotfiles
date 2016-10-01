export EDITOR=vim

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# alias
alias e='elixir'
alias gs='git status'
alias gc='git commit'
alias gaa='git add .'
alias gdiff='git diff HEAD'
alias gpush='git push origin'
alias gpull='git pull origin'
alias dive='cd ~/Develop/ && cd'
alias update_brew='brew upgrade && brew update && brew cleanup'

# Retain current working directory when opening a new tab
# https://github.com/revans/bash-it/issues/240
export PROMPT_COMMAND="$PROMPT_COMMAND;update_terminal_cwd;"

