########## DEPENDENCIES ########## 
sudo pacman -S xclip neovim tmux --noconfirm

### ZSH/OH-MY-ZSH ###
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

##### NEOVIM ##### 
# LSP
sudo pacman -S node npm ruby --noconfirm
# Vim-Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Python
pip install pynvim
python3 -m pip install --user --upgrade pynvim

# Ruby
gem install neovim
gem environment

# Nodejs & Npm
npm install -g neovim

### MASON LSP ###
pacman -S go luarocks cargo composer php julia powershell \
          jdk-openjdk jdr-openjdk --noconfirm

########## LINKING  ########## 
ln -sf $PWD/home/.tmux.conf    $HOME/.tmux.conf; \
ln -sf $PWD/home/.gitconfig    $HOME/.gitconfig; \
ln -sf $PWD/home/.zsh_aliases  $HOME/.zsh_aliases; \
sudo ln -sf $PWD/etc/logid.cfg /etc/logid.cfg

### NVIM ###
mkdir -p $HOME/.config/nvim/vimfiles; \
ln -sf $PWD/home/.config/nvim/vimrc.vim             $HOME/.config/nvim/vimrc.vim; \
ln -sf $PWD/home/.config/nvim/init.lua              $HOME/.config/nvim/init.lua; \
ln -sf $PWD/home/.config/nvim/vimfiles/au.vim       $HOME/.config/nvim/vimfiles/au.vim; \
ln -sf $PWD/home/.config/nvim/vimfiles/mappings.vim $HOME/.config/nvim/vimfiles/mappings.vim; \
ln -sf $PWD/home/.config/nvim/vimfiles/settings.vim $HOME/.config/nvim/vimfiles/settings.vim; \
ln -sf $PWD/home/.config/nvim/vimfiles/plugins.vim  $HOME/.config/nvim/vimfiles/plugins.vim

nvim +PlugInstall +qa!


###
### TODO
###
# [WORKING]
# get path via: sudo find / -iname "neovim-ruby-host" 2>/dev/null
# let g:ruby_host_prog = '/home/$USER/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host'
# let g:loaded_perl_provider=0
