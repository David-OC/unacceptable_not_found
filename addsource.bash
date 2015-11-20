#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $ZSH_VERSION

if [ -n "$BASH_VERSION"  ]; then
	echo "source $SCRIPT_DIR/command_not_found_bash" >> $HOME/.bashrc
	echo "Added source to .bashrc"
	FLAG=0
fi
if [ -n "$ZSH_VERSION" ]; then
	echo "source $SCRIPT_DIR/command_not_found_bash" >> $HOME/.zshrc
	echo "Added source to .zshrc"
	FLAG=0
fi

[ $FLAG -ne 0 ] && echo "Could not find either bash nor zsh, exiting.." && exit 1
