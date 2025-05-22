export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=7

ZSH_THEME="spaceship"
ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/aliases

HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

export BUNDLER_EDITOR="vim"
export EDITOR="vim"
export SPACESHIP_ASYNC_SHOW=false

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/matt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/matt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/matt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/matt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

