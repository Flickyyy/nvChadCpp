# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PS1="\[$(tput setaf 226)\]\u\[$(tput setaf 220)\]@\[$(tput setaf 214)\]\h \[$(tput setaf 33)\]\w \[$(tput sgr0)\]$ "

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

alias vi=nvim
alias vim=nvim

mkcd() { mkdir -p "$@" && cd "$@"; }

unset rc

#[ -f "/home/flicky/.ghcup/env" ] && source "/home/flicky/.ghcup/env" # ghcup-env
[ -f "/home/flicky/.ghcup/env" ] && source "/home/flicky/.ghcup/env" # ghcup-env
