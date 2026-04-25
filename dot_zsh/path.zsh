# ==================================================
# PATH
# ==================================================

typeset -U path

path=(
  "$HOME/.local/bin"
  "/opt/nvim-linux-x86_64/bin"
  $path
)

# Linuxbrew
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  path=(/home/linuxbrew/.linuxbrew/bin $path)
fi
