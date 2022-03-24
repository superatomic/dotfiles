# **@superatomic**'s Dotfiles
My personal dotfiles.

| :exclamation: | **These dotfiles are not complete yet!** |
|---------------|:-----------------------------------------|

## Installation

1. Change the current shell to `zsh`:
   ```sh
   chsh -s /bin/zsh
   ```
2. Copy the dotfiles directory to `~/.dotfiles`:
   ```zsh
   git clone https://github.com/superatomic/dotfiles.git ~/.dotfiles
   ```
3. Source the install script:
   ```zsh
   source ~/.dotfiles/install.zsh
   ```
   *If you are using these dotfiles as a template,
   make sure to make your own modifications before sourcing the install script.*


## Dotfiles Structure
```
.dotfiles
├── LICENSE
├── README.md
├── bash
│   └── bash_profile
├── bin
│   ├── dotfiles.zsh
│   ├── peval.zsh
│   ├── printmsg.zsh
│   ├── pyproj.zsh
│   └── sln.zsh
├── brew
│   ├── Brewfile
│   └── install.zsh
├── config
│   ├── micro
│   │   └── settings.json
│   ├── neofetch
│   │   └── config.conf
│   ├── pythonrc.py
│   └── starship.toml
├── fish
│   ├── fisher.fish
│   └── install.fish
├── install.zsh
├── symlink.zsh
├── macos
│   └── install.zsh
└── zsh
    ├── alias.zsh
    ├── functions.zsh
    ├── sources.zsh
    ├── zshenv
    └── zshrc

9 directories, 24 files
```

