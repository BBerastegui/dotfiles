export EDITOR=/usr/bin/vim

export PS1="\u@\h\w $ "

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

# Function aliases
alias sgit=sgit_func $@
alias ssh=ssh_custom_profile $@

# Simple aliases
alias ls="ls -G"

