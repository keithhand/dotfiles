# dotfiles

My personal dotfiles repo containing my local configuration and a way to sync
it all.

## Quick Setup

Verify the modules to sync are [configured](./env) and run the install script.

```sh
./install
```

## Overview

[Modules](./modules/) are symlinked using `stow` to the `$XDG_CONFIG_HOME`
directory (`~/.config`). The modules that get synced is set based on the
[configuration file](./env) within the repo. This system helps be specific
about which modules get stored, but comes at the cost that files created within
the repository need to be resynced by running the install script after creation
to create an initial symlink. Shortcuts are configured to assist with that
process described in more detail [below](#shortcuts).

## Requirements

- stow - symlinks modules
- ansible - installs any tools
- brew - package manager used with ansible

## Shortcuts

Some aliases are configured to edit and update configuration based on a
configured `$DOTFILES` environment variable:

- `dotFileInstall` - run install script (good for new files)
- `dp` - run dotFileInstall and resources zsh files (good for updates)
- `db` - run the ansible.yml playbook and `dp` (good to make sure everything
  is installed)
- some auto generated aliases get created with `genFileAliases()`
  - `e{t}{f}` - edit {type} {file}
    - `eda` - edit dotfiles aliases
  - `c{t}{f}` - cat {type} {file}
    - `cda` - cat dotfiles aliases
