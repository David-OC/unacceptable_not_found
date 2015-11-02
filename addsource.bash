#!/bin/bash

YOU_USING=`echo $0`

if [ $YOU_USING == "/bin/bash" ]; then
	echo ". $HOME/unacceptable_not_found/command_not_found_bash" >> $HOME/.bashrc
elif [ $YOU_USING == "/bin/zsh" ]; then
	echo ". $HOME/unacceptable_not_found/command_not_found_bash" >> $HOME/.zshrc
else
	echo "Neither bash nor zsh are the default shell."
fi
