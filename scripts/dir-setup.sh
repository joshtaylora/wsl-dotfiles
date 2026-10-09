#!/bin/bash
# Safe to re-run: moves a config into ~/dotfiles only if it isn't already linked, then links it.
link() {  # link <home path> <dotfiles path>
  local src=$1 dst=$2
  if [ -L "$src" ]; then echo "ok    $src"; return; fi
  mkdir -p "$(dirname "$dst")"
  if [ -e "$src" ] && [ ! -e "$dst" ]; then mv "$src" "$dst"; fi
  if [ -e "$src" ]; then echo "SKIP  $src exists and $dst exists; merge by hand"; return; fi
  ln -s "$dst" "$src" && echo "link  $src -> $dst"
}
link ~/.zshrc        ~/dotfiles/zsh/.zshrc
link ~/.p10k.zsh     ~/dotfiles/zsh/.p10k.zsh
link ~/.tmux.conf    ~/dotfiles/tmux/.tmux.conf
link ~/.gitconfig    ~/dotfiles/git/.gitconfig
link ~/.config/nvim  ~/dotfiles/nvim/.config/nvim
link ~/.config/fish  ~/dotfiles/fish/.config/fish
