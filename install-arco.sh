########## DEPENDENCIES ########## 
sudo pacman -S xclip neovim tmux --noconfirm

##### NEOVIM ##### 
sudo pacman -S node npm ruby python perl-cpanplus-dist-arch --noconfirm

# Python
pip install pynvim
python3 -m pip install --user --upgrade pynvim

# Ruby
gem install neovim
gem environment

# Nodejs & Npm
npm install -g neovim

# Perl #TODO --not working; ::disable
# let g:loaded_perl_provider=0

########## LINKING  ########## 
ln -sf $PWD/home/.tmux.conf /home/$USER/.tmux.conf; \
ln -sf $PWD/home/.gitconfig /home/$USER/.gitconfig; \
ln -sf $PWD/home/.zsh_aliases /home/$USER/.zsh_aliases; \
sudo ln -sf $PWD/etc/logid.cfg /etc/logid.cfg

###
### TODO
###
# [WORKING]
# Ruby PATH issue
# addto init.vim: 
# get path via: sudo find / -iname "neovime-ruby-host" 2>/dev/null
# let g:ruby_host_prog = '/home/$USER/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
