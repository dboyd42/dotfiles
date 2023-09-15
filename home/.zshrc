###############################################################################
###                             Local Vars                                  ###
###############################################################################
OS_TYPE=`uname -s`
OS_RELASE=`uname -r`


###############################################################################
###                         Environmental Variables                         ###
###############################################################################

###
### macOS ---------------------------------------------------------------------
###
#
# | PATHs            | Description               |
# |------------------+---------------------------|
# | /usr/local/bin   | websites (ie. python.org) |
# | /opt/local/bin   | macports                  |
# | /opt/homebrew    | brew                      |
# | ~/.new_local/bin | spice-space.org (jhbuild) |
#
if [[ OS_TYPE =~ "Darwin" ]]; then
    # Homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

###
### Cross-Platform Env Vars ---------------------------------------------------
###

# thefuck config
eval $(thefuck --alias)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set pager (man-pages) to use Bat
export PAGER="bat --color=always --theme=Dracula"

# Resolve remnant characters when using tab completion b/t Tmux and ZSH
export LC_ALL="en_US.UTF-8"

# Make NeoVim the default editor
if command -v nvim >/dev/null; then
    export EDITOR='nvim'
    export VISUAL='nvim'
else
    echo "No n/vi/m editor installed"
    echo "Current EDITOR: " $EDITOR
    echo "Current VISUAL: " $VISUAL
fi

###
### Bun
###
bun_me() {
    # bun completions
    [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
    # bun
    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
}

if command -v bun >/dev/null 2>&1; then
    bun_me
else
    echo "The program Bun is not installed."
    read -p "Do you want to install it? (y/n): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        curl -fsSL https://bun.sh/install | bash
        bun_me
    fi
fi


###############################################################################
###                          Profile Settings                               ###
###############################################################################

###
### Powerlevel 10k
###
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### ZSH Theme ##
#ZSH_THEME="robbyrussell"  # Default theme
ZSH_THEME="powerlevel10k/powerlevel10k"


###############################################################################
###                              ZSH Plugins                                ###
###############################################################################
#
# | Plugin Type | Location             |
# |-------------+----------------------|
# | Standard    | $ZSH/plugins/        |
# | Custom      | $ZSH_CUSTOM/plugins/ |
# Add wisely, as too many plugins slow down shell startup!
plugins=(
    autojump  # Requires manual autojump installation
    colored-man-pages  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages
    emoji  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/emoji
    sudo  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo
    tmux  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
    zsh-autosuggestions  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo
    zsh-syntax-highlighting  # https://github.com/zsh-users/zsh-syntax-highlighting.git
)

# User configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=92,bold" # Purple

###
### Autojump Config
###
export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
. /opt/local/etc/profile.d/autojump.sh
fi
# To use zsh tab completion, load compinit in your .zshrc:
autoload -U compinit; compinit

###
### General Settings
###
# Remove annoying beep on error
setopt NO_BEEP
unsetopt beep                                                                 #
# Auto-update ZSH without asking
zstyle ':omz:update' mode auto
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify


###############################################################################
###                            Source External Files                        ###
###############################################################################
source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_aliases
if [[ -f $HOME/.kayes/.kayze ]]; then
    source $HOME/.kayes/.kayze
fi


###############################################################################
###                             ZSH Bindkeys                                ###
###############################################################################

###
### Bindkeys Documentation
###
# List registered Zle commands
#   zle -al
#
# List current namespaces
#   bindkey -l
#
# List current bindkeys in [namespace]
#   bindkey -M emacs
#
# List all current bindkeys | grep <key-sequence>|<zle-cmd>
#   bindkey | grep vi
#
# Bindkeys Codes
# | Modifer     | Syntax |
# |-------------+--------|
# | Ctrl        | ^      |
# | Alt         | ^[     |
# | Shift       | [Z     |
# | &           | \e&    |
# | *           | \e*    |
# | {           | \e{    |
# | Arrow_right | [1;5D  |
# | Arrow_left  | [1;5C  |

###
### Bindkeys
###

# Ensure terminal CLI bindkeys are synced to Emacs
bindkey -e

# Clear screen
bindkey -r "^[."
bindkey -r "^L"
bindkey "^L" clear-screen

# Repeat last command(s)
bindkey -r "^P"
bindkey "^P" up-line-or-search

# Vi Searching
bindkey "^X^D" vi-find-prev-char
bindkey "^X^F" vi-find-next-char  # Default
bindkey "^[" vi-repeat-find     # Ctrl+[
bindkey "^]" vi-rev-repeat-find # Ctrl+]

## Plugins
bindkey "^ " autosuggest-accept  # Ctrl+Space


###############################################################################
###                          EOF ZSH Settings                               ###
###############################################################################

###
### Powerlevel10k
###
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
