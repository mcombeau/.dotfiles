# use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# open nvim when vim
alias vim='nvim'

# protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# ls aliases
alias ll='ls -la'
alias la='ls -a'
alias l='ls'

# git aliases
alias gcl='git clone'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gpsh='git push'
alias gpll='git pull'

alias vi='vim'
# make directory and cd into it
mcd() {
	mkdir "${1}" && cd "${1}"
}
