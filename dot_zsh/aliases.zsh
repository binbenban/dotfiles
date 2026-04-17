# ==================================================
# Aliases
# ==================================================

alias ..='cd ..'
alias ...='cd ../..'

# git
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcam='git commit -a -m'
alias gl='git pull'
alias gp='git push'
alias gpp='gp -u origin HEAD; gp -f origin HEAD:staging'
alias gst='git status'

# lsd
alias ls="lsd --group-dirs first"
alias ll="lsd --group-dirs first -la"
alias l='lsd -l'
alias tree="lsd --tree --group-dirs first --depth=2 2>/dev/null"
