#!/usr/bin/env php
<?php
/*
 * @Author: Cloudflying
 * @Date: 2021-07-07 05:51:27
 * @LastEditTime: 2023-10-21 19:31:42
 * @LastEditors: Cloudflying
 * @Description: Convert Archlinux Package info 2 Debian Package Format
 */

$rules = [
    'pkgname'   => 'Package',
    'pkgver'   => 'Version',
    'pkgdesc'   => 'Description',
    'url'   => 'Homepage',
    'packager'   => 'Maintainer',
    'size'   => 'Installed-Size',
    'arch'   => 'Architecture',
    'depend'   => 'Depends',
    'optdepend'   => 'Recommends',
];

if(file_exists('.PKGINFO'))
{
    // echo file_get_contents('.PKGINFO');
    // $pkginfo = file(__DIR__ . '/.PKGINFO');
    $pkginfo = file('.PKGINFO');
    // print_r($pkginfo);
    foreach ($pkginfo as $key => $val)
    {
        foreach ($rules as $rk => $rule)
        {
            if(stristr($val,$rk . ' =')!== false)
            {
                $val = str_replace($rk . ' =',$rule.':',$val);

                if($rk == 'arch')
                {
                    $val = str_replace('x86_64','amd64',$val);
                    $val = str_replace('i686','1386',$val);
                    $val = str_replace('aarh64','arm64',$val);
                    $val = str_replace('any','all',$val);
                    // and more , but it's fucking useless
                }
                
                if($rk == 'packager') $val = "Maintainer: Cloudflying oss@live.hk\n";
                if($rk == 'depend')
                {
                    // $val = 'Depends:' . $val;
                    echo $val;
                }
                
                // echo $rk . PHP_EOL;
                // echo $rule . PHP_EOL;
                // echo $val;
                // echo $val . PHP_EOL;
                // echo $rule . PHP_EOL;
                // echo $val . $rule . PHP_EOL;
            }
            // print_r($rk);
            // print_r($rule);
            // exit;
        }
        // echo $val;
        // exit;
    }
}
else
{
    echo '.PKGINFO File Not Fount' . PHP_EOL;
}

echo PHP_EOL;