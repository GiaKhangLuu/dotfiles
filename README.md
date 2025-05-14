Requirements:
kitti
neovim
tmux

Download and install neovim => checkout this link:

https://github.com/neovim/neovim/releases

ln -s /your/path/to/dotfiles/nvim-config ~/.config/nvim/

Download and install tmux 

MACOS:
brew install tmux

Ubuntu:
apt install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s /your/path/to/dotfiles/tmux/tmux.conf ~/.tmux.conf

or 

ln -s /your/path/to/dotfiles/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

Install tmux plugins:

1. Press prefix + I (capital i, as in Install) to fetch the plugin.
2. tmux source ~/.tmux.conf


