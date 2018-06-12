# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
        . /etc/bash.bashrc
fi

PATH=$PATH:~/.cargo/bin

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

alias ls='ls --color=auto'

# python virtualenv stuff and pip stuff
export PIP_REQUIRE_VIRTUALENV=true
gpip() {
        PIP_REQUIRE_VIRTUALENV="" pip "$@"
    }
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export SSLKEYLOGFILE=~/.sslkeylog.log

LC_ALL=en_US.UTF-8

export DISPLAY=:0
export WORKON_HOME=~/envs
source /usr/bin/virtualenvwrapper_lazy.sh

which zsh > /dev/null 2>&1 && exec zsh
