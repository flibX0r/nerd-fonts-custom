$ffpython = "C:\Program Files (x86)\FontForgeBuilds\bin\ffpython.exe"

$unpatched = ".\unpatched-fonts"
$fontfamilies = Get-ChildItem -Path $unpatched -Directory

Remove-Item ".\patched-fonts\*" -Recurse

foreach ($fontfamily in $fontfamilies) {
    New-Item -Path ".\patched-fonts" -Name $fontfamily.Name -ItemType "directory"

    $fontpaths = Get-ChildItem -Path "$unpatched\$($fontfamily.Name)\*" -Recurse -Include *.ttf, *.otf


    foreach ($fontpath in $fontpaths) {
        & $ffpython .\font-patcher.py $fontpath.FullName --outputdir ".\patched-fonts\$($fontfamily.Name)" --mono --windows --complete
    }
}
