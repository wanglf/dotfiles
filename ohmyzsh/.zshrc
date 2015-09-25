# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vi='vim'
alias vip='ssh -p 60022 root@vip'
alias lb01='ssh -p 60022 root@lb01'
alias lb02='ssh -p 60022 root@lb02'
alias realsrv01='ssh -p 60051 root@realsrv01'
alias realsrv02='ssh -p 60052 root@realsrv02'
<<<<<<< HEAD
alias linode='ssh -p 60022 root@linode'
=======
alias linode='ssh -p 50022 root@linode'
>>>>>>> e6e0ef5
alias vocb='vi /root/vocabulary'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_UPDATE="false"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby perl python grep)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib64/qt-3.3/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


export JAVA_HOME=/usr/java/jdk1.7.0_67
JAVA_HOME=/usr/java/jdk1.7.0_67
JRE_HOME=/usr/java/jdk1.7.0_67/jre
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
PATH=$PATH:/usr/libexec/git-core/
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
export JAVA_HOME JRE_HOME PATH CLASSPATH 

export M2_HOME=/opt/apache-maven-3.3.3
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"

export PATH=$PATH:$M2

echo
echo "=============== Quote Of The Day ==============="
echo
#fortune 60% vocabulary 10% fortunes 10% chinese 10% tang300 10% song100 | cowsay -f $(ls /usr/share/cowsay/ | shuf -n1)
fortune 99% vocabulary 1% fortunes
echo
echo "================================================"
echo
