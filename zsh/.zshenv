# zsh env
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export LESS='-R'

## exports
# PATH
export SYS_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export USER_BIN="$HOME/local/bin"
export PATH="$SYS_PATH:$USER_BIN"
export FPATH="$ZDOTDIR/autoload:$FPATH"
# OTHER
export USER_OPT="$HOME/local/opt"
export ZVENDORDIR="$ZDOTDIR/vendor"

### zplug
if [ -d $ZVENDORDIR/zplug ]; then
  export ZPLUG_HOME="$ZVENDORDIR/zplug"
fi
### pure-prompt
if [ -d $ZVENDORDIR/pure ]; then
  export FPATH="$ZVENDORDIR/pure:$FPATH"
fi

### Golang
if [ -x "`which go`" ]; then
  export GOROOT="`go env GOROOT`"
  export GOPATH="$HOME/dev/golang"
  export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
fi

### anyenv
if [ -d $XDG_CONFIG_HOME/anyenv ]; then
  export ANYENV_ROOT="$XDG_CONFIG_HOME/anyenv"
  export PATH="$ANYENV_ROOT/bin:$PATH"
fi

