# Export LANG and LC_CTYPE to en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set Nvim as default editor
export VISUAL=nvim || export VISUAL=vim
export EDITOR="$VISUAL"

if [[ "$OSTYPE" == "darwin"* ]]; then
    # NVM directory
    export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

    # Use tools installed by homebrew instead of OS defaults
    export PATH="/usr/local/bin:$PATH"
    export PATH="/opt/homebrew/sbin:$PATH"

    # Set PATH, MANPATH, etc. for Homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Set PATH for openjdk@20
    export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
    export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

    # Set FLAGS for curl
    export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

    # opam configuration
    [[ ! -r /Users/jmetrikat/.opam/opam-init/init.zsh ]] || source /Users/jmetrikat/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

    # Set default docker platform
    export DOCKER_DEFAULT_PLATFORM=linux/arm64

    # Set PATH for hugot
    export PATH="$HOME/.local/bin:$PATH"

    # Set PATH for python
    export PATH="$HOME/Library/Python/3.12/bin:$PATH"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then

fi

# Disable shell session recording
export SHELL_SESSIONS_DISABLE=1

# Disable less history
export LESSHISTFILE=/dev/null

# Disable node repl history
export NODE_REPL_HISTORY=""
