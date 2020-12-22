### Bash
#Display
alias cm="cmatrix"
alias l='ls -lh --color'
alias ll='ls -lhai --color'
alias ps1="export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '"
alias ps2="export PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '"
alias ps3="export PS1='\[\033[01;31m\]\u:\[\033[01;34m\]\W\[\033[00m\]\$ '"
alias sba='source ~/.bash_aliases'

### Compiling / Interpreters
alias com='g++ -std=c++1z -o main *.cpp'
alias jc='javac'
alias j='java'
alias py='python3'

### Directories
alias gith='cd ~/Documents/code/repos/github/dboyd42/'
alias giths='cd /home/bhat/Documents/code/repos/github/dboyd42/'
alias VIM='cd ~/../../usr/share/vim/'
# WSL
alias wgu='cd /mnt/c/users/boydd/OneDrive/Documents/wgu/'

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

### Git
alias ga='git add'
alias gaR='git add README.rst; git commit -m "updated"; git push'
alias gas='git add .; git status'
alias gc='git commit -m'
alias gcl='git clone'
alias gcip='git commit -m "initial commit"; git push'
alias gco='git checkout -b'
alias gcup='git commit -m "updated"; git push'
alias githard='git reset --hard origin/master'
alias gm='git mv'
alias gl='git pull'
alias gp='git push'
alias gr='git reset'
alias gst='git status'

### Networking
alias ipadd4='ip address show | grep "inet " | cut -d " " -f6 | cut -d "/" -f1'
alias ipaddcidr='ip address show | grep "inet " | cut -d " " -f 6'
alias ipadd6="ip addr show | grep -E 'inet6? ' | tr -s ' ' | cut -d' ' -f3"

### W3M
alias wd='w3m duckduckgo.com'

### Vim
alias v='vim'
alias vR='vim README.rst'

###
### Bash Customization
###

### Powerline configuration
# apt install powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

