git config --global user.name "hoge"
git config --global user.email hoge@example.com
git config --global color.ui true
git config --global core.editor vim
git config --global core.pager less
git config --global push.default simple
git config --global alias.alllog 'log --all --graph --date=short --format="%C(yellow)%h%C(reset) %C(magenta)[%ad]%C(reset)%C(auto)%d%C(reset) %s %C(cyan)@%an%C(reset)"'
echo 'source /etc/bash_completion.d/git' >> $HOME/.bashrc
