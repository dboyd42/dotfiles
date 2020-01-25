### Bash
#Display
alias l='ls -lh --color'
alias ll='ls -lhai --color'
alias ps1="PS1='\u:\W\$ '"

### Compiling / Interpreters
alias com='g++ -std=c++1z -o main *.cpp'
alias jc='javac'
alias j='java'
alias py='python3'

### Directories
alias gith='cd ~/Documents/code/repos/github/dboyd42/'
alias bg='cd ~/Documents/code/repos/github/others/jacobreola/BitGasm/'
alias VIM='cd ~/../../usr/share/vim/'

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
alias ipadd4='ip address show | grep "inet " | cut -d " " -f 6 | cut -d "/" -f 1'
alias ipaddcidr='ip address show | grep "inet " | cut -d " " -f 6'
alias ipadd6="ip addr show | grep -E 'inet6? ' | tr -s ' ' | cut -d' ' -f 3 "

### Terminator layouts
alias oscp='terminator -l oscp'

### W3M
alias wd='w3m duckduckgo.com'

### Vim
alias v='vim'
alias vR='vim README.rst'

