#!/usr/bin/env bash
set -e

echo "Installing CLI tools..."
sudo apt-get update -y
sudo apt-get install -y \
    fzf \
    ripgrep \
    bat \
    tree \
    htop \
    curl \
    jq

# Optional: Install latest fzf manually for better keybindings
if [ ! -d ~/.fzf ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all --no-bash --no-fish
fi