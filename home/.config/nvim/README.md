<h1 align="center">✨ My NeoVim Dotfiles ✨</h1>

|  **Author:** | David Boyd |
|-------------:|------------|
| **Updated:** | 2023-12-27 |

## Table of Contents


<!-- vim-markdown-toc GFM -->

* [Introduction](#introduction)
* [Installation](#installation)
  * [1. Prerequisites](#1-prerequisites)
  * [2. Install and enable **NeoVim providers**](#2-install-and-enable-neovim-providers)
* [2. Lazy Plugin Manager](#2-lazy-plugin-manager)
  * [Introduction](#introduction-1)
  * [2.2 Awkward Plugin Dependencies](#22-awkward-plugin-dependencies)
* [3. SymLink the Dotfiles](#3-symlink-the-dotfiles)
* [Troubleshooting](#troubleshooting)
  * [Perl Troubleshooting](#perl-troubleshooting)
  * [ERROR: Failed to source ~/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua](#error-failed-to-source-localsharenvimlazyluasnippluginluasniplua)

<!-- vim-markdown-toc -->

## Introduction

After 3.5 years of using Vim, 6 months of using NeoVim, 2 weeks of learning
Lua, and 1 week of banging my head against the wall, I have an IDE that I
can feel proud of using.  This has definitely been built on the back of giants
from the NeoVim community and their amazing plugin developers.

## Installation

### 1. Prerequisites

1. Install a bunch of packages:
  - Kali Linux notes:
    - :pencil: Kali requires [Snap](https://snapcraft.io) to install 
    [Neovim v0.8+](https://snapcraft.io/nvim). Otherwise, the APT repo will only
    install versions 0.7.2-8. Some plugins require version 0.8 and greater.
    - :crossed_swords: Kali and Perl will hurt you, so be prepared
    :person_fencing: as we'll build our libraries from source in our [Perl
    Troubleshooting with Kali](#perl-troubleshooting-with-kali) section.
  - macOS notes:
    - After experimenting with [Brew](https://brew.sh/) and [MacPorts](https://www.macports.org/), I have some packages installed from either without rhyme or reason. Overall, I haven't found much difference (other than an occasional package available on one or the other). So no need to follow my steps to a tee, they're just what I currently have and "it's working on my machine."
    - Also, I think I installed `go` from [go.dev](https://go.dev/doc/install).

``` bash
# Arch /* TODO: Update && confirm pkgs */
pacman -S neovim tmux npm ruby python3 python-pip cpanm fd ripgrep

# Kali
sudo apt install tmux npm yarnpkg python3-all fd-find ripgrep snapd
sudo systemctl start snapd  # Other than installs, I keep Snap disabled
sudo snap install nvim --classic
sudo snap install julia --classic

# macOS
brew install tmux npm python3 perl ripgrep julia
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

port install tmux yarn fd ripgrep ruby
```

### 2. Install and enable **NeoVim providers**

[Neovim Providers](https://neovim.io/doc/user/provider.html) are dynamic
"providers" that delegate *'some'* :P features in Neovim.

  1. :snake: Python :snake:
  - :pencil: Python's `neovim` is deprecated

  ``` bash
  # Arch
  pacman -S python-pynvim

  # Kali & macOS
  pip3 install --user --upgrade pynvim
  ```

  2. Ruby

  ``` bash
  # Add Ruby to PATH /* TODO: Confirm for Kali & macOS */
  export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
  gem list && gem update

  # Install Ruby's NeoVim module
  gem install neovim

  # (Optional) Get PATH of Ruby in case of $PATH error above
  gem environment
  ```

  3. NodeJS

  ``` bash
  sudo npm install -g neovim
  ```

  4. Perl
    - :warning: Perl is fucking mess :arrow_right: review
    [Perl Troubleshooting](#perl-troubleshooting)

  ``` bash
  # Arch
  sudo cpanm -n Neovim::Ext

  # Kali /* Goddamn Perl */
  ``` bash
  sudo cpan local::lib
  sudo cpan Neovim::Ext

  # macOS /* TODO: fuck Perl */
  PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
  sudo cpan local::lib
  sudo cpan Neovim::Ext
  sudo cpan App::cpanminus
  ```

## 2. Lazy Plugin Manager

### Introduction

1. `init.lua` contains `require("lazy").setup("plugins")` to initialize Lazy.
2. `lua/plugins.lua` contains your main plugin specs
3. `lua/plugins/*.lua` contain additional plugin specs which will automatically be merged into the main plugin spec. :bulb: The `plugins` directory is the recommended location for these additional spec files.

### 2.2 Awkward Plugin Dependencies

``` bash
# Markmap
sudo npm install -g markmap-cli markmap

# MarkdownPreview
sudo npm install -g markdown-cli
```

## 3. SymLink the Dotfiles

- :warning: The files will need to be ***INDIVIDUALLY*** linked as the Neovim's
package managers won't recognize directory links.

## Troubleshooting

- :pencil: **Python** & **Ruby**'s `vim.g.{}_host_prog` are set in the `init.lua`
- :pencil: **TMUX** issues are resolved in the `$HOME/.tmux.conf` file.


When facing issues, it generally has to do with either a plugin's config file
or a syntax error.  This geralized 3-step process has resolved *most* of the
issues I've come across:

1. Identify the **plugin** causing the issue.
2. Examine the plugin's **config file**.
3. Read the plugin's **documentation**:
    1. Check the plugin's official github page
    2. [Reddit][RED] and [StackOverflow][SO] have proven to point towards the
        correct docs.

### Perl Troubleshooting

:bulb: ***THIS WILL BE UPDATED SHORTLY:exclamation::exclamation::exclamation:***

1. Verify NeoVim and its providers are able to communicate

``` bash
# Run NeoVim diagnostics
vim +checkhealth
```

2. Resolve **Perl** provider write access

- :warning: This may or may not work depending on your distro, env, etc.

``` bash
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
```

### ERROR: Failed to source ~/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua

| [Full Error](./docs/error-failed-to-source-luasnip.txt) |
|---------------------------------------------------------|

| Related Errors                                                               |
|------------------------------------------------------------------------------|
| E5113: Error while calling lua chunk: Cannot make changes, modifiable is off |

This error tends to occur when I haven't updated/upgraded a machine in long
time. It's most likely has to do with a new release of the plugin and cannot
update the current (outdated?) configs. Granted, *this* error is for the
LuaSnip plugin, but the following steps should resolve the error for any plugin
(just replace `LuaSnip` with your specific plugin). Anyways, we can resolve
this by forcing Neovim to reinstall the plugin.

1. Delete the local folder.

``` bash
rm -rf $HOME/.local/share/nvim/lazy/LuaSnip
```

2. Open vim and wait for Mason will auto-install LuaSnip plugin.
  - :warning: The following error will occur, but this is perfectly normal.

``` bash
E5113: Error while calling lua chunk: vim/_options.lua:0: E21: Cannot make changes, 'mod ifiable' is off
```

3. Press `Enter` to dismiss the notification.
4. In Neovim, update Mason packages: `:MasonUpdate`
5. Close then re-open Neovim to confirm

<!------------------------------ Refereences --------------------------------->

[BB]: ./after/plugin/barbar.lua
[RED]: https://www.reddit.com/
[SO]: https://stackoverflow.com/
[lazy]: https://github.com/folke/lazy.nvim#%EF%B8%8F-configuration
[pkr]: https://github.com/wbthomason/packer.nvim

<!-- Date Tracking
|------------:|------------|------------------------------------------|
|  **Dates:** | 2023-12-27 | Added Troubleshooting section            |
|             | 2023-12-17 | Included Arch Linux instructions         |
|             | 2023-09-13 | Migrated to [Lazy.nvim][lazy]            |
|             | 2023-06-03 | Migrated to [Packer][pkr] *(deprecated)* |
-->

