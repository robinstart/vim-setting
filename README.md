# vim-setting
This is .vimrc or init.vim vim file of Seung Hyun Jeon

#Ubuntu#############################################################################


#1.install neovim

#option 1

sudo add-apt-repository ppa:neovim-ppa/stable 

sudo apt-get update

sudo apt-get -y install neovim

#option 2

curl -fLO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

chmod u+x nvim.appimage

./nvim.appimage

curl -fLO https://raw.github

#2.install vim-plug

sudo apt-get install -y curl

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

#3.curl .init.vim from git

curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/robinstart/vim-setting/init.vim

#4.PlugInstall

Type :PlugInstall in command mode 

#windows###################################################################################

#(1)Use windows 10 Bash

#1.download bash

win + R , type control , go to program , Windows I/O , click "linux for window subsystem 

go to setting , update and sercurity , developer , click developer mode 

download bash(search: ubuntu) from windows store

#2.use bash like Ubuntu

#(2)without Bash

ADD REQUIRE








