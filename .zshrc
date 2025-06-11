# ———————————————————— oh-my-zsh ——————————————————
# Path to your Oh My Zsh installation, Using Default config. 
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# ———————————————————— CONFIG ————————————————————
#
# Set to superior editing mode
bindkey -v

# ———————————————————— ALIASES ————————————————————
#
# Most Used #
alias v='nvim'
alias t='tmux'
alias c='clear' 
alias q='quit'               

# Navigation #
alias ..='cd ..'
alias ...='cd ...'

# Git #
alias ga='git add .'
alias gc='git commit -m'
alias gpm='git push origin main'
alias gs='git status'
alias gpl='git pull origin main'
# Language Specific #
alias py='python3'
alias cc='clang' # [C]ompile [C]

# Reload Config #
alias r='source ~/.'

