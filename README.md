# Dotfiles

👋 Hi! This is a [Chezmoi](https://www.chezmoi.io) managed dotfiles repository.

# Setting up on a new machine

## Prerequisites
Because a fresh OS install lacks things like the command line developer tools, we use an install script to get basic prereqs out of the way.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ksexton/dotfiles/main/install.sh)"
```

This will install any missing prereqs prior to installing chezmoi.

## Installation

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- -b $HOME/.local/bin init --apply ksexton
```

This will install the `chezmoi` binary into `$HOME/.local/bin` and then install these dotfiles.


