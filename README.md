# My Config Files

For each program, copy the corresponding file into the location stated in its documentation.


## Tmux

Location: `~/.tmux.conf`

Install Tmux Plugin Manager 
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

To apply changes, run 
```
tmux source ~/.tmux.conf
```

## Nvim

Location: `~/.config/nvim/init.vim`

Install vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

In Nvim, install plugins with the `:PlugInstall` command

## Alacritty

Location: `~/.config/alacritty/alacritty.toml`


## zsh

Location: `~/.zshrc`

To apply changes, run 
```
source ~/.zshrc
```
