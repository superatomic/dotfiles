eval "$(~/.local/share/cargo/bin/xshe fish)"

if status is-interactive
    set -x fish_greeting  # Set value to suppress message
    starship init fish | source
end
