###-----------------------------------------###
### ZSH with Antigen
###     > autojump, colored-man-pages, ccat
###-----------------------------------------###

# Install dependencies
sudo apt install curl -y
sudo apt install fonts-powerline -y   # terminal fonts
sudo apt install  -y
sudo apt install curl -y


## Antigent
# Get Antigen config file
curl -L git.io/antigen > ~/antigen.zsh
# Link and initialize Antigen config file to zshrc
echo ". ~/antigen.zsh" >> ~/.zshrc
echo "antigen init ~/.antigenrc" >> ~/.zshrc
# Populate antigenrc file
echo -e "# Load the oh-my-zsh's library.\n
antigen use oh-my-zsh\n
\n
# Bundles from the default repo (robbyrussell's oh-my-zsh).\n
antigen bundle git\n
antigen bundle heroku\n
antigen bundle pip\n
antigen bundle lein\n
antigen bundle command-not-found\n
antigen bundle docker\n
antigen bundle autojump\n
antigen bundle ael-code/zsh-colored-man-pages\n
antigen bundle hcgraf/zsh-sudo\n    # <Esc-Esc> curr->line ::> sudo curr->line
\n
# Syntax highlighting bundle.\n
antigen bundle zsh-users/zsh-syntax-highlighting\n
antigen bundle zsh-users/zsh-autosuggestions\n
antigen bundle zsh-users/zsh-completions\n
\n
# Load the theme.\n
#antigen theme robbyrussell     # default\n
antigen theme romkatv/powerlevel10k\n
\n
# Tell Antigen that you're done.\n
antigen apply\n" >> ~/.antigenrc

echo "To configure p10k theme: $ p10k configure"
