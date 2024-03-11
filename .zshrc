# this zshrc depends on antigen, sindresorhus/pure theme, pyenv, and nvm
# antigen: curl -L git.io/antigen > $HOME/antigen.zsh
#	   source $HOME/antigen.zsh
#
# sindresorhus/pure:
# 	clone https://github.com/sindresorhus/pure.git (I have it cloned to ~/.zsh/pure)
#	add path of cloned repo to .zshrc

source $HOME/antigen.zsh


# SSHing to MBP server
source ~/.webbserver_config.sh

webbserver() {
	wakeonlan "$SERVER_MAC"
	sleep 2
	ssh harrison@"$SERVER_IP"
}


# load zsh-autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# extra zsh completions
# antigen bundle zsh-users/zsh-completions

# load the 'git' plugin from oh-my-zsh
# antigen bundle git

# syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# apply changes
antigen apply

# ZSH_THEME=""
# link to pure directory
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
