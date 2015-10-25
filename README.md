# vim-config

Because everyone else's vim config has too much cruft and too many toys.

## About

This config will always be fast:

* Fast to open a file
* Fast while moving around a buffer
* Fast to save a buffer

Additionally:

* Every piece of configuration is documented so you know what it does
* It is as stripped-down as it can be while still being very functional for
  development
* It doesn't require an install script (and therefore doesn't modify any of
  your files)
* It doesn't use any fancy plugin managers (e.g. Vundle, Plug.vim,
  NeoBundle.vim)

## Installation

The structure of this repo assumes you do **not** clone it directly into `~/.vim`.
It expects you to clone it somewhere else and symlink `~/.vim` and `~/.vimrc`.
This means it's easy to switch from whatever your existing configuration is to
try it out.

```
git clone https://github.com/krishicks/vim-config.git
cd vim-config
git submodule update --init
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/vim ~/.vim
```

## Notes

* This config uses [vim-pathogen](https://github.com/tpope/vim-pathogen) for managing plugins
* mapleader is set to ","
* If you have [ack](http://beyondgrep.com/) installed, `ack` will be used in place of `grep`
