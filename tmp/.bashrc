#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias sb='source ~/.bashrc' 
alias gs='git status'
alias ll='ls -alh' 
alias yay='yay --aur'

export PATH=$HOME/.cargo/bin:$PATH

alias pc='pacman' 
alias v='nvim'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

set bell-style none

# ssh autologin workaround
function ssh() {
    if [[ "$1" == "bandit" ]]; then
        command sshpass -p "bandit0" \
        ssh -p 2220 -o StrictHostKeyChecking=no \
        bandit0@bandit.labs.overthewire.org
    else
        command ssh "$@"
    fi
}
