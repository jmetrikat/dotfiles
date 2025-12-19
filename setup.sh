#==============
# Pre Install
#==============
echo "====== Starting setup ======"

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew doctor
# brew update
sleep .5

#==============
# Remove old dotflies
#==============
echo "\n====== Removing old dotfiles ======"
rm ~/.gnupg/gpg-agent.conf
rm ~/.config/goto
rm ~/.config/neofetch
rm ~/.config/nvim
rm ~/.config/starship.toml
rm ~/.tmux.conf
rm ~/.warp
rm ~/.zsh
rm ~/.zshrc
rm ~/.zshenv
sleep .5

#==============
# Create symlinks in the home folder
#==============
echo "\n====== Creating symlinks ======"
SYMLINKS=()
ln -sf ~/Code/jmetrikat/dotfiles/gnupg/.gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
SYMLINKS+=('.gnupg/gpg-agent.conf')

ln -sf ~/Code/jmetrikat/dotfiles/goto/.config/goto ~/.config/goto
SYMLINKS+=('.config/goto')

ln -sf ~/Code/jmetrikat/dotfiles/homebrew/Brewfile ~/Brewfile
SYMLINKS+=('.brewfile')

ln -sf ~/Code/jmetrikat/dotfiles/neofetch/.config/neofetch ~/.config/
SYMLINKS+=('.config/neofetch')

ln -sf ~/Code/jmetrikat/dotfiles/nvim/.config/nvim ~/.config/
SYMLINKS+=('./config/nvim')

ln -sf ~/Code/jmetrikat/dotfiles/starship/.config/starship.toml ~/.config/
SYMLINKS+=('.config/starship.toml')

ln -sf ~/Code/jmetrikat/dotfiles/tmux/.tmux.conf ~/.tmux.conf
SYMLINKS+=('.tmux.conf')

ln -sf ~/Code/jmetrikat/dotfiles/warp/.warp ~/.warp
SYMLINKS+=('.warp')

ln -sf ~/Code/jmetrikat/dotfiles/zsh/.zsh ~/.zsh
SYMLINKS+=('.zsh')

ln -sf ~/Code/jmetrikat/dotfiles/zsh/.zshrc ~/.zshrc
SYMLINKS+=('.zshrc')

ln -sf ~/Code/jmetrikat/dotfiles/zsh/.zshenv ~/.zshenv
SYMLINKS+=('.zshenv')

echo ${SYMLINKS[@]}
echo


#==============
# Install tools specified in brewfile
#==============
cd ~
brew bundle
rm ~/Brewfile.lock.json
sleep .5

#==============
# Install LaTeX packages
#==============
sudo tlmgr update --self
sudo tlmgr install latexmk
sudo tlmgr install datetime
sudo tlmgr install fmtcount
sudo tlmgr install enumitem
sudo tlmgr install adjustbox

#==============
# Done
#==============
echo "\n====== All Done ======"
echo "Enjoy!"
