#!/bin/bash
SCRIPT_NAME=`basename ${0}`
DEFAULT_PYTHON3_VERSION="3.5.1"

while getopts 3v:mh OPT
do
	case $OPT in
		3 ) PYTHON3_FLAG="TRUE";;
        v ) VERSION=$OPTARG;;
		m ) MATLAB_FLAG="TRUE";;
		h ) HELP_FLAG="TRUE";;
	esac
done

if [ $HELP_FLAG ] || [ $# = 0 ]; then
	cat << __EOD__
Usage: $SCRIPT_NAME [-3] [-v ver] [-m]" 
  -3        Install Python3
  -v ver    Python3 version(default 3.5.1)
  -m        Install required packages for matplotlib
  -h        Show this help message
__EOD__
	exit
fi

if [ $PYTHON3_FLAG ]; then
	if [ ! "$VERSION" ]; then
		VERSION=$DEFAULT_PYTHON3_VERSION
	fi
	yum install gcc-c++
	yum install openssl-devel
	yum install readline-devel
	git clone https://github.com/yyuu/pyenv /usr/local/bin/pyenv
	echo 'export PYENV_ROOT="/usr/local/bin/pyenv"' >> ~/.bashrc
<< __OTHER_WAY__
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
__OTHER_WAY__
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
	soruce ~/.bashrc
	pyenv install $VERSION
	yum install python-setuptools
	easy_install virtualenv
fi

if [ $MATLAB_FLAG ]; then
	yum install freetype-devel
	yum install libpng-devel
fi
