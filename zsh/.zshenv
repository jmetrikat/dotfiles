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
export PATH="/opt/homebrew/sbin:$PATH"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set PATH for openjdk@11
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

# Set FLAGS for curl
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# Disable shell session recording
export SHELL_SESSIONS_DISABLE=1

# Disable less history
export LESSHISTFILE=/dev/null

# Disable node repl history
export NODE_REPL_HISTORY=""
