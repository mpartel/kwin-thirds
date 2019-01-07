A [KWin](https://userbase.kde.org/KWin) script to easily tile a window to span the left/middle/right third of the desktop.

Suggested shortcuts (Meta = Windows key, usually):

- "Meta+Left": Move the window to the left third. Repeat to toggle full height, top half, bottom half.
- "Meta+Down": Move the window to the middle third. Repeat to toggle full height, top half, bottom half.
- "Meta+Right": Move the window to the right third. Repeat to toggle full height, top half, bottom half.

- "Meta+Ctrl+Left": Move the window to the left 2/3. Repeat to toggle full height, top half, bottom half.
- "Meta+Ctrl+Down": Move the window to the middle 2/3. Repeat to toggle full height, top half, bottom half.
- "Meta+Ctrl+Right": Move the window to the right 2/3. Repeat to toggle full height, top half, bottom half.

Tested on Kubuntu 18.04.

Works with multiple monitors.

# Installation

Run `./install.sh`

Activate the plugin from "System Settings" -> "Window management" -> "KWin Scripts".

The keyboard shortcuts usually conflict with existing shortcuts, so you'll have to configure them manually in "System Settings" -> "Shortcuts" -> "Global Keyboard Shortcuts" -> "KWin" -> search for "Thirds".

# Uninstallation

Uninstall the package with `plasmapkg2 -t kwinscript -r kwin-thirds`.
Remove the shortcuts with `qdbus org.kde.kglobalaccel /component/kwin cleanUp`.
