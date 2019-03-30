# zsh aliases

# colorise ls command
alias ls='ls --color=auto'

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# colorise grep commands
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# combine cd and ls functions
function cdls(){
    cd "$@" && ls
}

# parent directories aliases
alias ...='cdls ../..'
alias ....='cdls ../../..'
alias .....='cdls ../../../..'

# run ranger (with exiing to selected directory option)
alias r='echo "Starting Ranger file manager"; ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# ping google's DNS
alias p='ping 8.8.8.8'
