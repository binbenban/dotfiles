# ==================================================
# PATH
# ==================================================

typeset -U path

path=(
  "$HOME/.local/bin"
  "$HOME/.pixi/bin"
  "$HOME/.npm-global/bin"
  $path
)

[[ -d "/mnt/c/Users/bwang/Downloads/vscode/bin" ]] && path=("/mnt/c/Users/bwang/Downloads/vscode/bin" $path)

# Linuxbrew
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  path=(/home/linuxbrew/.linuxbrew/bin $path)
fi

if [[ -d "/opt/homebrew/bin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
