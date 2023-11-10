# .bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# alias
alias ll='ls -alG'
alias u='cd ../'
alias uu='cd ../../'
alias uuu='cd ../../../'
alias gl='git gl'
alias gla='git gl --all'
alias gs='git switch'
alias gp='git pull --rebase'
alias gpu='git pull --rebase -u'
alias gf='git push'
alias gb='git branch'
alias gc='git commit'
alias gru='git remote update -p'
