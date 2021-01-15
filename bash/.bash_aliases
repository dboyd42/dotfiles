###
### Bash Aliases
###

### Variables
OS_RELEASE="`uname -r`"

# WSL
if [[ $OS_RELEASE =~ microsoft ]]; then
    WIN_USERNAME=`cmd.exe /c "echo %USERNAME%" 2>/dev/null | cut -d$'\r' -f1`
else
    WIN_USERNAME="--WIN_USERNAME--"
fi

###
### ~/.bash_aliases
###

### Display
alias l='ls -lh --color'
alias ll='ls -lhai --color'

### Compiling / Interpreters
alias com='g++ -std=c++1z -o main *.cpp'
alias py='python3'

### Directories
alias gith='cd ~/Documents/code/repos/github/dboyd42/'
alias giths='cd /home/bhat/Documents/code/repos/github/dboyd42/'
alias VIM='cd ~/../../usr/share/vim/'
# WSL dirs
alias wgu='cd /mnt/c/Users/$WIN_USERNAME/OneDrive/Documents/education/wgu/'

### Editing
# Clipboard
alias xcopyc='xclip -sel clipboard'
alias xpastec='xclip -o -sel clip'
# Primary
alias xcopyp='xclip -sel primary'
alias xpastep='xclip -o -sel pri'
# Secondary
alias xcopys='xclip -sel secondary'
alias xpastes='xclip -o -sel sec'

### Networking
alias ipadd4='ip address show | grep "inet " | cut -d " " -f6 | cut -d "/" -f1'
alias ipaddcidr='ip address show | grep "inet " | cut -d " " -f 6'
alias ipadd6="ip addr show | grep -E 'inet6? ' | tr -s ' ' | cut -d' ' -f3"

### Vim
alias v='vim'
alias vR='vim README.rst'

###
### Bash Customization
###

# Prompt does NOT work with WSL > Powerline config
alias ps1="export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '"
alias ps2="export PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '"
alias ps3="export PS1='\[\033[01;31m\]\u:\[\033[01;34m\]\W\[\033[00m\]\$ '"
alias sba='source ~/.bash_aliases'

### WSL > Powerline configuration
# apt install powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

