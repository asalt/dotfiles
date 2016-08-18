
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

alias env tmux='TERM=xterm-256color tmux'


set -g -x PIP_REQUIRE_VIRTUALENV true

function gpip
  PIP_REQUIRE_VIRTUALENV pip $argv
end


set -g -x WORKON_HOME $HOME/.virtualenvs
set -g -x PYTHONSTARTUP $HOME/.ipython/profile_default/startup/00-pythonstartup.py