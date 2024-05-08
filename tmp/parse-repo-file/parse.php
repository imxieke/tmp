#!/usr/bin/env php
<?php
$file= __DIR__ . '/APKINDEX';

$pkgs = file_get_contents($file);
$pkgs = explode("\n\n", $pkgs);

// p 安装完成后的 命令
// k unkown
// print_r($pkgs);
$pkg_lists = [];
foreach ($pkgs as $key => $pkg)
{
	// echo $pkg;
	$pkg = explode("\n", $pkg);
	// print_r($pkg);
	if (count($pkg) > 1 ) {
		echo 'branch: edge' . PHP_EOL;
		echo 'repository: main' . PHP_EOL;
	}
	foreach ($pkg as $key => $val)
	{
		$val = explode(":", $val);
		switch ($val[0]) {
			case 'C':
				echo 'Base64: ' . $val[1] . PHP_EOL;
				$pkg_lists[]['base64'] = $val[1];
				break;
			case 'P':
				echo 'name: ' . $val[1] . PHP_EOL;
				break;
			case 'V':
				echo 'version: ' . $val[1] . PHP_EOL;
				break;
			case 'A':
				echo 'arch: ' . $val[1] . PHP_EOL;
				break;
			case 'S':
				echo 'size: ' . ($val[1]/1024) . ' KB' . PHP_EOL;
				break;
			case 'I':
				// echo 'install-size: ' . $val[1] . PHP_EOL;
				echo 'install-size: ' . ($val[1]/1024) . ' KB' . PHP_EOL;
				break;
			case 'T':
				// echo 'install-size: ' . $val[1] . PHP_EOL;
				echo 'discription: ' . $val[1] . PHP_EOL;
				break;
			case 'U':
				// echo 'url: ' . $val[1] . PHP_EOL;
				$url = implode('', $val);
				echo 'url: ' . substr($url, 1) . PHP_EOL;
				break;
			case 'L':
				echo 'license: ' . $val[1] . PHP_EOL;
				break;
			case 'o':
				echo 'origin: ' . $val[1] . PHP_EOL;
				break;
			case 'm':
				echo 'maintainer: ' . $val[1] . PHP_EOL;
				break;
			case 't':
				echo 'time: ' . date('Y-m-d H:i:s',$val[1]) . PHP_EOL;
				break;
			case 'c':
				echo 'commit: ' . $val[1] . PHP_EOL; // git commit
				break;
			case 'D':
				echo 'depens: ' . $val[1] . PHP_EOL;
				break;
			default:
				if ($val[0] == 'i' || $val[0] == 'p' || $val[0] == 'i' || $val[0] == 'k' || count($val) <= 1) {
					break;
				}
				print_r($val);
				exit;
				// echo 'unknow: ' . $val[0] . " : " . $val[1] . PHP_EOL;
				break;
		}
		// var_dump($val);
		// exit;
	}
	echo PHP_EOL;
	// exit;
}