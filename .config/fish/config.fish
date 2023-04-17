if status is-interactive
    # Commands to run in interactive sessions can go here
end

# setup_path
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/Scripts/main
    # fish_add_path ~/.emacs.d/bin
    fish_add_path ~/.cargo/bin
    fish_add_path $(hostname)

# set_up_greeting
    function fish_greeting
        fortune -s | cowsay -f hellokitty | lolcat
    end

# set_up_vim_mode
    fish_vi_key_bindings

# setup_vim
    alias vim 'nvim'
    alias vimdiff 'nvim -d'
    set -gx EDITOR 'nvim'
    set -gx ZVM_VI_EDITOR $EDITOR

# set_up_git_aliases
    alias gpo 'git push origin'
    alias gpom 'git push origin main'

# set_up_shadowing_aliases
    alias ssh 'kitty +kitten ssh'
    alias cat 'bat'
    alias ls 'lsd'
    alias la 'lsd -a'
    alias rm 'trash'

# set_up_python_aliases
    alias python 'python3'
    alias py 'python3'
    alias pip 'python3 -m pip'

# set_up_aliases
    # alias tre 'tree -L 2'
    alias tree 'et --suppress-size --icons'
    alias treeh 'tree --hidden --ignore-git --ignore-git-ignore'
    alias tre 'tree -l 2'
    alias treh 'treeh -l 2'
    alias conf 'cd ~/.config/nvim/'
    alias services 'brew services'
    abbr dot dotfiles

# set_up_goofy_aliases
    alias den 'echo æøå'
    alias bruh 'brew'

set -gx LS_COLORS 'di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# set_up_pyenv
    pyenv init - | source
    status --is-interactive; and source (pyenv virtualenv-init -|psub)

# set_up_projects_for_pj
    set -U PROJECT_PATHS ~/Projects/Personal

# set_up_prompt
    starship init fish | source
# set_up zoxide
    zoxide init fish | source
    alias cd z
    alias cdi zi
