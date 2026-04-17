# Zinit
ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"

# Plugins (optimized)
zinit light-mode for Aloxaf/fzf-tab

zinit light zsh-users/zsh-autosuggestions

zinit light marlonrichert/zsh-autocomplete

zinit light zsh-users/zsh-syntax-highlighting
