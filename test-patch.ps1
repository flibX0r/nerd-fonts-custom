$ffpython = "C:\Program Files (x86)\FontForgeBuilds\bin\ffpython.exe"

$unpatched = ".\unpatched-fonts"
$patched = ".\patched-fonts"
$fontfamily = "JetBrainsMono"
$fontpath = "JetBrainsMono-Regular.ttf"

& $ffpython .\font-patcher.py "$unpatched\$fontfamily\$fontpath" --outputdir ".\$patched\" --mono --windows --complete
