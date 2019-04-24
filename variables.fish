set -gx CLICOLOR '1'
set -gx COMPLETION_WAITING_DOTS 'true'
set -gx EDITOR 'vim'
set -gx GOPATH "$HOME/Developer/go"
set -gx HISTCONTROL 'ignoreboth'
set -gx HISTFILESIZE "$HISTSIZE"
set -gx HISTIGNORE "&:bg:clear:exit:fg:history:jobs:pwd:* --help:* --version"
set -gx HISTSIZE '32768'
set -gx LANG 'en_US.UTF-8'
set -gx LC_ALL 'en_US.UTF-8'
set -gx NODE_REPL_HISTORY_SIZE '32768'
set -gx PATH /usr/local/opt/ruby/bin $PATH $GOPATH/bin /usr/local/lib/ruby/gems/2.6.1/bin
set -gx PYTHONIOENCODING 'UTF-8'
