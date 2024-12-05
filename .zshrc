
# Path to your oh-my-zsh installation.
export ZSH="/Users/gracekwak/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gracekwak/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gracekwak/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gracekwak/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gracekwak/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/gracekwak/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

alias mv="mv -i"
alias gs="git status"
alias ga="git add ."
alias gp="git push"
alias gl="git log"

export EDITOR=vim

# Add the following to the ~/.bash_profile or ~/.zshrc file:
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh

# To enable auto-switching of Rubies specified by .ruby-version files,
# add the following to ~/.bash_profile or ~/.zshrc:
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

chruby ruby-3.3.5
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
