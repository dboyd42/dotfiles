@ECHO OFF
TITLE Installing Packages
:: This batch file installs vim's packages via git clone

cd C:\"Program Files (x86)\Vim\vim82\pack"
mkdir repos\start\
cd repos\start\

git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/dhruvasagar/vim-table-mode
git clone https://github.com/sjl/gundo.vim
git clone https://github.com/flazz/vim-colorschemes
git clone https://github.com/terryma/vim-multiple-cursors
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/tpope/vim-surround
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/dense-analysis/ale

