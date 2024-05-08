<?php 

/*
 * @Author: Cloudflying
 * @Date: 2021-11-19 00:29:40
 * @LastEditTime: 2021-11-19 01:39:04
 * @LastEditors: Cloudflying
 * @Description: 
 * @FilePath: /packages/parse-repo-file/parse_archlinux.php
 */

 function _archlinux()
{
	$file='tmp/files/powerline-2.8.2-2/desc';
	$info = file_get_contents($file);
    $info = explode("\n\n",$info);
    // print_r($info);
    foreach ($info as $key => $val)
    {
        $val = str_replace('%','',$val);
        var_dump($val);
        if (strlen($val) > 1) {
            list($k,$v) = explode("\n",$val);
        }
        switch ($k) {
            case 'FILENAME':
                echo "File Name:" . $v;
                break;
            case 'NAME':
                echo "Package Name:" . $v;
                break;
            case 'BASE':
                echo "Base: " . $v;
                break;
            case 'VERSION':
                echo "Version: " . $v;
                break;
            case 'DESC':
                echo "descript: " . $v;
                break;
            case 'CSIZE':
                echo "Size: " . $v;
                break;
            case 'ISIZE':
                echo "Install Size: " . $v;
                break;
            case 'MD5SUM':
                echo "md5: " . $v;
                break;
            case 'SHA256SUM':
                echo "sha256: " . $v;
                break;
            case 'PGPSIG':
                echo "PGP Sign: " . $v;
                break;
            case 'URL':
                echo "url: " . $v;
                // var_dump($v);
                break;
            case 'LICENSE':
                echo "license: " . $v;
                break;
            case 'ARCH':
                echo "arch: " . $v;
                break;
            case 'BUILDDATE':
                echo "build date: " . date('Y-m-d H:i:s');
                break;
            case 'PACKAGER':
                echo "Packger: " . $v;
                break;
            case 'REPLACES':
                echo "Replace: " . $v;
                break;
            case 'CONFLICTS':
                echo "Conflicts: " . $v;
                break;
            case 'DEPENDS':
                echo "deps: " . $v;
                break;
            case 'MAKEDEPENDS':
                echo "make deps: " . $v;
                break;
            case 'CHECKDEPENDS':
                echo "check deps: " . $v;
                break;
            case 'OPTDEPENDS':
                echo $v;
                break;
            default:
                var_dump($val) . 'Unknow' . PHP_EOL;
                break;
        }
        echo PHP_EOL;
    }
}

_archlinux();