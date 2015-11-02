#!/bin/bash

YOU_USING=`echo $0`
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $YOU_USING == "/bin/bash" ]; then
	echo ". $SCRIPT_DIR/command_not_found_bash" >> $HOME/.bashrc
elif [ $YOU_USING == "/bin/zsh" ]; then
	echo ". $SCRIPT_DIR/command_not_found_bash" >> $HOME/.zshrc
else
	echo "Neither bash nor zsh are the default shell."
fi
