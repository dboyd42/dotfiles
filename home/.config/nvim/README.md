<h1 align="center">✨ My NeoVim Dotfiles ✨</h1>

**Author:** David Boyd<br>
**Date:** 2023-06-03

---

#### TODO

( 2023-06-03 )

- Finish this  README.md
- Fix [BarBar][BB] keymaps
- Document keymaps:
  - `:nmap`, `:vmap`, `imap`

---

<!-- #TODO
## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Getting Started](#getting-started)
  - [Command Line Interface](#command-line-interface) *BONUS: If N/A: del*
  - [Examples](#examples) *BONUS: If N/A: del*
    - [Example 1: Perform a basic operation](#example-1-perform-a-basic-operation)
    - [Example 2: Configure advanced settings](#example-2-configure-advanced-settings)
    - [Example 3: Generate a report](#example-3-generate-a-report)
- [Features](#features)
- [Usage](#usage)
- [Troubleshooting](#troubleshooting)
- [FAQ](#faq)
- [Support](#support)
- [License](#license)

-->

## Introduction

After 3.5 years of using Vim, 6 months of using NeoVim, 2 weeks of learning
Lua, and 1 week of banging my head against the wall, I have an IDE that I
can feel proud of using.  This has definitely been built on the back of giants
from the NeoVim community and their amazing plugin developers.

## Installation

- :bulb: *Run `nvim +checkhealth` to check the status throughout the Neovim
process.*

### 1. Prerequisites

1. Install a bunch of packages:

``` bash
pacman -S neovim tmux npm ruby python3 python-pip cpanm fd ripgrep
```

2. Install and enable NeoVim providers

``` bash
### 1. Python
# Enable the Python3 Provider
pip3 install --user --upgrade pynvim  # (Note: 'neovim' is deprecated)

### 2. Ruby
# Add Ruby to PATH
export PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
gem list && gem update

# Install Ruby's NeoVim module
gem install neovim

# (Optional) Get PATH of Ruby in case of $PATH error above
gem environment

### 3. NodeJS
sudo npm install -g neovim

### 4. Perl
sudo cpanm -n Neovim::Ext
```

### 2. NeoVim (Basic) Setup

- :pencil: **Python** & **Ruby**'s `vim.g.{}_host_prog` are set in the `init.lua`
- :pencil: **TMUX** issues are resolved in the $HOME/.tmux.conf file.

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

## 3. Packer - the Plugin Manager

1. Install **Packer**

``` bash
yay -S nvim-packer-git
```

The config file will need to be created/symlinked to
`$HOME/.config/nvim/lua/plugins.lua`.

## 4. SymLink the Dotfiles

- :warning: This has not *yet* been tested on a new distro install!

``` bash
cd
ln -sf $PWD/nvim/ $HOME/.config/
```

<!-- #TODO

## Getting Started

`#TODO`

### Command Line Interface

`#TODO`

### Examples


- [Example 1: Perform a basic operation](#example-1-perform-a-basic-operation)
- [Example 2: Configure advanced settings](#example-2-configure-advanced-settings)
- [Example 3: Generate a report](#example-3-generate-a-report)

#### Example 1: Perform a basic operation


``` bash
program-name --option1 value1 --option2 value2
```

*[Explain the purpose of this example and provide a step-by-step breakdown of
the command and its options. Include expected output or results.]*

#### Example 2: Configure advanced settings

``` bash
program-name --option1 value1 --option2 value2 --advanced
```

*[Explain the purpose of this example and provide a step-by-step breakdown of
the command and its options. Include expected output or results.]*

#### Example 3: Generate a report

``` bash
program-name --option1 value1 --option2 value2 --output-file out.txt --report
```

*[Explain the purpose of this example and provide a step-by-step breakdown of
the command and its options. Include expected output or results.]*

## Features

*[List and describe the main features and functionalities of the program.]*

## Usage

*[Provide comprehensive instructions on how to use the program, including
detailed explanations of each feature, commands, and options.]*

-->

## Troubleshooting

When facing issues, it generally has to do with either a plugin's config file
or a syntax error.  This geralized 3-step process has resolved *most* of the
issues I've come across:

1. Identify the **plugin** causing the issue.
2. Examine the plugin's **config file**.
3. Read the plugin's **documentation**:
    1. Check the plugin's official github page
    2. [Reddit][RED] and [StackOverflow][SO] have proven to point towards the
        correct docs.

<!-- #TODO
## FAQ

*[Compile a list of frequently asked questions related to the program, along
with their answers.]*

-->

<!------------------------------ Refereences --------------------------------->

[BB]: ./after/plugin/barbar.lua
[RED]: https://www.reddit.com/
[SO]: https://stackoverflow.com/
