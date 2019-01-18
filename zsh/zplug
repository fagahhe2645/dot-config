# zsh zplug

source $ZPLUG_HOME/init.zsh

# plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme


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


