cat << 'EOS' >> $HOME/.bashrc
file=$HOME"/redhat_setup/.bashrc"
if [ -f $file ]; then
	. $file
fi
EOS

