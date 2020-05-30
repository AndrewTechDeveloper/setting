## Using
```
iterm2
prezto(theme agnoster)
plugin(vim plugin manager)
https://github.com/junegunn/vim-plug
Neo Vim
```

### plugin install
```
:PlugInstall
```

### Neo Vim set up
```
mv vim files to ~/.config/nvim/init.vim
colors ~/.config/nvim/colors/
```

### zshrc
```
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
fpath=(path/to/zsh-completions/src $fpath)

```
