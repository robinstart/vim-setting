# vim-setting
This is .vimrc or init.vim vim file of Seung Hyun Jeon

#Ubuntu#############################################################################

#1.install git

sudo apt-get install git

#2.install neovim

sudo add-apt-repository ppa:neovim-ppa/stable 

sudo apt-get update

sudo apt-get install neovim

#3.install vim-plug

curl -fLo curl ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

#4.clone .init.vim from git

git clone https://github.com/robinstart/vim-setting/init.vim ~/.config/nvim/init.vim

#5.PlugInstall

Type :PlugInstall in command mode 

#windows###################################################################################

1.

#(1)Use window 10 Bash

#1.download bash

win + R , type control , go to program , Windows I/O , click "linux for window subsystem 

go to setting , update and sercurity , developer , click developer mode 

download bash from windows 

#2.use bash like Ubuntu

Similar as Ubuntu , but !!

curl -fLo curl ~/Local/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/robinstart/vim-setting/init.vim ~/Local/nvim/init.vim






