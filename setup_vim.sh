#!/bin/bash
#
# setup_vim.sh : For setting up vim configs.

VIMRC_DIR='$HOME/.vim'

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [[ ! -d "${VIMRC_DIR}" ]]; then
    mkdir "${VIMRC_DIR}"
fi

# Copy .vim
cp -r vimrc "${VIMRC_DIR}"


# you complete me pre requesite
apt install build-essential cmake python3-dev
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clang-completer
