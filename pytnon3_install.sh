#!/bin/bash
sudo yum install gcc-c++
sudo yum install openssl-devel
sudo yum install readline-devel
sudo git clone https://github.com/yyuu/pyenv /usr/local/bin/pyenv
echo 'export PYENV_ROOT="/usr/local/bin/pyenv"' >> ~/.bashrc
<< __OTHER_WAY__
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
__OTHER_WAY__
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
soruce ~/.bashrc
sudo pyenv install 3.5.1
sudo yum install python-setuptools
sudo easy_install virtualenv
