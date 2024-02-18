### How to setup
---
create a new directory
```console
mkdir ~/.dotfiles
```
clone the repo using bare command
```console
git clone --bare https://github.com/sirncn/dotfiles.git $HOME/.dotfiles
```
open ~/.bashrc or ~/.zshrc then add an alias
```bash
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
checkout the bare repository into home directory
```console
dotfile checkout
```
untrack files that are not commited
```console
dotfile config --local status.showUntrackedFiles no
```
now use it like a normal git repository with the alias set before
```console
dotfile add ~/.config/mynewdotfile
dotfile commit -m "Add mynewdotfile"
dotfile push
```
