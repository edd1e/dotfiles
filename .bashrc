source ~/.git-completion

# colorify ls
alias ls='ls --color=auto'

# simple ls
alias ll='ls -l'
alias la='ls -a'
alias al='ls -al'

# colorify prompt
export PS1="\[\e[0;39m\][\[\e[0;33m\]$(echo $USER)\[\e[0;39m\]@\[\e[1;34m\]$(echo $HOSTNAME)\[\e[0;39m\]]\[\e[0;32m\](\[\e[1;32m\]\W\[\e[0;32m\])\[\e[1;39m\]\$\[\e[0;39m\]"

# enable forward emacs-style command-line search
stty stop ""

# open a man page in macosx's preview
pman () {
	man -t "${1}" | open -f -a /Applications/Preview.app
}

# list of bash tricks:
# ====================
# cp /home/foo/realllylongname.cpp{,-old} 
# cp /home/foo/realllylongname.cpp{-old,} 
# cd -
# !!
# ehco foo bar baz
# ^ehco^echo
# !$ !^ !*
# !:2
# !$h !$:t
# !!:gs/foo/bar
# (cd /tmp && ls)
# <alt> + <print screen/sys rq> + <R> - <S> - <E> - <I> - <U> - <B>
# ping -i 60 -a IP_address
# <ctrl+u> ... <ctrl+y>
# echo "!!" > foo.sh
# fuser -uvm <filename>
# !$:p

