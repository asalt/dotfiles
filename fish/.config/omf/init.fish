function csv_viewer_func
    csvlook $argv | less -S
end

function csv_viewer_func
    csvlook $argv | less -S
end



# various versions of Python with a "global" virtual environment
alias py35='source ~/Virtualenvs/py35/bin/activate.fish'
alias py36='source ~/Virtualenvs/py36/bin/activate.fish'
alias py37='source ~/Virtualenvs/py37/bin/activate.fish'
alias py38='source ~/virtualenvs/py38/bin/activate.fish'

alias csv_viewer=csv_viewer_func
alias ll='ls -halt'
alias xtex='xelatex -synctex=1 -interaction=nonstopmode'
# alias ctags="`brew --prefix`/bin/ctags"

#* function msfragger --description "run msfragger" */
#*     set --local options 'h/help' 'n/count=!_validate_int --min 1' */
#*     argparse $options -- $argv */
#*     set --query _flag_count; or set --local _flag_count 10 */


function llh --description "ll $argv | head [-n N]"
    set --local options 'h/help' 'n/count=!_validate_int --min 1'

    argparse $options -- $argv

    if set --query _flag_help
        printf "Usage: ll [PATH] | head [-n N]\n\n"
        printf "Options:\n"
        printf "  -h/--help       Prints help and exits\n"
        printf "  -n/--count=NUM  Count (minimum 1, default 10)"
        printf "  [PATH]  Passed directly to ll"
        return 0
    end

    set --query _flag_count; or set --local _flag_count 10

    ll $argv | head -n $_flag_count
end

alias cp='cp -iv'
alias mv='mv -i'
# alias llh='ll | head'

alias ..='cd ..'

# alias env tmux='TERM=xterm-256color tmux'
alias tmux='tmux -2'
alias show-fonts='fc-list :outline -f "%{family}\n" | sort -u | less'

alias showip='ip addr show eth0 | grep inet | awk \'{ print $2; }\' | sed \'s/\/.*$//\''

alias edit='emacsclient -t'
alias sedit='sudo emacsclient -t'

alias wcl='wc -l'
alias r='radian'

set -g -x PIP_REQUIRE_VIRTUALENV true

function gpip
  PIP_REQUIRE_VIRTUALENV pip $argv
end

export LD_LIBRARY_PATH="/usr/local/lib64/R/lib:$LD_LIBRARY_PATH"
set LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/Qt-5.9.7/lib/
export LD_LIBRARY_PATH

set -g -x WORKON_HOME $HOME/virtualenvs
set -g -x PYTHONSTARTUP $HOME/.ipython/profile_default/startup/00-pythonstartup.py
if test -d $HOME/edirect
    set PATH $PATH $HOME/edirect
end
if test -d $HOME/meme/bin
    set PATH $PATH $HOME/meme/bin
end


set -g -x ALTERNATE_EDITOR ""
set -g -x EDITOR "emacsclient -t"                  # $EDITOR should open in terminal
set -g -x VISUAL "emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
set -g -x rawtools '/mnt/e/tools/RawTools/RawTools.exe'

set -g -x msfragger "~/tools/msfragger/MSFragger-3.1/MSFragger-3.1.jar"


# CUDA
if test  -d "/usr/local/cuda-11.2/bin/" 
    set PATH "/usr/local/cuda-11.2/bin/:$PATH"
    export PATH
    set LD_LIBRARY_PATH /usr/local/cuda-12.2/lib64:"$LD_LIBRARY_PATH"
end

 set LD_LIBRARY_PATH /usr/local/cuda/lib64:"$LD_LIBRARY_PATH"
 set LD_LIBRARY_PATH /usr/local/cuda-10.2/lib64:"$LD_LIBRARY_PATH"
 export LD_LIBRARY_PATH
set PATH $PATH:~/julia-1.6.1/bin/


set PATH $PATH:/mnt/e/projects/MSPCRunner/src/mspcrunner/

export PATH

