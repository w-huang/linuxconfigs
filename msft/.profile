# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

alias gc="git add .; git commit -m"
#alias grep='grep --color --exclude=\*.{d.ts,xml,XML,h,min.js,js} --exclude-dir={bin,_generated} -nrI '
alias gp='grep --color=always --exclude=\*.{d.ts,h,min.js,xml,json,cscfg,csdef,lock} --exclude-dir={_generated} -nrI '
alias gpr='grep --color=always --exclude=\*.{d.ts,h,min.js,xml,cscfg,csdef,ts,lock} --exclude-dir={_generated} -nrI '
alias gps='grep --color=always --exclude=\*.{d.ts,h,min.js,xml,json,cscfg,csdef,js,js.map,lock} --exclude-dir={_generated} -nrI '
alias gpc='grep --color=always --exclude=\*.{d.ts,h,min.js,cs,js,ts,lock} --exclude-dir={_generated} -nrI '
alias gerp='grep --color=always --exclude=\*.{d.ts,lock} --exclude-dir={bin,_generated} -nrI '
alias open="explorer.exe"
alias g="git"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ga="git add -i"
alias glist="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias src=source
alias c=clear
alias cl=clear
alias rp="src ~/rp.sh"
alias se="src ~/se.sh"
alias cdr="src ~/c.sh"
alias pingme="src ~/alertme.sh"
alias wcfg="git checkout webconfigbranchlocal -- Extension/web.config"
alias cdc='cd /mnt/c'
alias b='git branch'
alias branch='git branch'
alias save='git add .; git commit -m temp'
alias status='git status'
alias sp='cd /mnt/c/SupportExtension'
alias less='less -R'
alias rg='rg -p'


export VISUAL=vim
export EDITOR="$VISUAL"
