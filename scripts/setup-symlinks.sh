#!/usr/bin/env bash

dotfiles_dir=$HOME/.dotfiles

dotfiles=(
	.bashrc
	.bashrc.d
	.bash_profile
	
	.zshrc
	.zshrc.d
	.zprofile
	
	.config/git
	.tmux.conf
	.toolbox
	
	.config/nvim
	.config/helix
	.config/VSCodium/User/settings.json
)

for file in "${dotfiles[@]}"; do
	out="$HOME/$file"
	src="$dotfiles_dir/$file"
	
	if [ -f $file ] && [ ! -d $(dirname $out) ]; then
		mkdir -p $(dirname $out)
	fi
	
	if [ -e $out ]; then
		echo "Skipping $out: file already exists."
	else
		ln -s $src $out
		echo "Symlink $out created."
	fi
done
