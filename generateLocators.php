<?php

function genLoc(string $dir): void { // shame about season two
	foreach(glob($dir . "/*") as $file) {
		if (str_ends_with($file, ".loc")) continue;
		if (str_ends_with($file, ".zip.png")) continue;
		
		$path = "https://misfitmaid.github.io/openplanet-plugin-signs/$file";
		file_put_contents($file . ".loc", $path);
	}
}

genLoc("1x1");
genLoc("1x2");
genLoc("1x4");
genLoc("2x3");
