# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# set prompt
PS1='\e[0;32m\W\e[0m $ '

# User specific environment
export PATH=$HOME/.local/bin:$HOME/bin:$PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# toolbox
[ -f /run/.toolboxenv ] && . $TOOLBOX/bashrc

