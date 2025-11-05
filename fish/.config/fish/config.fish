if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
op completion fish | source  # 1Password CLI

# uv
fish_add_path "$HOME/.local/bin"
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source
