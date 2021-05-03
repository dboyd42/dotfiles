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
echo '> ZSH_THEME="powerlevel10k/powerlevel10k" '
echo '-- -- -- -- -- -- -- -- -- -- -- -- -- -- '
echo 'Update the plugin=(git) inside .zshrc file'
echo '> plugins=(git zsh-autosuggestions zsh-syntax-highlighting)'
echo '-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --'
echo ' THEN restart your terminal....         '
echo '----------------------------------------'

