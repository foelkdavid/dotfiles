#!/bin/sh

#prepare
mkdir -p $HOME/.config/dunst
mkdir -p $HOME/.config/dwm
mkdir -p $HOME/.config/dwmblocks
mkdir -p $HOME/.config/neofetch
mkdir -p $HOME/.config/nsxiv
mkdir -p $HOME/.config/picom
mkdir -p $HOME/.config/rofi
mkdir -p $HOME/.config/st
mkdir -p $HOME/.config/x
mkdir -p $HOME/.config/zsh

#copy
cp -f $PWD/dunst/dunstrc $HOME/.config/dunst/
cp -f $PWD/dwm/config.h $HOME/.local/usr/src/dwm/
cp -f $PWD/dwmblocks/blocks.h $HOME/.local/usr/src/dwmblocks/
cp -rf $PWD/dwmblocks/modules/ $HOME/.local/usr/src/dwmblocks/
cp -f $PWD/neofetch/config.conf $HOME/.config/neofetch/
cp -f $PWD/nsxiv/config.h $HOME/.local/usr/src/nsxiv/
cp -f $PWD/picom/picom.conf $HOME/.config/picom/
cp -rf $PWD/rofi/themes/* $HOME/.config/rofi/
cp -f $PWD/st/config.h $HOME/.local/usr/src/st/
cp -f $PWD/x/xinitrc $HOME/.config/x/
cp -f $PWD/zsh/.zshrc $HOME/.config/zsh/

#link
mkdir dwm dwmblocks st nsxiv
ln -s $HOME.local/src/dwm/config.h dwm/config.h
ln -s $HOME.local/src/st/config.h st/config.h
ln -s $HOME.local/src/dwmblocks/blocks.h dwm/blocks.h
ln -s $HOME.local/src/nsxiv/config.h nsxiv/config.h