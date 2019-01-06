A [KWin](https://userbase.kde.org/KWin) script to easily tile a window to span the left/middle/right third of the desktop.

Default shortcuts (Meta = Windows key, usually):

- "Meta+Left": Move the window to the left third. Repeat to toggle full height, top half, bottom half.
- "Meta+Down": Move the window to the middle third. Repeat to toggle full height, top half, bottom half.
- "Meta+Right": Move the window to the right third. Repeat to toggle full height, top half, bottom half.

- "Meta+2": The next command resizes to 2/3 rather than 1/3 of the screen.
- "Meta+1": Cancel the last "Meta+2" press.

Tested on Kubuntu 16.04.

Works with multiple monitors.

# Installation

Run `./reinstall.sh`.
At least on Kubuntu 18.04, this installs the script to `~/.local/share/kwin/scripts/kwin-thirds`.
To uninstall, run `plasmapkg2 -t kwinscript -r kwin-thirds`.

Activate the plugin from "Settings" -> "Window management" -> "KWin Scripts".

If the keyboard shortcuts don't work, you may have to configure them manually in "Settings" -> "Shortcuts" -> "Global Keyboard Shortcuts" -> "KWin" -> search for "Thirds". This is likely to happen as the shortcuts conflict with the Zoom plugin.
