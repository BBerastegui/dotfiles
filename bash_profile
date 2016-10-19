export EDITOR=/usr/bin/vim

#export PS1="\u@\h\w $ "
export PS1="[\[$(tput sgr0)\]\[\033[38;5;251m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]] - \[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h \[$(tput sgr0)\]\[\033[38;5;68m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \n \\$ \[$(tput sgr0)\]"

#
# Helper functions
#

# Change iTerm profiles
function set_iterm_profile(){
    echo -e "\033]50;SetProfile=$1\a"
}

#
# Custom functions
#

# SSH - Change background colour everytime you "ssh"
function ssh_custom_profile(){
    set_iterm_profile ssh
    $(whereis ssh) $@
    set_iterm_profile Default
}

# SSH and tmux
function ssht(){
    ssh_custom_profile $* -t "tmux a || tmux || /bin/bash"
}

# SSH tunnel git
sgit_func() {
    git config --global http.proxy 'socks5://localhost:8081'
    git $@
    git config --global --unset http.proxy
}

# Docker bash
docker-bash_func() {
    docker exec -it $* bash
}

# The good find
find() { command find $@ 2>&1 | grep -v "Permission denied"; }

# Function aliases
alias sgit=sgit_func $@
alias ssh=ssh_custom_profile $@

# Aliases
alias ls="ls -G"
alias smtptls="openssl s_client -debug -starttls smtp -crlf -connect"
## Docker helpers
alias docker-rm-exited="docker rm -v $(docker ps -a -q -f status=exited)"
alias docker-bash=docker-bash_func $@

