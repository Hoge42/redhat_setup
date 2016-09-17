#!/bin/bash
SCRIPT_NAME=`basename ${0}`

while getopts 3meh OPT
do
    case $OPT in
        3 ) PYTHON3_FLAG="TRUE";;
        m ) MATLAB_FLAG="TRUE";;
        e ) PYENV="TRUE";;
        h ) HELP_FLAG="TRUE";;
    esac
done


if [ $HELP_FLAG ] || [ $# = 0 ]; then
    cat << __EOD__
Usage: $SCRIPT_NAME [-3emh] [-v ver]" 
  -3        Install required packages for Python3
  -m        Install required packages for matplotlib
  -e        Install pyenv($HOME/.pyenv)
  -h        Show this help message
__EOD__
    exit
fi

if [ $PYTHON3_FLAG ]; then
    yum install gcc-c++
    yum install openssl-devel
    yum install readline-devel
    yum install python-setuptools
    easy_install virtualenv
fi

if [ $MATLAB_FLAG ]; then
    yum install freetype-devel
    yum install libpng-devel
fi

if [ $PYENV ]; then
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
<< __INSTALL_TO_GLOBAL__
    git clone https://github.com/yyuu/pyenv /usr/local/bin/pyenv
    echo 'export PYENV_ROOT="/usr/local/bin/pyenv"' >> /etc/bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /etc/bashrc
__INSTALL_TO_GLOBAL__

	cat <<AFTER_MESSAGE

Installation of pyenv is complete!
To install Python3:
$ source ~/.bashrc
$ pyenv install [version] 
AFTER_MESSAGE
fi
