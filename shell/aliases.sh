# use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

# protect against overwriting
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

# ls aliases
alias ll='ls -la'
alias lh='ls -lah'
alias la='ls -a'
alias l='ls'

# make parent directories aliases
alias mkdir='mkdir -pv'

# git aliases
alias gcl='git clone'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gap='git add -p'
alias gc='git commit -m'
alias gch='git checkout'
alias gpsh='git push'
alias gpll='git pull'
alias grs='git restore --staged .'

# python aliases
alias py='python3'

# vim aliases
alias vi='nvim'
alias vim='nvim'
alias edit='nvim'

# make directory and cd into it
mcd() {
	mkdir "${1}" && cd "${1}"
}

# apt aliases
alias update='sudo apt-get update && sudo apt-get upgrade'

# terminal aliases
alias c='clear'
alias e='exit'
alias t='tmux'

# networking
alias ports='netstat -tulanp'
alias ping='ping -c 5'

# reboot/shutdown/poweroff/halt
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# zoxide z alias
alias j='z'

# random things
alias weather='curl wttr.in/Paris'
alias browsh='docker run --rm -it browsh/browsh'
