# Brewfile — MACHINE_TAG requirement

This repo expects a global environment variable named `MACHINE_TAG` to be set. Suggested values:
- `personal`
- `work`

The `MACHINE_TAG` value is used by tooling and aliases that generate or reference machine-specific Brewfile exports (for example `Brewfile.personal` or `Brewfile.work`).

Set it globally in your shell config:

- For fish (`~/.config/fish/config.fish`):
  ```/dev/null/example#L1-2
  set -x MACHINE_TAG personal
  ```

- For bash/zsh (`~/.bashrc` or `~/.zshrc`):
  ```/dev/null/example#L1-2
  export MACHINE_TAG=personal
  ```

Alias note
- There is a convenience alias in `dotfiles/fish/.config/fish/alias.fish`:
  - `alias brew-backup 'brew bundle dump --force --file=~/.config/brewfile/Brewfile.$MACHINE_TAG'`
- That alias relies on `MACHINE_TAG` to name the exported Brewfile (e.g. `Brewfile.personal`).

Keep `MACHINE_TAG` set globally before running any scripts or aliases that depend on it.
