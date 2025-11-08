# 🛠️ Dotfiles

![Nvim Badge](https://img.shields.io/badge/Neovim-grey?style=flat-square&logo=Neovim&logoColor=white)
![Starship Badge](https://img.shields.io/badge/-Starship-grey?style=flat-square&logo=starship)
![tmux Badge](https://img.shields.io/badge/tmux-grey?style=flat-square&logo=tmux&logoColor=white)
![Warp Badge](https://img.shields.io/badge/Warp-grey?style=flat-square&logo=warp&logoColor=white)
![zsh Badge](https://img.shields.io/badge/zsh-grey?style=flat-square&logo=gnu-bash&logoColor=white)

Config files for my Linux and MacOS workspace.

```
dotfiles/
├── gnupg/
├── goto/
├── homebrew/
├── neofetch/
├── nvim/
├── starship/
├── tmux/
├── warp/
├── zsh/
```

## Setup

1. Install Homebrew
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
2. Clone the repository
   ```bash
   git clone https://github.com/jmetrikat/dotfiles.git
   ```
3. Install Brewfile
   ```bash
   brew bundle
   ```
4. Run setup.sh
   ```bash
   ./setup.sh
   ```

## Troubleshooting

### Warp Workflows

Warp workflows may need to be manually copied into Warp Drive if automatic syncing doesn't work.

### LaTeX Setup

BasicTeX is required for VSCode LaTeX Workshop. After installing with `brew install basictex`, run the following commands to install necessary packages:
