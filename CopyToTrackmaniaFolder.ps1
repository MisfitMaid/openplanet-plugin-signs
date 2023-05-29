$TM = $env:USERPROFILE + "\Documents\Trackmania\Skins\"

$square = $TM + "Any\Advertisement1x1\OpenplanetPlugins"
$fat = $TM + "Any\Advertisement2x1\OpenplanetPlugins"
$skinny = $TM + "Any\Advertisement4x1\OpenplanetPlugins"
$flags = $TM + "Stadium\ItemFlag\OpenplanetPlugins"

Copy-Item -Recurse "1x1/" $square
Copy-Item -Recurse "1x2/" $fat
Copy-Item -Recurse "1x4/" $skinny
Copy-Item -Recurse "2x3/" $flags

# alternative idea...
# junction $square 1x1
# junction $fat 1x2
# junction $skinny 1x4
# junction $flags 2x3
