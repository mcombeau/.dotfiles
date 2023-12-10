# bash history settings
HISTSIZE=1000
HISTFILESIZE=2000

# make neovim the default editor
export EDITOR=nvim

# load nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export norminette path
# export PATH="$HOME/.local/bin:$PATH"
# export PATH="$HOME/.dotfiles/bin:$PATH"

# install fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
