#!/bin/bash

files=(.bashrc .git_aliases .docker_aliases)

for file in "${files[@]}"
do
	echo "linking $PWD/$file to $HOME/$file"
	if [ -h "$HOME/$file" ]; then
		echo "link exists, removing..."
		rm "$HOME/$file"
	else
		echo "$HOME/$file does not exists"
	fi

	ln -s "$PWD/$file" "$HOME/$file"
done

echo "REMEMBER TO SOURCE FILE -> source $HOME/.bashrc"
