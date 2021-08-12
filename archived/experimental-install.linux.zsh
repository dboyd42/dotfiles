###-----------------------------------------###
### ZSH with Antigen
###     > autojump, colored-man-pages, ccat
###-----------------------------------------###
### ERRORS:
###     > hangs on antigen bundle powerlevel10k
###-----------------------------------------###
### Updates:
###     > create .antigenrc file
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
echo -e "# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle docker
antigen bundle autojump
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle hcgraf/zsh-sudo    # <Esc-Esc> curr->line ::> sudo curr->line

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme.
#antigen theme robbyrussell     # default
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply" >> ~/.antigenrc

echo
echo
echo "To configure p10k theme: $ p10k configure"
echo "Exit; then Restart your shell"

