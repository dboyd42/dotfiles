# Link basic dotfiles
ln -sf $PWD/home/.tmux.conf /home/$USER/.tmux.conf
ln -sf $PWD/home/.gitconfig /home/$USER/.gitconfig
ln -sf $PWD/home/.zsh_aliases /home/$USER/.zsh_aliases

# Link files requiring sudo
sudo ln -s $PWD/etc/logid.cfg /etc/logid.cfg

