# dotfiles

My personal dotfiles repo. Requires stow to manage symlinks.

## Installation

Update the files under the `env/` directory for the desired environment (i.e.
`env/default` and `env/mac`) and run the installation script.

```sh
./install
```

## Updating

Some aliases are configured to edit and update the configuration based on a
pre-configured $DOTFILES environment variable:

- dotFileInstall - run install script (good for new files)
- dp - run dotFileInstall and resources zsh files (good for updates)
- db - run ansible/bootstrap.yml playbook and dp (good to make sure everything
  is installed)
- some auto generated aliases created with `genFileAliases()`
  - e{t}{f} - edit {type} {file}
    - eda - edit dotfiles aliases
  - c{t}{f} - cat {type} {file}
    - cda - cat dotfiles aliases

## To-Do

- split modules into their own directory
