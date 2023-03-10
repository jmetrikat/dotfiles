#==============
# xcad alias
#==============
# alias k="kubectl"
# alias h="helm"
# alias tf="terraform"
# alias a="ansible"
# alias ap="ansible-playbook"
# alias dt="datree"

#==============
# mac OS shortcuts
#==============
alias vscode="open -a 'Visual Studio Code'"
alias sudo='sudo '
alias ofd='open $PWD'
alias c="clear"
alias h="history"
alias r='source ~/.zshrc'
alias g='goto'

#==============
# exa shortcuts
#==============
if [$(which exa &> /dev/null) $? -eq 0 ]; then
    alias ls="exa --icons --group-directories-first"
    alias la="exa --icons --group-directories-first -a"
    alias ll="exa --icons --group-directories-first -hl"
    alias ld='ls -d */'
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
# brew shortcuts
#==============
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
alias gco='git checkout'
alias gcmsg='git commit -m'
alias gd='git diff'
alias glg='git log'
alias gl='git pull'
alias gcl='git clone --recurse-submodules'
alias gp='git push'
alias grh='git reset'
alias gst='git status'

#==============
# update shortcuts
#==============
alias global_update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g" # sudo gem update --system; sudo gem update; sudo gem cleanup
alias pip_upgrade_all="pip --disable-pip-version-check list --outdated --format=json | python -c \"import json, sys; print('\n'.join([x['name'] for x in json.load(sys.stdin)]))\" | xargs -n1 pip3 install -U"
