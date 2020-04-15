# dotvim
My NeoVim Configuration. Requires NeoVim >= 0.1.1

## Requirements
* neovim
* neovim python modules: `pip install neovim`
* ctags

### Ubuntu
```shell
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install exuberant-ctags python-dev python-pip
pip install neovim
```

### OS X
```shell
brew install neovim/neovim/neovim
brew install ctags python
pip install neovim
```

## Usage
Clear out your old nvim config
```shell
rm -rf ~/.config/nvim
```

Clone repo and create tmp dir
```shell
mkdir -p ~/.config
git clone git@github.com:cornet/dotvim.git ~/.config/nvim
mkdir ~/.vimtmp
```

Fire up `nvim` (ignore any warnings/errors) then run
```
:PlugInstall
```

Restart `nvim` and enjoy the shiny.

You also might want to add the following to your shell config
```shell
alias vim=nvim
alias vi=nvim
export EDITOR=nvim
```

## Puppet ctags support
Add the following to `~/.ctags`

```shell
--langdef=puppet
--langmap=puppet:.pp
--regex-puppet=/^class[ \t]*([:a-zA-Z0-9_\-]+)[ \t]*/\1/c,class/
--regex-puppet=/^site[ \t]*([a-zA-Z0-9_\-]+)[ \t]*/\1/s,site/
--regex-puppet=/^node[ \t]*([a-zA-Z0-9_\-]+)[ \t]*/\1/n,node/
--regex-puppet=/^define[ \t]*([:a-zA-Z0-9_\-]+)[ \t]*/\1/d,definition/
```
