#!/bin/sh
git config --global alias.st status
git config --global alias.sw switch
git config --global alias.br branch
git config --global alias.lg "log --oneline --graph --all -20"
git config --global alias.last "log -1 HEAD --stat"

# Open the GitHub repo in a browser (anywhere gh is installed)
git config --global alias.web '!gh repo view --web'
