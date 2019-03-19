#! /bin/bash

pacman-mirrors -i -c China -m rank
pacman -Syyu

# install input tool
pacman -S --needed --noconfirm fcitx fcitx-im fcitx-configtool fcitx-googlepinyin 

# install and configure vim
pacman -S --needed --noconfirm vim git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install other applications
pacman -S --needed --noconfirm yay yaourt chromium deepin-screenshot
yay -S --needed --noconfirm electronic-wechat 

# set input tool environment
cat >> ~/.xprofile << EOF
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
EOF

# set command aliases
cat >> ~/.bashrc << EOF
alias ll='ls -l'
alias rm='rm -i'
EOF
