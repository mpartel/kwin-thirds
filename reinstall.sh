#!/bin/bash -eu

cd `dirname "$0"`

rm -Rf ~/.local/share/kwin/scripts/kwin-thirds
rm -f ~/.local/share/kservices5/kwin-script-kwin-thirds.desktop

plasmapkg2 -t kwinscript -i .

qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.unloadScript kwin-thirds
qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.loadScript ~/.local/share/kwin/scripts/kwin-thirds kwin-thirds
qdbus org.kde.KWin /KWin org.kde.KWin.reconfigure
qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.start
