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
    export GOROOT="$(brew --prefix go)/libexec"
    export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

    # tmp
    export PATH="/opt/homebrew/opt/node/bin:$PATH"
    export PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"

    # Set PATH for coreutils
    export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"

    # Perl local lib
    PATH="/Users/jmetrikat/perl5/bin${PATH:+:${PATH}}"; export PATH;
    PERL5LIB="/Users/jmetrikat/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
    PERL_LOCAL_LIB_ROOT="/Users/jmetrikat/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
    PERL_MB_OPT="--install_base \"/Users/jmetrikat/perl5\""; export PERL_MB_OPT;
    PERL_MM_OPT="INSTALL_BASE=/Users/jmetrikat/perl5"; export PERL_MM_OPT;

    # Added by LM Studio CLI (lms)
    export PATH="$PATH:/Users/jmetrikat/.cache/lm-studio/bin"

    # ray autocomplete setup
    RAY_AC_ZSH_SETUP_PATH=/Users/jmetrikat/Library/Caches/ray/autocomplete/zsh_setup && test -f $RAY_AC_ZSH_SETUP_PATH && source $RAY_AC_ZSH_SETUP_PATH;

    # Added by Windsurf
    export PATH="/Users/jmetrikat/.codeium/windsurf/bin:$PATH"

    # zsh-z
    source /Users/jmetrikat/Code/local/zsh-z/zsh-z.plugin.zsh
  ;;
  linux*)
    # Set PATH for go
    export GOPATH="$HOME/go"
    export GOROOT="/usr/local/go"
    export PATH="$PATH:$GOPATH/bin"
    export PATH="$PATH:$GOROOT/bin"
  ;;
esac

if [[ "$(hostname)" == "MacBook-Pro-telli" ]]; then
  eval "$(mise activate zsh)"
  eval "$(atuin init zsh)"
fi
