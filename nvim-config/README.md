# Custom Neovim Configuration

This is a custom Neovim configuration using Lua, designed to provide a modern and efficient text editing experience.

## Installation

1. Backup your existing Neovim configuration (if any):
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Clone this configuration:
```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

## Features

- Modern Lua configuration
- Sensible defaults
- Efficient key mappings
- Split window navigation
- Mouse support
- UTF-8 encoding
- Smart indentation
- No swap files
- System clipboard integration

## Structure

- `init.lua`: Main configuration file
- `lua/`: Directory for additional Lua modules (to be added)
- `plugin/`: Directory for plugin configurations (to be added)

## Key Mappings

- Leader key: Space
- Window navigation: `Ctrl + h/j/k/l`

## Requirements

- Neovim >= 0.5.0
- Git (for plugin management)

## TODO

- [ ] Add plugin manager (Packer.nvim)
- [ ] Configure LSP
- [ ] Add completion engine
- [ ] Set up file explorer
- [ ] Configure statusline
- [ ] Add syntax highlighting enhancements
