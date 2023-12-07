/usr/bin/setxkbmap -option "caps:escape"

# ------	SETTINGS
source ~/.bash/settings.bash

# ------	ALIASES
source ~/.shell/aliases.sh

# ------	PROMPT
# source ~/.bash/prompt.bash

# ------	KEYBINDINGS
# if [[ "$(set -o | grep 'emacs\|\bvi\b' | cut -f2 | tr '\n' ':')" != 'off:off:' ]]; then
#  bind -x '"\C- ":clear;'
# fi

export PATH=/snap/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
