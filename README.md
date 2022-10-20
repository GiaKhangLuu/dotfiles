# dotfiles

A set of `vim`, `zsh`, and `tmux` configuration

# Install

Clone onto your machine: 

```
git clone https://github.com/GiaKhangLuu/dotfiles.git
```

Simply run file (maybe you  must run `chmod +x ./install.sh` before run that file):

On MacOS:

```
./install.sh --macos
```

On Linux:

```
./install.sh --linux
```

Make sure `vim-plug` is installed. In `~/.vimrc` run sequentially:

```
:PlugClean
:PlugInstall
```

If you wanna get the newest version of those plugins, run:

```
:PlugUpdate
```
