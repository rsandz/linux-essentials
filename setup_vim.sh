#!/bin/bash
#
# setup_vim.sh : For setting up vim configs.

# Copy .vim
cp -r .vim ~/

# Get Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
