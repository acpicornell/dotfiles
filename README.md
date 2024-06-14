# My dotfiles

This directory contains the dorfiles for my system.

## Requirements

Ensure that you have the following installed on your system

### Git

```shell
dnf install git
``` 

### Stow

```shell
dnf install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```shell
$ git clone git@github.com:acpicornell/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```shell
$ stow .
```

