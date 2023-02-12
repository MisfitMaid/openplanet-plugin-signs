echo "Removing old locators..."
Get-ChildItem "1x*" -Recurse -Filter *.loc | Foreach-Object -Parallel {
  rm $_.FullName
}

echo "Optimizing png's..."
Get-ChildItem "1x*" -Recurse -Filter *.png | Foreach-Object -Parallel {
  optipng -quiet $_.FullName
  echo "$_ optimized"
} -ThrottleLimit 8

echo "Generating new locators and index file..."
php generateLocators.php
php generateSite.php > index.md
