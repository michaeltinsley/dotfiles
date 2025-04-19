if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
op completion fish | source  # 1Password CLI

source $HOME/.config/op/plugins.sh

# uv
fish_add_path "$HOME/.local/bin"
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source

if test -f (brew --prefix)/etc/brew-wrap.fish
  source (brew --prefix)/etc/brew-wrap.fish
end
