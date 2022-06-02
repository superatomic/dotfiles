# **@superatomic**'s Dotfiles
My personal dotfiles for macOS and Linux. Uses [homebrew], bash, zsh, and [xshe].

[homebrew]: https://brew.sh
[xshe]: https://xshe.superatomic.dev

| :exclamation: | **These dotfiles are not complete yet!** |
|---------------|:-----------------------------------------|

## Installation

1. Copy the dotfiles directory to `~/.dotfiles`:
   ```zsh
   git clone https://github.com/superatomic/dotfiles.git ~/.dotfiles
   ```
2. Run the install script:
   ```zsh
   ~/.dotfiles/install.zsh
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
│   ├── dot.zsh
│   ├── peval.zsh
│   ├── printmsg.zsh
│   ├── pyproj.zsh
│   └── sln.zsh
├── brew
│   ├── Brewfile
│   └── install.zsh
├── config
│   ├── fish
│   │   ├── completions
│   │   │   └── ccd.fish
│   │   ├── conf.d
│   │   │   └── abbrs.fish
│   │   ├── config.fish
│   │   └── functions
│   │       ├── cat.fish
│   │       ├── ccd.fish
│   │       ├── code.fish
│   │       ├── edit.fish
│   │       ├── ls.fish
│   │       ├── pip.fish
│   │       ├── python.fish
│   │       ├── python2.fish
│   │       ├── python3.fish
│   │       ├── rm.fish
│   │       ├── slink.fish
│   │       └── unlink.fish
│   ├── gitignore
│   ├── micro
│   │   └── settings.json
│   ├── neofetch
│   │   └── config.conf
│   ├── pythonrc.py
│   ├── starship.toml
│   └── xshe.toml
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

13 directories, 41 files
```

## License

All files are licensed under the [MIT License](LICENSE).
