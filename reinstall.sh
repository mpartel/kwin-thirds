#!/bin/bash -eu

cd `dirname "$0"`

qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.unloadScript kwin-thirds

plasmapkg2 -t kwinscript -r kwin-thirds || true

plasmapkg2 -t kwinscript -i .

qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.loadScript ~/.local/share/kwin/scripts/kwin-thirds kwin-thirds

# I have no idea why these seem to be necessary (Kubuntu 16.04)
qdbus org.kde.KWin /KWin org.kde.KWin.reconfigure
qdbus org.kde.KWin /Scripting org.kde.kwin.Scripting.start
