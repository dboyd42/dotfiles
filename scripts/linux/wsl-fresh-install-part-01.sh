
# Install preliminary programs
sudo apt-get install vim-gtk3 -y
sudo apt-get install tree -y

###
### Install Killer-Ass-Prompt
###
# Install ZSH
sudo apt-get install zsh
# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k setup
reset

# Install required fonts for Powerlevel10k theme 
#   --check win-terminal: MesloLGS NF

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install ZSH plugins
#   zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#   zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Update the theme name inside .zshrc file
echo '----------------------------------------'
echo 'Update the theme name inside .zshrc file'
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"'
echo ' THEN restart your terminal....
echo '----------------------------------------'

