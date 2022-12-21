# Intro Message
echo "Do not run as sudo! Press Ctrl+C to exit" 
read DUD

### 
### Install programs
### 
echo "Installing programs..."
sleep 1
sudo pacman -Syu

# Install terminal programs
sudo pacman -S bat fzf curl tmux python3

# Install 'colored-man-pages' dependencies
sudo pacman -S autojump zsh-syntax-higlighting zsh-autosuggestions neovim cpanminus

# Neovim - LSP Support
python3 -m pip install --user --upgrade pynvim				# Python3
sudo npm install -g neovim									# Node JS
sudo cpanm -n Neovim::Ext									# Perl
export PATH="$PATH:$(rube -e 'puts Gem.user_dir')/bin" \	
&& gem list && gem update && gem install neovim				# Ruby

#python3-pygments golang-chroma  (!exist in AUR)
#sudo pacman -S ripgrep (!exist in AUR)

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Downloading Powerlevel10k Fonts..."
sleep 1
FONT_DIR = "/usr/share/fonts/MesloLGS NF"
sudo mkdir $FONT_DIR
sudo curl -o $FONT_DIR/meslo-fonts/MesloLGS\ NF\ Regular.ttf \
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
sudo curl -o $FONT_DIR/meslo-fonts/MesloLGS\ NF\ Bold.ttf \
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
sudo curl -o $FONT_DIR/meslo-fonts/MesloLGS\ NF\ Italic.ttf \
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
sudo curl -o $FONT_DIR/meslo-fonts/MesloLGS\ NF\ Bold\ Italic.ttf \
    "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"
echo "Installing fonts..."
sleep 1
fc-cache -v -f /usr/share/fonts

# YouCompleteMe
sudo pacman -S build-essential cmake python3-dev -y
sudo pacman -S mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm -y
python3 $HOME/.config/nvim/plugged/YouCompleteMe/install.py --all

# Install Vim plugins
vim -c PlugInstall -c q

# End User Message
echo "Apply MesloLGS NF Regular font to terminal preferences"
echo "Reboot shell for changes to take effect."
