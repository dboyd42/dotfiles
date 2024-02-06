# Neovimn Checkhealth Troubleshooting

> Author: David Boyd<br>
> Date: 2024-02-05

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Markmap-CLI and Yarn](#markmap-cli-and-yarn)
  * [Error Log](#error-log)
  * [Solution](#solution)
* [Mason Languages Not Available](#mason-languages-not-available)
  * [Luarocks Not Available](#luarocks-not-available)
    * [Error Log](#error-log-1)
    * [Solution](#solution-1)
  * [Luarocks Not Available](#luarocks-not-available-1)
    * [Error Log](#error-log-2)
    * [Solution](#solution-2)
  * [Julia Not Available](#julia-not-available)
    * [Error Log](#error-log-3)
    * [Solution](#solution-3)
* [Treesitter: Failed to load / Invalid Node Type](#treesitter-failed-to-load--invalid-node-type)
  * [Error Log](#error-log-4)
  * [Solution](#solution-4)
* [PyNvim is Not Installed](#pynvim-is-not-installed)
  * [Error Log](#error-log-5)
  * [Solution](#solution-5)
* [Tree-sitter Executable Not Found](#tree-sitter-executable-not-found)
  * [Error Log](#error-log-6)
  * [Solution](#solution-6)
* [Perl - Can't Write TO](#perl---cant-write-to)
  * [Error Log](#error-log-7)
  * [Solution](#solution-7)
* [No Python Executable Found That Can Import Neovim](#no-python-executable-found-that-can-import-neovim)
  * [Error Log](#error-log-8)
  * [Solution](#solution-8)
* [Neovim is Out-of-date](#neovim-is-out-of-date)
  * [Error Log](#error-log-9)
  * [Solution](#solution-9)
* [Perl - cpan Module is Not Installed](#perl---cpan-module-is-not-installed)
  * [Error Log 1](#error-log-1)
  * [Solution Attempt 1](#solution-attempt-1)
  * [Error Log 2](#error-log-2)
  * [Solution 2 - macOS](#solution-2---macos)
  * [Error Log 3](#error-log-3)
  * [Solution 3 - macOS](#solution-3---macos)
  * [Expected Output](#expected-output)
* [LSP Log Level : WARN](#lsp-log-level--warn)
  * [Warn Log](#warn-log)
  * [Solution](#solution-10)
* [Resolved Errors without Documented Solutions](#resolved-errors-without-documented-solutions)
  * [Perl cpanminus fatscript](#perl-cpanminus-fatscript)
    * [Error Log](#error-log-10)
  * [Nvim-treesitter: Unknown Key](#nvim-treesitter-unknown-key)
    * [Error Log](#error-log-11)
    * [Solution](#solution-11)

<!-- vim-markdown-toc -->

## Markmap-CLI and Yarn

### Error Log

```
WARNING yarn is not installed: Used to install markmap-cli. This operation can also be performed using npm instead, or even manually. See README.md for more info:/nhttps://github.com/Zeioth/markmap.nvim
```

### Solution

```
sudo npm install -yarn
```

## Mason Languages Not Available

### Luarocks Not Available

#### Error Log

```
WARNING luarocks: not available
ADVICE:
spawn: luarocks failed with exit code - and signal -. luarocks is not executable
```

#### Solution

```
sudo apt install luarocks -y
```

### Luarocks Not Available

#### Error Log

```
WARNING Composer: not available
ADVICE:
spawn: composer failed with exit code - and signal -. composer is not executable
```

#### Solution

```
# Linux distros
sudo apt install composer -y

# macOS
brew install composer
```

### Julia Not Available

#### Error Log

```
WARNING julia: not available
ADVICE:
spawn: julia failed with exit code - and signal -. julia is not executable
```

#### Solution

```
# Linux distros
sudo snap install julia --classic

# macOS
brew install julia
```

## Treesitter: Failed to load / Invalid Node Type

Failed packages:

  * `gomod`
  * `nim`
  * `sql`
  * `v`
  * `vimdoc`

### Error Log

``` Bash
The following errors have been detected:
- ERROR gomod(highlights): ...2821/usr/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid node type at position 36 for language gomod
        gomod(highlights) is concatenated from the following files:
  | [ERROR]:"/home/myUserName/.local/share/nvim/lazy/nvim-treesitter/queries/gomod/highlights.scm", failed to load: ...2821/usr/share/nvim/runtime/lua/vim/ treesitter/query.lua:259: query: invalid node type at position 36 for language gomod
- ERROR nim(highlights): ...2821/usr/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid structure at position 1344 for language nim
          nim(highlights) is concatenated from the following files:
  | [ERROR]:"/home/myUserName/.local/share/nvim/lazy/nvim-treesitter/queries/nim/highlights.scm", failed to load: ...2821/usr/share/nvim/runtime/lua/vim/ treesitter/query.lua:259: query: invalid structure at position 1344 for language nim
- ERROR v(highlights): ...2821/usr/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid node type at position 5984 for language v
          v(highlights) is concatenated from the following files:
  | [ERROR]:"/home/myUserName/.local/share/nvim/lazy/nvim-treesitter/queries/v/highlights.scm", failed to load: ...2821/usr/share/nvim/runtime/lua/vim/ treesitter/query.lua:259: query: invalid node type at position 5984 for language v
- ERROR vimdoc(highlights): ...2821/usr/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid node type at position 615 for language vimdoc
          vimdoc(highlights) is concatenated from the following files:
  | [ERROR]:"/home/myUserName/.local/share/nvim/lazy/nvim-treesitter/queries/vimdoc/highlights.scm", failed to load: ...2821/usr/share/nvim/runtime/lua/ vim/treesitter/query.lua:259: query: invalid node type at position 615 for language vimdoc
```

And a similar error on an M1 build:

``` Bash
- ERROR sql(highlights): ...im/0.9.4/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid node type at position 2210 for language sql
        sql(highlights) is concatenated from the following files:
  | [ERROR]:"/Users/myUserName/.local/share/nvim/lazy/nvim-treesitter/queries/sql/highlights.scm", failed to load: ...im/0.9.4/share/nvim/runtime/lua/vim/treesitter/query.lua:259: query: invalid node type at position 2210 for language sql
```

### Solution

Update Treesitter with missing packages:

``` Bash
nvim +TSUpdate gomod nim v vimdoc sql
```

## PyNvim is Not Installed

### Error Log

``` Bash
WARNING Latest pynvim is NOT installed: 0.5.0
```

### Solution

``` bash
pip3 install --user --upgrade pynvim
```

## Tree-sitter Executable Not Found

[Issue 1097](https://github.com/nvim-treesitter/nvim-treesitter/issues/1097)

### Error Log

``` bash
WARNING tree-sitter executable not found (parser generator, only needed for :TSInstallFromGrammar, not required for :TSInstall)
```

### Solution

``` bash
cargo install tree-sitter-cli
```

## Perl - Can't Write TO

### Error Log

``` bash
Perl provider (optional)
- perl executable: /usr/bin/perl
- WARNING  Can't write to /usr/local/share/perl/5.36.0 and /usr/local/       bin: Installing modules to /home/myUserName/perl5
  - ADVICE:
    -  To turn off this warning, you have to do one of the following:
    -    - run me as a root or with --sudo option (to install to /usr/           local/share/perl/5.36.0 and /usr/local/bin)
    -    - Configure local::lib in your existing shell to set                    PERL_MM_OPT etc.
    -    - Install local::lib by running the following commands
    -
    -          cpanm --local-lib=~/perl5 local::lib && eval $(perl -I            ~/perl5/lib/perl5/ -Mlocal::lib)
```

### Solution

``` bash
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
```

## No Python Executable Found That Can Import Neovim

### Error Log

``` bash
Python 3 provider (optional) ~
- WARNING No Python executable found that can `import neovim`. Using the first available executable for diagnostics.
- WARNING Could not load Python 3:
  /opt/homebrew/bin/python3 does not have the "neovim" module.
  /opt/homebrew/bin/python3.12 does not have the "neovim" module.
  /opt/homebrew/bin/python3.11 does not have the "neovim" module.
  /opt/local/bin/python3.10 does not have the "neovim" module.
  /opt/local/bin/python3.9 does not have the "neovim" module.
  python3.8 not found in search path or not executable.
  python3.7 not found in search path or not executable.
  python not found in search path or not executable.
  - ADVICE:
    - See :help |provider-python| for more information.
    - You may disable this provider (and warning) by adding `let g:loaded_python3_provider = 0` to your init.vim
- Executable: Not found
```

### Solution

``` bash
pip3 install --user --upgrade pynvim
```

## Neovim is Out-of-date

### Error Log

``` bash
- WARNING Gem "neovim" is out-of-date. Installed: 0.9.0, latest: 0.9.1
  - ADVICE:
    - Run in shell: gem update neovim
```

### Solution

``` bash
sudo gem update neovim
```

## Perl - cpan Module is Not Installed

[Issue 15006](https://github.com/neovim/neovim/issues/15006)

> Are you using the system perl? I think it's an issue with system perl; Try
using the homebrew version or install it yourself

### Error Log 1

``` bash
Perl provider (optional) ~
- WARNING "Neovim::Ext" cpan module is not installed
  - ADVICE:
    - See :help |provider-perl| for more information.
    - You may disable this provider (and warning) by adding `let g:loaded_perl_provider = 0` to your init.vim
```

### Solution Attempt 1

``` bash
# macOS
sudo Neovim::Ext
```

### Error Log 2

``` bash
Result: FAIL
Failed 56/59 test programs. 7/28 subtests failed.
make: *** [test_dynamic] Error 255
  JACQUESG/Neovim-Ext-0.05.tar.gz
one dependency not OK (MsgPack::Raw); additionally test harness failed
  /usr/bin/make test -- NOT OK
//hint// to see the cpan-testers results for installing this module, try:
  reports JACQUESG/Neovim-Ext-0.05.tar.gz
```

### Solution 2 - macOS

1. `brew install perl`
2. `PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib`
3. `sudo cpan local::lib`
4. (If not in zshrc): `echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> ~/.zshrc`
5. `source ~/.zshrc`
6. `sudo cpan Neovim::Ext`
7. `sudo cpan App:cpanminus`

### Error Log 3

``` bash
Perl provider (optional)
- perl executable: /opt/homebrew/bin/perl
- ERROR Command error (job=15, exit code 2): /opt/homebrew/bin/perl -W '-MApp::cpanminus' -e  (in '/Users/myUserName/.local/share/nvim/lazy')
stderr: Can't locate App/cpanminus.pm in @INC (you may need to install the App::cpanminus module) (@INC entries checked: /opt/homebrew/opt/perl/lib/perl5/ site_perl/5.38/darwin-thread-multi-2level /opt/homebrew/opt/perl/lib/perl5/             site_perl/5.38 /opt/homebrew/opt/perl/lib/perl5/5.38/darwin-thread-multi-               2level /opt/homebrew/opt/perl/lib/perl5/5.38 /opt/homebrew/lib/perl5/site_perl/         5.38/darwin-thread-multi-2level /opt/homebrew/lib/perl5/site_perl/5.38).BEGIN failed--compilation aborted.
```

### Solution 3 - macOS

Re-run step #7 from Solution 2

``` bash
# macOS - confirmed
sudo cpan App:cpanminus
``````

### Expected Output

```
Perl provider (optional)
- perl executable: /opt/homebrew/bin/perl
- OK Latest "Neovim::Ext" cpan module is installed: 0.06
```


## LSP Log Level : WARN

* :bulb: This is NOT a nvim warning; but the "level of loginess" for the LSP!
  * [Issue 15567](https://github.com/neovim/neovim/issues/15567)
  * [LSP Keybindings](https://smarttech101.com/nvim-lsp-diagnostics-keybindings-signs-virtual-texts/)


### Warn Log

``` bash
vim.lsp: require("vim.lsp.health").check()
  - LSP log level : WARN
```

### Solution

Research:
  * `set_log_level` for LSPs?

## Resolved Errors without Documented Solutions

### Perl cpanminus fatscript

I unfortunately do not remember how I resolved this. But most of the issues
revolved around not having the proper Perl repo or packages. There was an issue
in which one of the repos' `cpanminus` libraries ***NOT** having the
`fatscript` module. In the this case, I believe I resolved the issue by either:

* Manually downloading and installing `fatscript` from the Perl website ***OR***
* Removing the `apt` repos' `cpanminus` library, then manually downloading and
  installing the library from the Perl website.

:bulb: **Lessons Learned:** *Don't trust the `apt` repository.

#### Error Log

```
Perl provider (optional)
- perl executable: /usr/bin/perl
- ERROR Command error (job=16, exit code 2): /usr/bin/perl '-MApp::cpanminus::fatscript' -e 'my $app = App::cpanminus::script->new; $app->parse_options ("--info", "-q", "Neovim::Ext"); exit $app->doit' (in '/home/myUserName')
stderr: Can't locate App/cpanminus/fatscript.pm in @INC (you may need to install the App::cpanminus::fatscript module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.36.0 /usr/local/share/perl/5.36.0 /usr/lib/x86_64-linux-gnu/perl5/5.36 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/           perl/5.36 /usr/share/perl/5.36 /usr/local/lib/site_perl).BEGIN failed--compilation aborted.
- ERROR Failed to run: /usr/bin/perl -MApp::cpanminus::fatscript -e my $app = App::cpanminus::script->new; $app->parse_options ("--info", "-q", "Neovim::Ext"); exit $app->doit
- ADVICE:
- Make sure you're connected to the internet.
- Are you behind a firewall or proxy?
```

### Nvim-treesitter: Unknown Key

#### Error Log

``` bash
24 - WARNING {nvim-treesitter}: unknown key <requires>
```

#### Solution

*Don't recall.*
