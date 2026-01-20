# dotfiles
personal config for common Linux tools

# Setup

## bashrc
Add this to end of ~/.bashrc
```
# include .bashrc_aliases if it exists
if [ -f $HOME/dev/dotfiles/personal/bashrc]; then
    . $HOME/dev/dotfiles/personal/bashrc
fi
```

 
## nvim
### Install nvim from source

Debian is too stable. Install this one from source.
```
sudo apt-get install ninja-build gettext cmake curl build-essential git
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/.local install
ln -s ~/dev/dotfiles/personal/config/nvim ~/.config/nvim
```
PATH is set in `bashrc_extras`


### python LSP: pyright (optional)
```
sudo apt install npm
```

## i3 window manager
```
sudo apt install i3 -y
sudo apt install feh -y
sudo apt install maim xclip xdotool -y
sudo apt install picom -y
ln -s ~/dev/dotfiles/personal/config/i3 ~/.config/i3
ln -s ~/dev/dotfiles/personal/config/i3status ~/.config/i3status
ln -s ~/dev/dotfiles/personal/config/picom.conf ~/.config/picom.conf
```

## ranger
```
sudo apt install ranger
```

# lazygit
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
```


## python from source
wget https://www.python.org/ftp/python/3.13.9/Python-3.13.9.tgz
tar -xzvf Python-3.13.9.tgz
mkdir ~/.local/opt
./configure --enable-optimizations --prefix=$HOME/.local/opt
make -j $(nproc)
make install
ln -s ~/.local/opt/bin/python3 ~/.local/bin/



# TODO
- Write script to move any existing config folders to a backup location
