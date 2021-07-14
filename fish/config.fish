set -x EDITOR emacs
set -x VISUAL emacs
set -x TERM xterm-256color
set -x XDG_CONFIG_HOME ~/.config
set -x STARSHIP_CONFIG $XDG_CONFIG_HOME/fish/starship.toml

set -x fish_greeting

# Added Doom Bin to PATH
fish_add_path ~/.emacs.d/bin

alias l="ls -lha"
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

starship init fish | source
