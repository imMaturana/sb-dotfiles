if [ -f /etc/zshrc ]; then
    . /etc/zshrc
fi

# prompt
PS1='%F{green}%3~%f $ '

# set completion
autoload -Uz compinit && compinit

# set $PATH
export PATH=$PATH:~/.local/bin:~/bin

# source files
if [ -d ~/.zshrc.d ]; then
    for file in ~/.zshrc.d/*; do
        . $file
    done
fi

# precmd
precmd() {
    # set window title
    print -Pn '\e]0;%n@%M:%~\a'
}

# starship
if command -v starship >/dev/null; then
    eval "$(starship init zsh)"
fi

# toolbox
[ -f /run/.toolboxenv ] && . $TOOLBOX/zshrc
