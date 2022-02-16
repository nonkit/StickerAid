# Rename-Stickers
# Version 0.0.1
# Copyright © 2022 Facilitation LINE Sticker Team.  The MIT License.

param($folder)

$i = 0
if (-not $folder) {
    $folder = 'LINEStampTest'
}
$dir = Get-ChildItem $folder
foreach ($file in $dir) {
    if ((-not $file.Name.EndsWith('main.png')) -and (-not $file.Name.EndsWith('tab.png'))) {
        $i++
        Rename-Item $folder\$file ('{0:00}.png' -f $i)
    }
}