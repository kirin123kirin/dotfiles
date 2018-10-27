#!/bin/bash

OWNDIR=$(cd $(dirname $0); pwd)

# .bashrc linking
if [ -f ~/.bashrc ]; then
    echo "" >> ~/.bashrc
    echo ". $OWNDIR/bashrc" >> ~/.bashrc
else
    ln -s $OWNDIR/bashrc ~/.bashrc
fi

# .vimrc linking
if [ -f ~/.vimrc ]; then
    echo "" >> ~/.vimrc
    echo if 1 >> ~/.vimrc
    echo "   execute 'source $OWNDIR/vimrc'" >> ~/.vimrc
    echo endif >> ~/.vimrc
else
    ln -s $OWNDIR/vimrc ~/.vimrc
fi
