# dotfiles
personal config for common Linux tools

# Quick Setup
- Create symbolic links in `$HOME/` and `$HOME/.config/` with `setup.sh` file.
- Use `chmod +x setup.sh` to make the file executable.
    - You'll need to remove any preexisting files if they exist.
- See below for required package installs

# Setup All

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
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
```
Make sure the final line is in the `.bashrc` and `.zshrc`.


### python LSP: pyright
```
sudo apt install npm
```

## i3 window manager
```
sudo apt install feh
sudo apt install maim xclip xdotool
sudo apt install picom
```

# optional packages
sudo apt install lazygit

# TODO
- Write script to move any existing config folders to a backup location
