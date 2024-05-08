<?php 

/*
 * @Author: Cloudflying
 * @Date: 2022-09-22 04:15:49
 * @LastEditTime: 2022-09-22 11:45:46
 * @LastEditors: Cloudflying
 * @Description: Parse Package Repository
 */

$string = file_get_contents('/tmp/build/wine-7.17-1/desc');

$info = explode("\n\n",$string);

// echo $string;

print_r($info);

$pkginfo = [];
foreach ($info as $key => $val) {
	// echo $val . PHP_EOL;
	$item = explode("\n",$val);

	$pkginfo['filename'] = (isset($item[0]) && $item[0] == '%FILENAME%') ? $item[1] : null;
	// $pkginfo['downloadSize'] = (isset($item[0]) && $item[0] == '%CSIZE%') ?? $item[1];

	// elseif (isset($item[0]) && $item[0] == '%CSIZE%') {
		// $pkginfo['downloadSize'] = $item[1];
	// }

	if (isset($item[0]) && $item[0] == '%FILENAME%') {
		$pkginfo['filename'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%NAME%') {
		$pkginfo['name'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%BASE%') {
		$pkginfo['base'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%VERSION%') {
		$pkginfo['version'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%DESC%') {
		$pkginfo['desc'] = $item[1];
	}
	// elseif (isset($item[0]) && $item[0] == '%CSIZE%') {
	// 	$pkginfo['downloadSize'] = $item[1];
	// }
	elseif (isset($item[0]) && $item[0] == '%ISIZE%') {
		$pkginfo['installSize'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%MD5SUM%') {
		$pkginfo['md5Sum'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%SHA256SUM%') {
		$pkginfo['sha256Sum'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%PGPSIG%') {
		// $pkginfo['pgpSign'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%URL%') {
		$pkginfo['url'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%LICENSE%') {
		$pkginfo['license'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%ARCH%') {
		$pkginfo['arch'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%BUILDDATE%') {
		$pkginfo['buildDate'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%PACKAGER%') {
		$pkginfo['packager'] = $item[1];
	}
	elseif (isset($item[0]) && $item[0] == '%DEPENDS%') {
		array_shift($item);
		// $pkginfo['depends'] = $item;
	}
	elseif (isset($item[0]) && $item[0] == '%OPTDEPENDS%') {
		array_shift($item);
		// $pkginfo['optDepends'] = $item;
	}
	// elseif (isset($item[0]) && $item[0] == '%MAKEDEPENDS%') {
		// array_shift($item);
		// $pkginfo['makeDepends'] = $item;
	// }
	// print_r($item);
	// exit;
}

// print_r($pkginfo);
var_dump($pkginfo);