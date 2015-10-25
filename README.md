# vim-config

Because everyone else's vim config has too much cruft and too many toys.

This config will always be fast. It doesn't use fancy plugin managers (e.g.
Plug.vim, NeoBundle.vim, Vundle), and it will always be documented so you know
what each bit of configuration does.

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
