[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
#[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh

# Use Oh-My-Zsh
# [[ -f ~/.zsh/omz.zsh ]] && source ~/.zsh/omz.zsh

# Load Starship
eval "$(starship init zsh)"

# Load SSH identities on startup
ssh-add -A 2>/dev/null;

# Use tools installed by homebrew instead of OS defaults
# .zshenv did not work for brew doctor
export PATH="/opt/homebrew/bin:$PATH"
