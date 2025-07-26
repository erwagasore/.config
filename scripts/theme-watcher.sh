#!/usr/bin/env fish

# Path to aider config file (absolute path)
set -gx AIDER_CONFIG "$HOME/.aider/config.yml"

# Get current macOS appearance
function get_appearance
  osascript -e 'tell application "System Events" to get appearance mode' 2>/dev/null | tr '[:upper:]' '[:lower:]'
  or return 1
end

# Update aider config with appropriate theme
function update_theme
  if not test -f "$AIDER_CONFIG"
    echo "Config file not found: $AIDER_CONFIG" >&2
    return 1
  end

  set -l appearance (get_appearance)
  if test $status -ne 0
    echo "Failed to get macOS appearance" >&2
    return 1
  end

  set -l new_theme
  switch "$appearance"
    case dark
      set new_theme "paraiso-dark"
    case '*'
      set new_theme "paraiso-light"
  end

  # Only update if the theme has changed
  set -l current_theme (grep -E 'code-theme: "' "$AIDER_CONFIG" 2>/dev/null | cut -d '"' -f2)
  if test -z "$current_theme"
    echo "Could not determine current theme from config" >&2
    return 1
  end

  if test "$new_theme" != "$current_theme"
    echo "Switching theme to $new_theme (was: $current_theme)"
    sed -i.bak "s/code-theme: \".*\"/code-theme: \"$new_theme\"/" "$AIDER_CONFIG"
    and rm -f "$AIDER_CONFIG.bak"
    or echo "Failed to update config file" >&2
  end
end

# Initial set
update_theme

# Watch for changes
while true
  sleep 5
  update_theme
end
