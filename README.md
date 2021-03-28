# dotfiles #


## Clone repository ##
`git clone https://github.com/kallak/dotfiles.git`


## Create symlinks ##
```
ln -s dotfiles/.bashrc .bashrc
ln -s dotfiles/.gitconfig .gitconfig
...
```

## Vim

### Vundle
* Create folder `.vim/bundle`
* Clone Vundle git repo
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* Install plugins
```
vim +PluginInstall +qall
```

### Badwolf colorscheme
* Create folder `.vim/colors`
* Clone badwolf git repo
```
git clone https://github.com/sjl/badwolf.git ~/.vim/colors/badwolf
```
