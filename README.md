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

To remove:
```bash
launchctl unload ~/Library/LaunchAgents/local.theme-watcher.plist
rm ~/Library/LaunchAgents/local.theme-watcher.plist
```
