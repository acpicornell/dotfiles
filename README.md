# My dotfiles

This directory contains the dorfiles for my system.

## Requirements

Ensure that you have the following installed on your system

### Install git
```shell
dnf install git
``` 

### Install stow
```shell
dnf install stow
```

## Clone from backup in GitHub (Optional)
```shell
$ git clone git@github.com:acpicornell/dotfiles.git
$ cd dotfiles
```

## Organize
```shell
~/dotfiles/
├── bash/
│   ├── .bashrc
│   ├── .bash_profile
├── vim/
│   ├── .vimrc
│   ├── .vim/
```

## Use GNU stow to create symlinks
```shell
$ stow -v -t ~ bash  # Stow bash config
$ stow -v -t ~ vim   # Stow vim config
```

## Track Dotfiles with Git
```shell
cd ~/dotfiles
git init
git remote add origin git@github.com:yourusername/dotfiles.git
git add .
git commit -m "Initial commit of dotfiles"
git push -u origin main
```
