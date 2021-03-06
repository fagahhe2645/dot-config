# zsh env
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
export LESS='-R'

## exports
export SYS_PATH="/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin"
export USER_BIN="$HOME/local/bin"
export PATH="$SYS_PATH:$USER_BIN"
export FPATH="$HOME/.config/zsh/autoload:$FPATH"

### zplug
export ZPLUG_HOME="$HOME/.zplug"
if [ -d $ZPLUG_HOME ]; then
  export PATH="$PATH:$ZPLUG_HOME"
fi

### Golang
if [ -x "`which go`" ]; then
  export GOROOT="`go env GOROOT`"
  export GOPATH="$HOME/dev/golang"
  export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
fi

### anyenv
if [ -d $HOME/.anyenv ]; then
  export ANYENV="$HOME/.anyenv/bin"
  for D in `\ls $HOME/.anyenv/envs`
  do
    export ANYENV="$HOME/.anyenv/envs/$D/shims:$ANYENV"
  done
  export PATH="$ANYENV:$PATH"
fi

