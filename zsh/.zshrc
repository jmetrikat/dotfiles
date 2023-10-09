# Load aliases and functions
if [ -d "$HOME/.zsh" ]; then
  for file in $HOME/.zsh/*.zsh; do
    source $file
  done
fi

# Load Starship
eval "$(starship init zsh)"

# Load SSH identities on startup
ssh-add -A 2>/dev/null;

# Use tools installed by homebrew instead of OS defaults
export PATH="/opt/homebrew/bin:$PATH"

# Set PATH and FLAGS for llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# Set PATH for curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Set PATH for go
export PATH="$PATH:~/go/bin"
