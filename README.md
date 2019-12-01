# vim-setting
This is .vimrc or init.vim vim file of Seung Hyun Jeon

## 1) Ubuntu user

### 1. Install neovim

```
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt-get update
sudo apt-get -y install neovim
```

### 2. Install vim-plug
```
sudo apt-get install -y curl
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
```

### 3. Curl .init.vim from git

```
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/robinstart/vim-setting/init.vim
```

### 4. Install python package for python
> For python debug and autosuggestion, python packaged required.

```
pip install neovim
conda install -c conda-forge neovim 
```

### 5. PlugInstall

Type 'PlugInstall' in command mode 

## 2) Windows user

### 1. Download bash

- Win + R 
- Type control 
- Go to program -> Windows I/O 
- Click "linux for window subsystem" 
- Go to setting -> update and sercurity -> developer -> click developer mode 
- Download bash(search: ubuntu) from windows store

### 2. Follow the steps of [Ubuntu](#1-ubuntu-user)