# Essential environment variables
set -x GPG_TTY (tty)
set -x EDITOR emacs
set -x VISUAL emacs
set -x TERM xterm-256color

# 1Password SSH Agent
set -gx SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Essential PATH additions
fish_add_path /opt/homebrew/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/go/bin

# Additional development tools
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path /opt/homebrew/lib/ruby/gems/3.2.0/bin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path ~/.config/emacs/bin

# Add npm global binaries to PATH
if command -v npm > /dev/null
    set -gx PATH $PATH (npm bin -g 2>/dev/null)
end

# python alias
alias python python3

# Docker abbreviations for productivity
abbr d docker
abbr dpa 'docker ps -a'
abbr di 'docker images'
abbr dc 'docker compose'
abbr dcp 'docker compose ps'
abbr dcd 'docker compose down'

# Add starship
set -x STARSHIP_CONFIG ~/.config/fish/starship.toml
starship init fish | source
