#! /bin/sh

case "${OSTYPE}" in 
	darwin*)
		os=mac
	;;
	linux*)
		os=linux
		ln -sf ~/dotfiles/linux/.screenrc ~/.screenrc
	;;
esac

ln -sf ~/dotfiles/$os/.zshrc ~/.zshrc
ln -sf ~/dotfiles/$os/.vimrc ~/.vimrc
