###############################################################################
###                             Local Vars                                  ###
###############################################################################
OS_TYPE=`uname -s`
OS_RELEASE=`uname -r`


###############################################################################
###                         Environmental Variables                         ###
###############################################################################

### Known PATHs
#
# | OS_TYPE | PATHs            | Description                   |
# |---------+------------------+-------------------------------|
# | macOS   | /usr/local/bin   | websites (ie. python.org)     |
# |         | /opt/local/bin   | macports                      |
# |         | /opt/homebrew    | brew                          |
# |         | ~/.new_local/bin | spice-space.org (jhbuild)     |
# | Linux   | $HOME/.local/bin |                               |
# |         | /snap/bin        | Snap package manager installs |


###
### macOS ---------------------------------------------------------------------
if [[ OS_TYPE =~ "Darwin" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PAGER="bat --color=always --theme=Dracula"
###
### Linux ---------------------------------------------------------------------
elif [[ $OS_TYPE =~ "Linux" ]]; then
    export PATH="$PATH:$HOME/.local/bin"
    export PATH="$PATH:/snap/bin"
    if [[ $OS_RELEASE =~ "kali" ]]; then
        export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
    else
        export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    fi
fi

###
### Cross-Platform Env Vars ---------------------------------------------------
###

# thefuck config
eval $(thefuck --alias)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


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
### ZSH Autosuggestions
###
# Change suggestion color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=92,bold" # Purple
# Enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

###
### General Settings ----------------------------------------------------------
###

# Auto-update ZSH without asking
zstyle ':omz:update' mode auto

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt extendedglob

setopt NO_BEEP             # Remove annoying beep on error
unsetopt beep              # Ensure removal of annoying beep on error
setopt autocd              # Change directory just by typing its name
#setopt correct            # Auto correct mistakes
setopt interactivecomments # Allow comments in interactive mode
setopt magicequalsubst     # Enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # Hide error message if there is no match for the pattern
setopt notify              # Report the status of background jobs immediately
setopt numericglobsort     # Sort filenames numerically when it makes sense
setopt promptsubst         # Enable command substitution in prompt

# hide EOL sign ('%')
PROMPT_EOL_MARK=""

# force zsh to N0T show the complete history
alias history="history 0"




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
