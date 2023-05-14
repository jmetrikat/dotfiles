autoload -Uz compinit
compinit

if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  source "$(brew --prefix)/etc/bash_completion.d/goto.sh"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Ubuntu
  source "/usr/local/share/goto.sh"
fi
