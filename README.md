# Dotfiles

My vim and tmux configuration

## Use

The directory contains dotfiles that should be located in the `home` directory in the destination machine.
This can be done 

* manually (clone repo, copy and paste)
* semi-manually (clone repo, symlink each file via e.g. `ln -s dotfiles/.vimrc`
* automatically (install GNU stow, clone repo directly inside home, run `stow .` from inside the repo)

The last two allow easier syncing via `git pull`.
GNU stow creates symlink for the entire directory.

## TODO

Once cloned, TMUX, Vim and zsh need to install the required plugins, guide incoming

## Important

The `.zshrc` file includes conda setup lines, those should be deleted if conda is to be installed on the machine.
