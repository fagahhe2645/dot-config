# autoload functions
autoload -Uz source_file 

# zplug init
if [ -d /usr/local/opt/zplug ]; then
  source_file $HOME/.config/zsh/zplug.sh
fi

# zsh settings
HISTFILE=${ZDOTDIR}/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_all_dups hist_ignore_dups hist_expand hist_ignore_space
setopt extended_history share_history
setopt autocd beep extendedglob notify
bindkey -v
# zcompdump
autoload -Uz compinit; compinit -d ${ZDOTDIR}/.zcompdump


## anyenv
if [ -d $HOME/.anyenv ]; then
  eval "$(anyenv init -)"
fi

# iterm2 shell integration
## curl -SsL "https://iterm2.com/misc/zsh_startup.in" > "${HOME}/.config/zsh/.iterm2_shell_integration.zsh"
## chmod +x  "${HOME}/.config/zsh/.iterm2_shell_integration.zsh"
source_file $HOME/.config/zsh/.iterm2_shell_integration.zsh

# alias
source_file $HOME/.config/zsh/zshalias.sh
