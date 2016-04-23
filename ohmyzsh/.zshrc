# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="false"

# enable plugins
plugins=(git ruby perl python grep vi-mode)
source $ZSH/oh-my-zsh.sh
eval `dircolors ~/dircolors.256dark`

# source custom configuration
if [ -f ~/.customrc ]; then
	source ~/.customrc
else
	print "404: ~/.customrc not found."
fi

