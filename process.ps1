Get-ChildItem "1x1" -Filter *.png | Foreach-Object -Parallel {
  optipng $_.FullName
} -ThrottleLimit 8

Get-ChildItem "1x2" -Filter *.png | Foreach-Object -Parallel {
  optipng $_.FullName
} -ThrottleLimit 8

Get-ChildItem "1x4" -Filter *.png | Foreach-Object -Parallel {
  optipng $_.FullName
} -ThrottleLimit 8

php generateLocators.php
php generateSite.php > index.md
