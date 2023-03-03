# Export LANG and LC_CTYPE to en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set Nvim as default editor
export VISUAL=nvim || export VISUAL=vim
export EDITOR="$VISUAL"

# NVM directory
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Use tools installed by homebrew instead of OS defaults
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Set PATH for Python 3.9
export PATH='/Users/jmetrikat/Library/Python/3.9/bin'

# Set PATH for openjdk@11
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Disable shell session recording
export SHELL_SESSIONS_DISABLE=1

# Disable less history
export LESSHISTFILE=/dev/null

# Disable node repl history
export NODE_REPL_HISTORY=""
