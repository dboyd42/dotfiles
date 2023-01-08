#!/bin/bash

vim +CocInstall\ coc-calc
sleep 10
vim +CocInstall\ coc-clangd &; vim +CocInstall\ coc-clang-format-sytle-options +q &;
vim +CocInstall\ coc-cmake &; vim +CocInstall\ coc-css &; fg && fg

vim +CocInstall\ coc-cssmodules &; vim +CocInstall\ coc-diagnostic &; vim +CocInstall\ coc-docker &; vim +CocInstall\ coc-git &; vim +CocInstall\ coc-golang &; vim +CocInstall\ coc-golines &; vim +CocInstall\ coc-html &; vim +CocInstall\ coc-htmlhint &; vim +CocInstall\ coc-intelephense &; vim +CocInstall\ coc-java &; vim +CocInstall\ coc-json &; vim +CocInstall\ coc-lightbulb &; vim +CocInstall\ coc-ltex &; vim +CocInstall\ coc-markdownlint &; vim +CocInstall\ coc-markdown-preview-enchanced &; vim +CocInstall\ coc-markmap &; vim +CocInstall\ coc-nav &; vim +CocInstall\ coc-nginx &; vim +CocInstall\ coc-perl &; vim +CocInstall\ coc-phpls &; vim +CocInstall\ coc-powershell &; vim +CocInstall\ coc-prettier &; vim +CocInstall\ coc-pyright &; vim +CocInstall\ coc-rust-analyzer &; vim +CocInstall\ coc-snippets &; vim +CocInstall\ coc-spell-checker &; vim +CocInstall\ coc-sql &; vim +CocInstall\ coc-sqlfluff &; vim +CocInstall\ coc-sumneko-lua &; vim +CocInstall\ coc-svg &; vim +CocInstall\ coc-swagger &; vim +CocInstall\ coc-symbol-line &; vim +CocInstall\ coc-translator &; vim +CocInstall\ coc-tsserver &; vim +CocInstall\ coc-vimlsp &; vim +CocInstall\ coc-xml &; vim +CocInstall\ coc-yank &;
