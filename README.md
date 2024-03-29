# My Master Dotfiles

**TODO: Update**
- convert and update bottom half to a macOS section
- create a Linux section
- create a simple server section
- `keyd` prgm does not work on UTM virtualization
  - Note: macOS already has this namespace mapped with Karabiner

## Dotfiles Setup for macOS

**Author:** David Boyd<br>
**Dated:** 2023-06-20

## 1. Prerequesites

1. Install macOS Package Managers: [Brew][brew], [MacPorts][port-install]
    - Update Package Managers: `brew update && sudo port selfupdate`
1. Install Dependencies:

``` bash
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Other dependencies
brew install rust php luarocks
sudo port install lsd neovim ripgrep npm9 go yarn fd wget openjdk20 julia
sudo gem install neovim

# Install a bunch of fonts --OPTIONAL (Or just install what you need)
# 1. Add Cask-Fonts to Formulae
brew tap homebrew/cask-fonts
# 2. Install *ALL* Nerd fonts
brew install $( brew search nerd | grep nerd-font | tr '\n' ' ' )

# OMZ Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Nvim plugin dependencies
sudo npm install markdown-cli --global
sudo npm install markmap-cli --global
# PHP Composer (pkgMgr)
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer 
sudo chmod +x /usr/local/bin/composer

# Install Packer --a NeoVim plugin manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

1. Link the necessary dotifles:

  - Environment
  - TMUX
  - NeoVim

2. Install NeoVim's plugins and configs

  - Open NeoVim and run `:PackerSync` a few times. 
  - :bulb: You may need to exit then reopen NeoVim to successfully install 
           all the plugins; including Mason's LSPs via `:MasonUpdate:`

## Troubleshooting

### Neovim 

#### tree-sitter 

##### 1. tree-sitter executable not installed

| Resolved | :heavy_check_mark: |
|----------|--------------------|

Open Neovim and install tree-sitter via Mason:

``` bash
:MasonInstall tree-sitter-cli
```

##### 2. clang: error: no such file or directory: 'src/scanner.cc' 

| Resolved  | :heavy_check_mark:   |
|-----------|----------------------|
| Reference | [Github #4428][4428] |

Update nvim-treesitter before syncing Packer plugins.

``` bash
nvim +PackerUpdate
:PackerSync
```

<!-- References -->

[brew]: https://brew.sh/
[port-install]: https://guide.macports.org/chunked/installing.macports.html
[nvim-install]: https://github.com/neovim/neovim/wiki/Installing-Neovim
[omz-install]: https://ohmyz.sh/#install
[4428]: https://github.com/nvim-treesitter/nvim-treesitter/issues/4428
