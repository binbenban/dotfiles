# cortex-cli-completion-version: 1.1.47+005207.7d03a05f5bd4
# Cortex CLI completion setup - sourced from .zshrc
fpath+=~/.zsh/completions
if (( ${+_comps} )); then
  # compinit already ran - register directly
  autoload -Uz _cortex 2>/dev/null && _comps[cortex]=_cortex
elif (( ${+functions[compdef]} )); then
  # compdef exists but compinit hasn't run yet - queue registration
  autoload -Uz _cortex 2>/dev/null && compdef _cortex cortex
fi
