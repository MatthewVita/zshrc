# oh-my-zsh installation path
export ZSH=/home/matthew/.oh-my-zsh

# Theme (https://github.com/robbyrussell/oh-my-zsh/wiki/themes#nicoulaj)
ZSH_THEME="nicoulaj"

# Auto-update every 7 days
export UPDATE_ZSH_DAYS=7

# Command auto-correction
ENABLE_CORRECTION="true"

# Plugins
plugins=(git docker grunt gulp spring vundle vi-mode npm pip mvn)

# Init script
source $ZSH/oh-my-zsh.sh

# Use vim as system editor
export EDITOR='vim'

# Quick find (https://matt.blissett.me.uk/linux/zsh/zshrc)
f() {
  echo "find . -iname \"*$1*\""
  find . -iname "*$1*"
}

# History settings (https://matt.blissett.me.uk/linux/zsh/zshrc)
export HISTSIZE=25000
export HISTFILE=~/.zsh_history
export SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# cd back function
up() {
  cd $(eval printf '../'%.0s {1..$1}) && pwd;
}

# Git helpers
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gl='git log --graph --abbrev-commit --pretty=oneline --decorate'
alias gco='git checkout'

# mkdir + cd
mkdircd () {
  mkdir -p "$@" && eval cd "\"\$$#\"";
}

# Directory listing aliases
alias ls='pwd; ls --color'
alias sl='ls'
alias l='ls'
alias dir='ls'

# Clear alias
alias cls='clear'
alias c='clear'

# Use Vim mode in terminal
set -o vi

# Deletes git 'orig' files
delOrig() {
  find . -name "*.orig" -delete
}

# Open file explorer (e.x.: `open .`)
alias open='gnome-open'

# Complete newer files last (http://stackoverflow.com/a/171564/1525534)
zstyle ':completion:*' file-sort modification reverse

# dk === docker kill
dk() {
  docker system prune -a --volumes
}

# Git Delete All But Master === GDABM
alias gdabm="git branch | grep -v "master" | xargs git branch -D"
