#!/bin/bash

echo "Creating symlink to .vimrc"
ln -sf $PWD/.vimrc $HOME/.vimrc

git clone https://github.com/tpope/vim-fugitive.git bundle/fugitive
git clone https://github.com/dracula/vim.git bundle/dracula-theme

