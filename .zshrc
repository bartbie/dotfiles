#TODO synchronize aliases with fish via some shell-agnostic solution

# oh-my-zsh config
export ZSH="/Users/bartosz/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting themes colored-man-pages command-not-found gitfast zsh-vi-mode rust)
source $ZSH/oh-my-zsh.sh

# User configuration
#
export PATH=/opt/homebrew/bin:$PATH
export PATH=~/Scripts/main:$PATH
# export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.cargo/bin:$PATH
export HOST=$(hostname)

alias vim='nvim'
alias vimdiff='nvim -d'
export EDITOR='nvim'
export ZVM_VI_EDITOR=$EDITOR

alias rm='trash'

alias python='python3'
alias py='python3'
alias pip='python3 -m pip'

alias gpo='git push origin'
alias gpom='git push origin main'

alias tre='tree -L 2'
alias conf='cd ~/.config/nvim/'
alias ssh='kitty +kitten ssh'
alias services='brew services'

alias cat='bat'
alias ls='lsd'
alias la='lsd -a'

alias den='echo æøå'
alias bruh='brew'

export LS_COLORS='di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# starship prompt
eval "$(starship init zsh)"

