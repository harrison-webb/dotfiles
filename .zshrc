# this zshrc depends on antigen, sindresorhus/pure theme, pyenv, and nvm
# antigen: curl -L git.io/antigen > $HOME/antigen.zsh
#	   source $HOME/antigen.zsh
#
# sindresorhus/pure: npm install --global pure-prompt

source $HOME/antigen.zsh

# use the 'oh-my-zsh' library of plugins
antigen use oh-my-zsh

# load zsh-autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# extra zsh completions
antigen bundle zsh-users/zsh-completions

# load the 'git' plugin from oh-my-zsh
antigen bundle git

# apply changes
antigen apply


# select pure theme
autoload -U promptinit; promptinit
prompt pure

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

