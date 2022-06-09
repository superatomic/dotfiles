
# Don't let $PATH be modified by Homebrew, but change every other variable that is set.
set -l orig_path $PATH
/usr/local/bin/brew shellenv fish | source
set PATH $orig_path

/usr/bin/env xshe fish | source

if status is-interactive
    thefuck --alias | source
    starship init fish | source

    # Homebrew command-not-found
    set HB_CNF_HANDLER (brew --repository)"/Library/Taps/homebrew/homebrew-command-not-found/handler.fish"
    if test -f $HB_CNF_HANDLER
        source $HB_CNF_HANDLER
    end

    test -e {$XDG_DATA_HOME}/iterm2_shell_integration.fish ; and source {$XDG_DATA_HOME}/iterm2_shell_integration.fish
end
