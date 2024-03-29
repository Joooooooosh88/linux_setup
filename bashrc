# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

parse_git_branch(){
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[$(tput sgr0)\]\[\033[38;5;196m\](\D{%F %T}\[$(tput sgr0)\]\[\033[38;5;196m\]) \[$(tput sgr0)\]\[\033[38;5;71m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;3m\]\$(parse_git_branch)\[$(tput sgr0)\]\n$ "
