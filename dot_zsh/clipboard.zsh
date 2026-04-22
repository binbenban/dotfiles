# Auto-install clipboard provider for Neovim
if ! command -v wl-copy &> /dev/null && ! command -v xclip &> /dev/null; then
  if [ -n "$WAYLAND_DISPLAY" ]; then
    echo "Installing wl-clipboard for Wayland..."
    sudo apt install -y wl-clipboard
  elif [ -n "$DISPLAY" ]; then
    echo "Installing xclip for X11..."
    sudo apt install -y xclip
  fi
fi
