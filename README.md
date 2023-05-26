# purpleschool-neovim config

A nvim config by [AlariCode](https://github.com/AlariCode)

## Requirements

+ Neovim 0.8+
+ [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - JetBrainsMono Nerd Font 

## Install

Backup your current nvim

```bash
mv ~/.config/nvim       ~/.config/nvim.bak
mv ~/.local/share/nvim  ~/.local/share/nvim.bak
```

Clone purpleschool-neovim repo

```bash
git clone https://github.com/DaniilSintsov/purpleschool-neovim.git ~/.config/nvim
```

Start `nvim` in your terminal, then automatically install and setup all plugins. Then restart `nvim` and enjoy it

## Usage

Use command `:LspInstall` to download and install a server, e.g. `:LspInstall rust_analyzer`

Use command `:TSInstall` to download and install a parser, e.g. `:TSInstall rust`

[A video about setting up and using](https://youtu.be/4PzSNN45tcA)
