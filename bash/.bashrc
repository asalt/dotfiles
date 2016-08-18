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
# export TERM=xterm-256color
# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export PYTHONSTARTUP=$HOME/.ipython/profile_default/startup/00-pythonstartup.py
#source /usr/local/bin/virtualenvwrapper.sh