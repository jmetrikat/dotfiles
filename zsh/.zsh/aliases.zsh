#==============
# xcad alias
#==============
alias a="ansible"
alias ap="ansible-playbook"

#==============
# general shortcuts
#==============
alias sudo='sudo '
alias c="clear"
alias h="history"
alias r='source ~/.zshrc'
alias g='goto'

#==============
# eza shortcuts
#==============
if [$(which eza &> /dev/null) $? -eq 0 ]; then
    alias ls="eza --icons --group-directories-first"
    alias la="eza --icons --group-directories-first -a"
    alias ll="eza --icons --group-directories-first -hl"
    alias ld='ls -d */'
fi

#==============
# nvim shortcuts
#==============
if [$(which nvim &> /dev/null) $? -eq 0 ]; then
    alias vim="nvim"
    alias vi="nvim"
    alias v="nvim"
fi

#==============
# system commands
#==============
alias grep='grep --color'
alias df='df -h'
alias du='du -ch'

case "$OSTYPE" in
  darwin*)
    # macos specific aliases
    alias lsblk="diskutil list"
    alias vscode="open -a 'Visual Studio Code'"
    alias ofd='open $PWD'
  ;;
  linux*)
    # linux specific aliases
  ;;
esac

#==============
# cd shortcuts
#==============
alias .='cd && ld'
alias ..='cd .. && ld'
alias ...='cd ../.. && ld'
alias ,='cd'
alias ,,='cd ..'
alias ,,,='cd'

#==============
# package manager shortcuts
#==============
case "$OSTYPE" in
  darwin*)
    alias bup="brew update"
    alias bug="brew upgrade"
    alias bubu="brew update && brew upgrade"
    alias bl="brew list"
    alias bo="brew outdated"
    alias bs="brew search"
    alias bf="brew info"
    alias bi="brew install"
    alias bu="brew uninstall"
    alias ba="brew autoremove"
    alias bd="brew doctor"
    alias bc="brew cleanup --prune=all"
    alias bb="brew bundle"
  ;;
  linux*)
    alias aup="sudo apt update"
    alias aug="sudo apt upgrade"
    alias auau="sudo apt update && sudo apt upgrade"
    alias al="apt list --installed"
    alias ao="apt list --upgradable"
    alias as="apt search"
    alias af="apt show"
    alias ai="sudo apt install"
    alias au="sudo apt remove"
    alias aa="sudo apt autoremove"
    alias ac="sudo apt clean"
  ;;
esac

#==============
# python shortcuts
#==============
if [$(which python3.11 &> /dev/null) $? -eq 0 ]; then
    alias python="python3.11"
    alias py="python3.11"
fi

if [$(which pip3.11 &> /dev/null) $? -eq 0 ]; then
    alias pip="pip3.11"
fi

#==============
# git shortcuts
#==============
# alias g='git'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gm='git merge'
alias gcmsg='git commit -m'
alias gd='git diff'
alias glg='git log'
alias gl='git pull'
alias gcl='git clone --recurse-submodules'
alias gp='git push'
alias grh='git reset'
alias gst='git status'
alias gsh='git show'
alias gs='git submodule '
alias gla='for dir in */; do cd "$dir" && [[ -d .git ]] && git pull; cd ..; done'


#==============
# code shortcuts
#==============
if [$(which make &> /dev/null) $? -eq 0 ]; then
    alias m='make'
    alias mc='make clean'
fi

#==============
# update shortcuts
#==============
alias global_update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g" # sudo gem update --system; sudo gem update; sudo gem cleanup
alias pip_upgrade_all="pip --disable-pip-version-check list --outdated --format=json | python -c \"import json, sys; print('\n'.join([x['name'] for x in json.load(sys.stdin)]))\" | xargs -n1 pip3 install -U"
