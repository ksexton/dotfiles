# Dotfiles

👋 Hi! This is a [Chezmoi](https://www.chezmoi.io) managed dotfiles repository.

# Setting up on a new machine

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- -b $HOME/.local/bin init --apply ksexton
```

This will install the `chezmoi` binary into `$HOME/.local/bin` and then install these dotfiles.

