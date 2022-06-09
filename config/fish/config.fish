
# Don't let $PATH be modified by Homebrew, but change every other variable that is set.
set -l orig_path $PATH
/usr/local/bin/brew shellenv fish | source
set PATH $orig_path

/usr/bin/env xshe fish | source

if status is-interactive
    thefuck --alias | source
    starship init fish | source

    test -e {$XDG_DATA_HOME}/iterm2_shell_integration.fish ; and source {$XDG_DATA_HOME}/iterm2_shell_integration.fish
end
