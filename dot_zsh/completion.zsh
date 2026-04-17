# ==================================================
# COMPLETION SYSTEM (portable fix)
# ==================================================

# Homebrew zsh (macOS)
if command -v brew >/dev/null 2>&1; then
  ZSH_PREFIX=$(brew --prefix zsh 2>/dev/null)
  if [[ -n "$ZSH_PREFIX" && -d "$ZSH_PREFIX/share/zsh/functions" ]]; then
    fpath=(
      "$ZSH_PREFIX/share/zsh/functions"
      "$ZSH_PREFIX/share/zsh/site-functions"
      "${fpath[@]}"
    )
  fi
fi

# Linux fallback
if [[ -d /usr/share/zsh/functions ]]; then
  fpath=(/usr/share/zsh/functions "${fpath[@]}")
fi

autoload -Uz compinit
compinit
