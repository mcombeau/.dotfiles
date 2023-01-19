
# ------	SETTINGS
source ~/.bash/settings.bash

# ------	ALIASES
source ~/.shell/aliases.sh

# ------	PROMPT
source ~/.bash/prompt.bash

# ------	KEYBINDINGS
if [[ "$(set -o | grep 'emacs\|\bvi\b' | cut -f2 | tr '\n' ':')" != 'off:off:' ]]; then
  bind -x '"\C- ":clear;'
fi


