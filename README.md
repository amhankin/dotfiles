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
```
PATH is set in `bashrc_extras`


### python LSP: pyright (optional)
```
sudo apt install npm
```

## i3 window manager
```
sudo apt install feh
sudo apt install maim xclip xdotool
sudo apt install picom
```

## ranger
```
sudo apt install ranger
```

# optional packages
sudo apt install lazygit


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
