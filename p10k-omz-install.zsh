

### If error 'zsh: command not found: p10k' occurs:
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

### *Nix Fonts: (MesloLGS NF Regular.tff)
# https://github.com/romkatv/powerlevel10k/blob/master/font.md
# Linux install:
sudo -p mkdir ~/.local/share/fonts
#mv <fontFile> ~/.local/share/fonts
#fc-cache -f -v
#fc-list | grep <fontName>

