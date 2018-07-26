# vim-setting
This is .vimrc or init.vim vim file of Seung Hyun Jeon

#Ubuntu#############################################################################


#1.install neovim

sudo add-apt-repository ppa:neovim-ppa/stable 

sudo apt-get update

sudo apt-get -y install neovim

#2.install vim-plug

sudo apt-get install -y curl

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

#3. curl .init.vim from git

curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/robinstart/vim-setting/init.vim

#4. install neovim in python

pip install neovim

conda install -c conda-forge neovim 

#5.PlugInstall

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








