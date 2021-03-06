# pip should only run if there is a virtualenv currently loaded
export PIP_REQUIRE_VIRTUALENV=true

# This is to install a global python package
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
# use example:
# gpip install --upgrade pip setuptools wheel virtualenv
# this will upgrade global packages

# export $WORKON_HOME=~/Virtualenvs
export TERM=xterm-256color
# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export WORKON_HOME=$HOME/Virtualenvs
export PROJECT_HOME=$HOME/Projects
export PYTHONSTARTUP=$HOME/.ipython/profile_default/startup/00-pythonstartup.py
export PATH=$PATH:$HOME/edirect
export PATH=$PATH:$HOME/meme/bin

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR should open in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/Qt-5.9.7/lib/
export LD_LIBRARY_PATH="/usr/local/lib64/R/lib:$LD_LIBRARY_PATH"
#source /usr/local/bin/virtualenvwrapper.sh
