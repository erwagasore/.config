# Theme Watcher Service

Automatically switches Aider's code theme based on macOS appearance mode.

## Installation

1. Move the script to standard location:
```bash
mkdir -p ~/.config/scripts
mv theme-watcher.sh ~/.config/scripts/
chmod +x ~/.config/scripts/theme-watcher.sh
```

2. Load the launchd service:
```bash
launchctl load ~/Library/LaunchAgents/local.theme-watcher.plist
launchctl start local.theme-watcher
```

## Verification

Check if service is running:
```bash
launchctl list | grep theme-watcher
```

View logs:
```bash
cat /tmp/theme-watcher.log
cat /tmp/theme-watcher-error.log
```

## Uninstall

To properly remove the service:

1. First check if it's running:
```bash
launchctl list | grep theme-watcher
# Or for user-level agents:
launchctl list --user $(id -u) | grep theme-watcher
```

2. Stop and unload the service:
```bash
launchctl stop local.theme-watcher
launchctl bootout gui/$(id -u) ~/Library/LaunchAgents/local.theme-watcher.plist
```

3. Remove the plist file:
```bash
rm ~/Library/LaunchAgents/local.theme-watcher.plist
```

## Troubleshooting

If you get "Boot-out failed: 5: Input/output error":

1. Verify the plist file exists:
```bash
ls -l ~/Library/LaunchAgents/local.theme-watcher.plist
```

2. Check the logs:
```bash
cat /tmp/theme-watcher.log
cat /tmp/theme-watcher-error.log
```

3. Ensure the script is executable:
```bash
chmod +x ~/.config/scripts/theme-watcher.sh
```

4. Reload the service:
```bash
launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/local.theme-watcher.plist
launchctl start local.theme-watcher
```

> Never use `sudo` with LaunchAgents - they run per-user.
> Always use `gui/$(id -u)` when referencing user agents.
