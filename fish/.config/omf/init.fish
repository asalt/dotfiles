
function csv_viewer_func
    csvlook $argv | less -S
end

function csv_viewer_func
    csvlook $argv | less -S
end

alias py35='source ~/Virtualenvs/py35/bin/activate.fish'
alias csv_viewer=csv_viewer_func
alias ll='ls -halt'
alias xtex='xelatex -synctex=1 -interaction=nonstopmode'
# alias ctags="`brew --prefix`/bin/ctags"

alias cp='cp -iv'
alias mv='mv -i'

alias ..='cd ..'

# alias env tmux='TERM=xterm-256color tmux'
alias tmux='tmux -2'

alias showip='ip addr show eth0 | grep inet | awk \'{ print $2; }\' | sed \'s/\/.*$//\''

alias edit='emacsclient -t'
alias sedit='sudo emacsclient -t'

set -g -x PIP_REQUIRE_VIRTUALENV true

function gpip
  PIP_REQUIRE_VIRTUALENV pip $argv
end


set -g -x WORKON_HOME $HOME/Virtualenvs
set -g -x PYTHONSTARTUP $HOME/.ipython/profile_default/startup/00-pythonstartup.py

set -g -x ALTERNATE_EDITOR ""
set -g -x EDITOR "emacsclient -t"                  # $EDITOR should open in terminal
set -g -x VISUAL "emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
