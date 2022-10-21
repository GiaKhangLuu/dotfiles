# dotfiles

A set of `vim`, `zsh`, and `tmux` configuration

# Install

## Prerequisite

`nodejs`, `npm`, `curl`

Clone onto your machine: 

```
git clone https://github.com/GiaKhangLuu/dotfiles.git
```
## Installing all required packages and app

Simply run file (maybe you  must run `chmod +x ./install.sh` before run that file):

On MacOS:

```
./install.sh --macos
```

On Linux:

```
./install.sh --linux
```

## Installing NeoVIM plugins

Make sure `vim-plug` is installed. In `~/.vimrc` run sequentially:

```
:PlugClean
:PlugInstall
```

If you wanna get the newest version of those plugins, run:

```
:PlugUpdate
```

## Run 

In `~/.vimrc` run

```
source %
```
