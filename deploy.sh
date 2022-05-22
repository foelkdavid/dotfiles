#!/bin/sh

#prepare files
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
cp -f $PWD/dwm/config.h $HOME/.local/src/dwm/
cp -f $PWD/dwmblocks/blocks.h $HOME/.local/src/dwmblocks/
cp -rf $PWD/dwmblocks/modules/ $HOME/.local/src/dwmblocks/
cp -f $PWD/neofetch/config.conf $HOME/.config/neofetch/
cp -f $PWD/nsxiv/config.h $HOME/.local/src/nsxiv/
cp -f $PWD/picom/picom.conf $HOME/.config/picom/
cp -rf $PWD/rofi/themes $HOME/.config/rofi/
cp -f $PWD/st/config.h $HOME/.local/src/st/
cp -f $PWD/x/xinitrc $HOME/.config/x/
cp -f $PWD/zsh/.zshrc $HOME/.config/zsh/

#link
mkdir dwm dwmblocks st nsxiv
rm dwm/config.h st/config.h dwm/blocks.h $HOME/.config/nsxiv/config.h
ln -s $HOME.local/src/dwm/config.h $HOME/.config/dwm/config.h
cd $HOME.local/src/dwm && make && sudo make install
ln -s $HOME.local/src/st/config.h $HOME/.config/st/config.h
cd $HOME.local/src/st && make && sudo make install
ln -s $HOME.local/src/dwmblocks/blocks.h $HOME/.config/dwmblocks/blocks.h
cd $HOME.local/src/dwmblock && make && sudo make install
ln -s $HOME.local/src/nsxiv/config.h $HOME/.config/nsxiv/config.h
cd $HOME.local/src/nsxiv && make && sudo make install
