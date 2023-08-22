machine_name() {
    if [[ -f $HOME/.name ]]; then
        cat $HOME/.name
    else
        hostname
    fi
}

PS1='\001\e[1;36m\002[ \u@$(machine_name) >> \W ]\001\e[0m\002$ '
PS2='>$ '

