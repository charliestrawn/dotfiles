source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle python
antigen bundle pip

antigen apply

BULLETTRAIN_DIR_EXTENDED=0
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    dir
    virtualenv
    go
    git
    cmd_exec_time
)

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
source $HOME/.aliases
