set -x EDITOR emacs
set -x VISUAL emacs
set -x TERM xterm-256color
set -x STARSHIP_CONFIG ~/.config/fish/starship.toml

# Define alias for python 3.11 to python
# alias python "python3.11"
# alias pip "pip3.11"
# add python user-base binaries
# fish_add_path /Users/er/Library/Python/3.11/bin

# add homebrew binaries to path
fish_add_path /opt/homebrew/bin
# add grep from homebrew
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin

# add third party binaries
fish_add_path ~/.config/emacs/bin
fish_add_path ~/.orbstack/bin
fish_add_path ~/.cargo/bin

# initialize starship
starship init fish | source

# alias
alias d docker
