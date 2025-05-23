set -x EDITOR emacs
set -x VISUAL emacs
set -x TERM xterm-256color
set -x STARSHIP_CONFIG ~/.config/fish/starship.toml
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ssh-add -l

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
#add npm bin directory
set -gx PATH $PATH (npm bin -g)
# add third party binaries
fish_add_path ~/.config/emacs/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/go/bin

# initialize starship
starship init fish | source

source /opt/homebrew/opt/asdf/libexec/asdf.fish
source ~/.asdf/plugins/java/set-java-home.fish

# alias and abbreviations
abbr d docker
abbr dpa 'docker ps'
abbr dpa 'docker ps -a'
abbr di 'docker images'
abbr dc 'docker compose'
abbr dcp 'docker compose ps'
abbr dcpa 'docker compose ps -a'
abbr dcd 'docker compose down'
