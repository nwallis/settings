#!/bin/sh

# Copy all vim to the home folder
rsync -avh .vim* ~/

# Git Aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.a add
git config --global alias.ph push
git config --global alias.pl pull
git config --global alias.mg merge
