alias doIpForward='sudo sysctl -w net.ipv4.ip_forward=1'
alias undoIpForward='sudo sysctl -w net.ipv4.ip_forward=0'
alias showIpForward='cat /proc/sys/net/ipv4/ip_forward'

alias socks='ssh -v -C -ND 9999 '
alias socksDropbox='ssh -v -C -ND 10010 '

alias cuantoOcupa="du -h ."
alias espacioEnDisco="df -h"
alias serviciosEscuchando="sudo netstat -plnt"
alias nmapfulltcp="sudo nmap -vv -sT -sV -O -p- -Pn"
alias nmapfulludp="sudo nmap -vv -sU -sV -O -p- -Pn --top-ports 1000"
alias nmapfullFULL="sudo nmap -vv -O -p- -Pn -sTUV --top-ports 10000"
alias pairIphone='idevicepair unpair && idevicepair pair'
alias hideMyHist='export HISTFILE="/dev/null"'
alias gimmeanewmac='sudo ifconfig wlan0 down && sudo macchanger -r wlan0 && sudo ifconfig wlan0 up'
alias newTor='sudo service tor restart && sudo service polipo restart && sleep 1 && curl -x http://localhost:8118 ifconfig.me'

alias quecomohoy="echo 'Mexican,Burgers,Pizza,Sushi,Salad' | tr ',' '\n' | sort -R | head -1;"

