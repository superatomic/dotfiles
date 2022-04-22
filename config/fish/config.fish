/usr/local/bin/xshe fish | source

if status is-interactive
    thefuck --alias | source
    starship init fish | source

    test -e {$XDG_DATA_HOME}/iterm2_shell_integration.fish ; and source {$XDG_DATA_HOME}/iterm2_shell_integration.fish
end
