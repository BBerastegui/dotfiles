alias doIpForward="sudo sysctl -w net.ipv4.ip_forward=1"
alias undoIpForward="sudo sysctl -w net.ipv4.ip_forward=0"
alias showIpForward="cat /proc/sys/net/ipv4/ip_forward"

alias gimmeanewmac="sudo ifconfig wlan0 down && sudo macchanger -r wlan0 && sudo ifconfig wlan0 up"
alias newTor="sudo service tor restart && sudo service polipo restart && sleep 1 && curl -x http://localhost:8118 ip.cow.cat"

export GOPATH=~/src/gocode
export PATH=$PATH:$GOPATH/bin

export PATH="$PATH:$HOME/.rvm/bin:$HOME/src/go/bin" # Add RVM to PATH for scripting

export EDITOR=vim
