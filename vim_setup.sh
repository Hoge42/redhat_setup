cwd=`dirname ${0}`
ln -s $cwd/.vimrc $HOME/.vimrc

if [ ! -d $HOME/.vim ]; then
	mkdir $HOME/.vim
fi
cd $HOME/.vim
wget https://github.com/Glench/Vim-Jinja2-Syntax/archive/master.tar.gz
tar xzf master.tar.gz
cp -r Vim-Jinja2-Syntax-master/{ftdetect,indent,syntax} .
rm -rf Vim-Jinja2-Syntax-master
rm -rf master.tar.gz
cd $HOME
