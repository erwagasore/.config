set -x EDITOR emacs
set -x VISUAL emacs
set -x TERM xterm-256color
set -x STARSHIP_CONFIG ~/.config/fish/starship.toml
set -gx CPPFLAGS -I/usr/local/opt/openjdk/include

set -x fish_greeting

# Added Doom Bin to PATH
fish_add_path ~/.emacs.d/bin
fish_add_path /usr/local/opt/emacs-mac/bin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path ~/.cargo/bin

alias l="ls -lha"
alias d="docker"
alias dc="docker-compose"

status --is-interactive; and source (jenv init -|psub)
starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
fish_add_path /usr/local/opt/llvm/bin
