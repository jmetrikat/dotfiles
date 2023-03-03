#==============
# Pre Install
#==============
echo "====== Starting setup ======"

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew doctor
# brew update

#==============
# Remove old dotflies
#==============
#TODO

rm -rf ~/.config/nvim
rm -rf ~/.warp
rm -rf ~/.zsh

#==============
# Create symlinks in the home folder
#==============
SYMLINKS=()
ln -sf ~/Code/jmetrikat/dotfiles/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf
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

echo "\n====== Created symlinks ======"
echo ${SYMLINKS[@]}
echo

#==============
# Install tools specified in brewfile
#==============
cd ~
brew bundle
cd -

#==============
# Done
#==============
echo "\n====== All Done ======"
echo "Enjoy!"
