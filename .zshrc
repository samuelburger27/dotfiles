
[ -f "/Users/samo/.ghcup/env" ] && source "/Users/samo/.ghcup/env" # ghcup-env
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export LS_COLORS="$(vivid generate molokai)" 
alias ls='gls --color'
alias v='nvim'

export PATH=$PATH:/Users/samo/.spicetify
