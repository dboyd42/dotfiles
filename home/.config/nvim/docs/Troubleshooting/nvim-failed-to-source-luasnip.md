## Nvim Error: Failed to Source LuaSnip.lua

> Author: David Boyd<br>
> Date: 2024-02-05

## Table of Contents

<!-- vim-markdown-toc GFM -->

* [Solution](#solution)
* [Error Log](#error-log)

<!-- vim-markdown-toc -->

## Solution

Ultimately, delete your local cache of plugins and reinstall those plugins via
Mason.

1. Delete the local folder

``` bash
rm -rf $HOME/.local/share/nvim/lazy/LuaSnip
```

2. Open vim (Mason will auto-install LuaSnip) and generate following error:

```
E5113: Error while calling lua chunk: vim/_options.lua:0: E21: Cannot make changes, 'modifiable' is off
```

3. Press `Enter` to continue.
4. In Mason, press `U` to update your packages
5. Close out of Nvim.


## Error Log

```
2023-12-26T11:44:19 lazy.nvim  ERROR Failed to source `/Users/myUserName/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua`

vim/_editor.lua:0: /Users/myUserName/.config/nvim/init.lua..nvim_exec2() called at /Users/myUserName/.config/nvim/init.lua:0../Users/myUserName/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua
: Vim(source):E5113: Error while calling lua chunk: ...cal/share/nvim/lazy/LuaSnip/lua/luasnip/loaders/init.lua:1: module 'luasnip.loaders._caches' not found:
        no field package.preload['luasnip.loaders._caches']
cache_loader: module luasnip.loaders._caches not found
cache_loader_lib: module luasnip.loaders._caches not found
        no file './luasnip/loaders/_caches.lua'
        no file '/opt/homebrew/share/luajit-2.1/luasnip/loaders/_caches.lua'
        no file '/usr/local/share/lua/5.1/luasnip/loaders/_caches.lua'
        no file '/usr/local/share/lua/5.1/luasnip/loaders/_caches/init.lua'
        no file '/opt/homebrew/share/lua/5.1/luasnip/loaders/_caches.lua'
        no file '/opt/homebrew/share/lua/5.1/luasnip/loaders/_caches/init.lua'
        no file './luasnip/loaders/_caches.so'
        no file '/usr/local/lib/lua/5.1/luasnip/loaders/_caches.so'
        no file '/opt/homebrew/lib/lua/5.1/luasnip/loaders/_caches.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'
        no file './luasnip.so'
        no file '/usr/local/lib/lua/5.1/luasnip.so'
        no file '/opt/homebrew/lib/lua/5.1/luasnip.so'
        no file '/usr/local/lib/lua/5.1/loadall.so'
stack traceback:
        [C]: in function 'require'
        ...cal/share/nvim/lazy/LuaSnip/lua/luasnip/loaders/init.lua:1: in main chunk
        [C]: in function 'require'
        ...hatm/.local/share/nvim/lazy/LuaSnip/lua/luasnip/init.lua:7: in main chunk
        [C]: in function 'require'
        ...tm/.local/share/nvim/lazy/LuaSnip/lua/luasnip/config.lua:243: in function '_setup'
        .../myUserName/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua:79: in main chunk
        [C]: in function 'nvim_exec2'
        vim/_editor.lua: in function 'cmd'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:481: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:480>
        [C]: in function 'xpcall'
        ...
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:342: in function '_load'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:187: in function 'load'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:337>
        [C]: in function 'xpcall'
        .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:113: in function 'try'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:337: in function '_load'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:187: in function 'load'
        ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:119: in function 'startup'
        ...myUserName/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:110: in function 'setup'
        /Users/myUserName/.config/nvim/init.lua:28: in main chunk

# stacktrace:
  - vim/_editor.lua:0 _in_ **cmd**
  - ~/.config/nvim/init.lua:28
Press ENTER or type command to continue
```
