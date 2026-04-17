# ==================================================
# SAFE ENV LOAD (portable)
# ==================================================

if [[ -f ~/.env ]]; then
  while IFS= read -r line; do
    [[ "$line" == *=* ]] && export "$line"
  done < ~/.env
fi
