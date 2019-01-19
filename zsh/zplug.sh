# zsh zplug

source $ZPLUG_HOME/init.zsh

# plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
# https://qiita.com/mollifier/items/81b18c012d7841ab33c3
zplug "mollifier/anyframe"
zplug "fagahhe2645/5a0daab3bb10b947eccadb0c9ab02d5e", from:gist
zplug "fagahhe2645/95359f71b1670cfb7c8673240b2225df", from:gist
# commands
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "peco/peco", as:command, from:gh-r
zplug "github/hub", as:command, from:gh-r
zplug "motemen/ghq", as:command, from:gh-r
zplug "b4b4r07/gist", as:command, from:gh-r

# settings 
alias github='cd $(ghq root)/$(ghq list | peco)'
bindkey '^r' anyframe-widget-put-history


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

autoload -U promptinit; promptinit

PURE_CMD_MAX_EXEC_TIME=10

prompt pure


