# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.aliases
source ~/.functions
source ~/.secrets

export EDITOR=vim
export GOPATH=$HOME/go
export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:$HOME/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/local/bin:$PATH"
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
VIRTUAL_ENV_DISABLE_PROMPT=1

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# Path to your oh-my-zsh installation.
export ZSH="/Users/charliestrawn/.oh-my-zsh"

plugins=(
    git
    osx
    tmux
)
source $ZSH/oh-my-zsh.sh
