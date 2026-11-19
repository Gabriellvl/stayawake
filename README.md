# stayawake

A Bash switch for macOS sleep.

```bash
./stayawake on      # Keep your Mac awake
./stayawake off     # Allow normal sleep
./stayawake status  # Show the current setting
```

Run without arguments to show the current setting. The script uses macOS
`pmset`. Changing the setting requires administrator privileges via `sudo`
and applies to all power profiles. The setting persists after the script exits.

Licensed under the MIT License.
