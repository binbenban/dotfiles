# ==================================================
# PATH
# ==================================================

typeset -U path

path=(
  "$HOME/.local/bin"
  $path
)

# Linuxbrew
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  path=(/home/linuxbrew/.linuxbrew/bin $path)
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
