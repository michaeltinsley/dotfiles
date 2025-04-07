# dotfiles

This repo is my personal dotfiles repository.
It is pretty basic - I'm happy with the default config for most things!

## Using GNU Stow

This repo uses GNU Stow for managing symoblic links.

```bash
brew install stow  # Ensure Stow is installed
cd ~/  # Change to the users home directory
gh repo clone michaltinsley/dotfiles  # Clone the repo - I like to use the GH CLI but 🤷
```

Then create the symbolic link for any apps you want. E.g.

```bash
stow ghostty
```
