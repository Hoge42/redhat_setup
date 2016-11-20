alias vi='vim'
alias view='vim -R'
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -la'

export EDITOR="vim"
export HISTSIZE=50000
export HISTTIMEFORMAT="%y/%m/%d %T  "

# paste this to ~/.bashrc
<< __COMMENT_OUT__
file=$HOME"/redhat_setup/.bashrc"
if [ -f $file ]; then
	. $file
fi
__COMMENT_OUT__

function superedit() {
    if [ -z "$1" ]; then
        echo "needs target path"
        return false
    fi
    if sudo test ! -e "$1.org"; then
        sudo cp -p -v $1 "$1.org"
    fi
    sudoedit $1
}

function superdiff() {
    if [ -z "$1" ]; then
        echo "needs target path"
        return false
    fi
    sudo diff -u $1.org $1
}
