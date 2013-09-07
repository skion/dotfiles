# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Alias commands
alias ls="ls --color=auto"
alias l='ls -gh --color=auto'
alias la='ls -a --color=auto'
alias mv="nocorrect mv"
alias cp="nocorrect cp"
alias man="nocorrect man"
alias mkdir="nocorrect mkdir"
alias mkcd='nocorrect mkdir $1 && cd $1'
alias rm="nocorrect rm"
alias ping="ping -c4"
alias df="df -h"
alias grep="grep --color=auto"
alias rgrep="grep --color=auto -HnR"
alias apt-search="apt-cache search"
alias apt-install="sudo apt-get install"
alias apt-update="sudo apt-get update"
alias apt-upgrade="sudo apt-get dist-upgrade"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(debian encode64 git git-extras history python svn)

source $ZSH/oh-my-zsh.sh

# Includes local or confidential bits
source ~/.zshlocal

# Debian virtualenvwrapper
if [ -f /etc/bash_completion.d/virtualenvwrapper ]; then
    export WORKON_HOME=~/envs
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    source /etc/bash_completion.d/virtualenvwrapper
fi

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
