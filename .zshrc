## Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"


# Use Homebrew version before system (git, python, etc)
export PATH=/usr/local/bin:$PATH


# OS Shortcuts
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Deploy
export DPL_NAME=peter

# Git dot files
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Make OSX key combos available > Mostly done in iTerm profile
bindkey "^X\x7f" backward-kill-line
bindkey "^X^_" redo

# NVM
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion