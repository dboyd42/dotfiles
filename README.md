# Dotfile Installation Guide

> Author: David Boyd<br>
> Date: 2023-03-20

|                        |            |
|------------------------|------------|
| OS                     | Arch Linux |
| DE                     | KDE Plasma |
| Communication Protocol | X11        |

## 1. Dependencies

``` bash
###
### Make life easier
###
# 1. Alias to skip 'sudo' for a few programs
echo "alias pacman='sudo pacman'" >> ~/.bashrc
echo "alias systemctl='sudo systemctl'" >> ~/.bashrc

###
### Terminal Programs
###
# 1. Install Yay AUR Helper
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si

# 2. Install various shell programs
pacman -S bat fzf cpanminus xclip neovim tmux zsh npm ruby python3 python-pip mlocate firefox qutebrowser virt-manager vivaldi --noconfirm
yay -S ungoogled-chromium-bin librewolf

### Installing ZSH Guide: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
# 3. Verify zsh installation
zsh --version 
# Set ZSH as your default shell
chsh -s $(which zsh)
# Reboot
reboot
# Verify default shell is ZSH
echo $SHELL

### Installing OMZ Guide: https://github.com/ohmyzsh/ohmyzsh
# 1. Install OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 2. Re-open terminal
exit
# 3. Install Plugins: Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# 4. Install Plugins: Syntax-Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 5. Install Autojump
git clone https://github.com/wting/autojump.git
./autojump/install.py

### LogiOps Install Guide: https://github.com/PixlOne/logiops
# 1. Install dependencies
pacman -S cmake libevdev libconfig pkgconf
# 2. Clone and build
git clone https://github.com/PixlOne/logiops.git
mkdir build && cd build && cmake .. && make
# 3. Install then enable service
sudo make install
systemctl enable --now logid

### Keyd Install Guide: https://github.com/rvaiya/keyd
git clone https://github.com/rvaiya/keyd
cd keyd && make && sudo make install
systemctl enable --now keyd
```

## 2. Personalizing

``` bash
# Install various fonts
pacman -S ttf-meslo-nerd otf-cascadia-code-nerd otf-firamono-nerd \
ttf-liberation noto-fonts powerline-fonts;
yay -S gsfonts

# Powerlevel10K Install Guide: https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# (Optional) Update the .zshrc ZSH_THEME accordingly
ZSH_THEME="powerlevel10k/powerlevel10k"
```

## 3. NeoVim-ing Providers

``` bash
### Python / PIP
# 1. Enable the Python3 Provider
pip3 install --user --upgrade pynvim  # (Note: 'neovim' is deprecated)
# 2. Install NeoVim-Remote (nvr)
pip3 install --user --upgrade neovim-remote
# 3. TEST
nvim -c "py3 print('hello')"

### Ruby
# 1. Add to PATH 
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin' \
&& gem list && gem update 
# 2. Install Ruby's NeoVim module
gem install neovim
# (Optional) Get PATH of Ruby
gem environment

### NodeJS
sudo npm install -g neovim

### Perl
sudo cpanm -n Neovim::Ext
```

## 3. Other Notes

OBS Flickering: System Settings > Display & Monitor > Compositor > 
[Uncheck] Allow applications to block compositing
