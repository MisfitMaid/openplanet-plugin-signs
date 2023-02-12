$TM = $env:USERPROFILE + "\Documents\Trackmania\Skins\Any\"

$square = $TM + "Advertisement1x1\OpenplanetPlugins"
$fat = $TM + "Advertisement2x1\OpenplanetPlugins"
$skinny = $TM + "Advertisement4x1\OpenplanetPlugins"

Copy-Item -Recurse "1x1/" $square
Copy-Item -Recurse "1x2/" $fat
Copy-Item -Recurse "1x4/" $skinny
