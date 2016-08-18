#get architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    source $(brew --prefix)/etc/bash_completion
#fi

function csv_viewer_func(){
    csvlook $@ | less -S
}
alias py35='source ~/Virtualenvs/py35/bin/activate'
alias csv_viewer=csv_viewer_func
alias ll='ls -halt'
alias xtex='xelatex -synctex=1 -interaction=nonstopmode'
#alias ctags="`brew --prefix`/bin/ctags"
# Git branch in prompt.

function parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
# Set CLICOLOR for Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
# export Term=xterm-256color