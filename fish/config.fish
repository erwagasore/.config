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
# add homebrew ruby config
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path /opt/homebrew/lib/ruby/gems/3.2.0/bin
# add grep from homebrew
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin

# add third party binaries
fish_add_path ~/.config/emacs/bin
fish_add_path ~/.cargo/bin

# initialize starship
starship init fish | source

source /opt/homebrew/opt/asdf/libexec/asdf.fish
source ~/.asdf/plugins/java/set-java-home.fish

# alias and abbreviations
abbr d docker
abbr di 'docker images'
abbr dc 'docker compose'
# abbr p podman
# alias kamal='docker run --rm -it -v $PWD:/workdir -v $SSH_AUTH_SOCK:/ssh-agent -v /var/run/docker.sock:/var/run/docker.sock -e SSH_AUTH_SOCK=/ssh-agent ghcr.io/basecamp/kamal:latest'
