#!/usr/bin/env bash

install_pkg() {
  pkg=${1}
  if ! dpkg -s "$pkg" > /dev/null 2>&1; then
    echo "${pkg} not installed"
    sudo apt install -y "$pkg"
  fi
}

# Install Linux Apps
if [ "$(uname -s)" == "Linux" ]; then
  install_pkg git
  install_pkg build-essential

  # gopass deps
  install_pkg gnupg
  install_pkg rng-tools
  install_pkg stow

  # neovim deps
  install_pkg exuberant-ctags 
  install_pkg python3-pip
  install_pkg shellcheck

  # Install neovim
  if [ ! -f ~/Apps/nvim.appimage ]; then
    nvim_version=0.4.3

    mkdir -p ~/Apps/
    cd ~/Apps/ && wget https://github.com/neovim/neovim/releases/download/v${nvim_version}/nvim.appimage
    chmod +x ~/Apps/nvim.appimage

    mkdir -p ~/bin/
    ln -sf ~/Apps/nvim.appimage ~/bin/nvim

    # Python bindings
    pip3 install pynvim
  fi

  # Install gopass
  if ! [ -x "$(command -v gopass)" ]; then
    wget -q -O- https://api.bintray.com/orgs/gopasspw/keys/gpg/public.key | sudo apt-key add -
    echo "deb https://dl.bintray.com/gopasspw/gopass bionic main" | sudo tee /etc/apt/sources.list.d/gopass.list
    sudo apt update
    install_pkg gopass
  fi
fi

# Install base16-shell
if [ ! -d ~/.config/base16-shell ]; then
  echo -n "Installing base16-shell..."
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  echo "done"
fi

# Install tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo -n "Installing tpm..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo "done"
fi

# Set base16-shell theme
ln -sf ~/.config/base16-shell/scripts/base16-tomorrow-night.sh ~/.base16_theme
