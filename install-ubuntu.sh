# Intro Message
echo "Do not run as sudo! Press Ctrl+C to exit" 
read DUD

### 
### Install programs
### 
echo "Installing programs..."
sleep 1
sudo apt update -y && sudo apt upgrade -y

# Install terminal programs
sudo apt install bat fzf curl tmux python3 -y

# Install 'colored-man-pages' dependencies
sudo apt install autojump python3-pygments golang-chroma -y

# Install fzf dependencies
sudo apt install ripgrep -y

# zsh-syntax-higlighting
git clone \
	https://github.com/zsh-users/zsh-syntax-highlighting.git \
	${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone \
    https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

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
sudo apt install build-essential cmake python3-dev -y
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm -y
python3 $HOME/.config/nvim/plugged/YouCompleteMe/install.py --all

# Install Vim plugins
vim -c PlugInstall -c q

# End User Message
echo "Apply MesloLGS NF Regular font to terminal preferences"
echo "Reboot shell for changes to take effect."
