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

case "$OSTYPE" in
  darwin*)
    # Use tools installed by homebrew instead of OS defaults
    export PATH="/opt/homebrew/bin:$PATH"

    # Set PATH and FLAGS for llvm
    export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
    export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

    # Set PATH for curl
    export PATH="/opt/homebrew/opt/curl/bin:$PATH"

    # Set PATH for go
    export GOPATH="$HOME/golang"
    export GOROOT="/opt/homebrew/Cellar/go/1.22.4/libexec"
    export PATH="$PATH:$GOPATH/bin"
    export PATH="$PATH:$GOROOT/bin"

    # tmp
    export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
    export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"

    # Set PATH for coreutils
    export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
  ;;
  linux*)
    # Set PATH for go
    export GOPATH="$HOME/go"
    export GOROOT="/usr/local/go"
    export PATH="$PATH:$GOPATH/bin"
    export PATH="$PATH:$GOROOT/bin"
  ;;
esac
