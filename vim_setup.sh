#!/usr/bin/env bash
cwd=`dirname ${0}`
ln -s ${cwd}/.vimrc $HOME/.vimrc

if [ ! -d $HOME/.vim ]; then
    mkdir $HOME/.vim
fi
cd $HOME/.vim
