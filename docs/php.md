## PHP 各版本拓展支持情况

|name|56|70|71|72|73|74|80|81|Note|
|--|--|--|--|--|--|--|--|--|--|
|apache|√|√|√|√|√|√|√|√|Apache SAPI for PHP|
|amqp|√|√|√|√|√|√|√|√|Apache SAPI for PHP|
|[apc](https://github.com/php/pecl-caching-apc)|√|√|√|√|√|√|√|√|Alternative PHP Cache|
|apcu|√|√|√|√|√|√|√|√|A userland caching module for PHP|
|apcu-bc|x|√|√|√|√|√|x|x|A userland caching module for PHP|
|[apfd](https://github.com/m6w6/ext-apfd)|x|√|√|√|√|√|x|x|Always Populate Form Data|
|ast|x|√|√|√|√|√|√|√|A userland caching module for PHP|
|[bcmath](https://github.com/php/php-src/tree/master/ext/bcmath)|√|√|√|√|√|√|√|√|任意精度的数学|
|blackfire|√|√|√|√|√|√|√|x|任意精度的数学|
|[bz2](https://github.com/php/php-src/tree/master/ext/bz2)|√|√|√|√|√|√|√|√|-|
|calendar|√|√|√|√|√|√|√|√|-|
|cmark|x|√|√|√|√|√|x|x|-|
|csv|x|x|x|x|√|√|√|√|-|
|[curl](https://github.com/php/php-src/tree/master/ext/curl)|x|x|x|x|x|x|x|x|CURL|
|dba|√|√|√|√|√|√|√|√|Direct I/O functions|
|dbase|x|x|x|x|x|x|x|x|dBase database file access functions|
|decimal|x|√|√|√|√|√|√|√|-|
|ds|x|√|√|√|√|√|√|x|-|
|dio|x|x|x|x|x|x|x|x|Direct I/O functions|
|enchant|√|√|√|√|√|√|√|√|-|
|ev|√|√|√|√|√|√|√|√|ev|
|event|√|√|√|√|√|√|√|√|event|
|exif|√|√|√|√|√|√|√|√|exif|
|[ffi](https://github.com/php/php-src/tree/master/ext/ffi)|x|x|x|x|x|√|√|√|-|
|gd|√|√|√|√|√|√|√|√|图像处理|
|gearman|√|√|√|√|√|√|√|x|libgearman|
|[geoip](https://github.com/php/pecl-networking-geoip)|√|√|√|√|√|√|x|x|Map IP address to geographic places|
|gettext|√|√|√|√|√|√|√|√|Map IP address to geographic places|
|gmagick|√|√|√|√|√|√|√|√|图像处理|
|gmp|√|√|√|√|√|√|√|√|math|
|gnupg|√|√|√|√|√|√|√|√|gnupg|
|grpc|√|√|√|√|√|√|√|√|grpc|
|[http](https://github.com/m6w6/ext-http)|√|√|√|√|√|√|√|√|Extended HTTP Support|
|ibm_db2|x|x|x|x|x|x|x|x|IBM DB2 Universal Database|
|igbinary|√|√|√|√|√|√|√|√|序列化和反序列化 Igbinary is a drop in replacement for the standard php serializer.|
|imagick|√|√|√|√|√|√|√|√|图像处理|
|imap|√|√|√|√|√|√|√|√|Mail|
|inotify|√|√|√|√|√|√|√|√|-|
|interbase|√|√|√|√|√|x|x|x|-|
|intl|√|√|√|√|√|√|√|√|国际化|
|ioncube|√|√|√|√|√|√|x|x|Code Encoder|
|json|√|√|√|√|√|√|√|√|json manipulation|
|[json_post](https://github.com/m6w6/ext-json_post)|√|√|√|√|√|√|√|√|JSON POST handler|
|[krb5](https://github.com/php/pecl-authentication-krb5)|x|x|x|x|x|x|x|x|krb5|
|ldap|√|√|√|√|√|√|√|√|Lightweight Directory Access Protocol|
|[lzf](https://github.com/php/pecl-file_formats-lzf)|√|√|√|√|√|√|√|√|LZF compression|
|mailparse|√|√|√|√|√|√|√|√|Email message manipulation|
|maxminddb|x|x|x|√|√|√|√|√|-|
|mcrypt|√|√|√|√|√|√|√|√|加密扩展库 自带的22种加密解密算法|
|[memcache](https://github.com/websupport-sk/pecl-memcache)|√|√|√|√|√|√|√|√|Memcache|
|[memcached](https://github.com/php-memcached-dev/php-memcached)|√|√|√|√|√|√|√|√|Memcached|
|mongodb|√|√|√|√|√|√|√|√|Mongo|
|mbstring|√|√|√|√|√|√|√|√|图像处理|
|msgpack|√|√|√|√|√|√|√|√|msgpack|
|mssql|√|x|x|x|x|x|x|x|MSSQL|
|mysql|√|x|x|x|x|x|x|x|MYSQL|
|mysqli|√|√|√|√|√|√|√|√|MYSQL|
|mysqlnd|√|√|√|√|√|√|√|√|MYSQL|
|mqseries|x|x|x|x|x|x|x|x|MQseries client library|
|oauth|√|√|√|√|√|√|√|√|oauth|
|oci8|√|√|√|√|√|√|√|√|-|
|odbc|x|x|x|x|x|x|x|x|加密扩展库 自带的22种加密解密算法|
|opcache|√|√|√|√|√|√|√|√|Code Cache|
|[pdflib](https://github.com/php/pecl-text-pdflib)|x|x|x|x|x|x|x|x|Creating PDF on the fly with the PDFlib library|
|openswoole|x|x|x|√|√|√|√|√|Code Cache|
|pcntl|√|√|√|√|√|√|√|√|pcntl|
|pcov|x|√|√|√|√|√|√|√|pcov|
|pdo_dblib|√|√|√|√|√|√|√|x|PDO driver for dblib|
|pdo_firebird|√|√|√|√|√|√|√|√|PDO driver for firebird|
|pdo_ibm|√|√|√|√|√|√|√|√|PDO driver for IBM databases|
|pdo_mysql|√|√|√|√|√|√|√|√|PDO driver for mysql|
|pdo_oci|x|√|√|√|√|√|√|√|PDO driver for IBM databases|
|pdo_odbc|√|√|√|√|√|√|√|√|PDO driver for odbc|
|pdo_pgsql|√|√|√|√|√|√|√|√|PDO driver for pgsql|
|pdo_sqlsrv|x|√|√|√|√|√|√|√|PDO driver for IBM databases|
|pgsql|√|√|√|√|√|√|√|√|加密扩展库 自带的22种加密解密算法|
|[propro](https://github.com/m6w6/ext-propro)|√|√|√|√|√|√|x|x|Property proxy|
|pspell|√|√|√|√|√|√|√|√|-|
|[rar](https://github.com/cataphract/php-rar)|√|√|√|√|√|√|√|√|rar|
|readline|√|√|√|√|√|√|√|√|-|
|[recode](https://github.com/php/pecl-text-recode)|√|√|√|√|√|x|x|x|GNU recode bindings for character set conversion|
|rdkafka|√|√|√|√|√|√|√|x|GNU recode bindings for character set conversion|
|shmop|√|√|√|√|√|√|√|√|-|
|smbclient|√|√|√|√|√|√|√|√|samba client|
|snmp|√|√|√|√|√|√|√|√|-|
|soap|√|√|√|√|√|√|√|√|-|
|sockets|√|√|√|√|√|√|√|√|sockets|
|solr|√|√|√|√|√|√|√|√|Apache Solr Client|
|sqlite3|√|√|√|√|√|√|√|√|SQLite|
|sqlsrv|x|√|√|√|√|√|√|√|SQLite|
|[ssh2](https://github.com/php/pecl-networking-ssh2)|√|√|√|√|√|√|√|√|Bindings for the libssh2 library|
|sync|x|x|x|x|x|x|x|x|Synchronization objects|
|svn|x|x|x|x|x|x|x|x|Subversion Revision control system|
|sybase|x|x|x|x|x|x|x|x|加密扩展库 自带的22种加密解密算法|
|tcpwrap|√|√|√|√|√|√|√|√|tcpwrappers binding|
|tidy|√|√|√|√|√|√|√|√|加密扩展库 自带的22种加密解密算法|
|timezonedb|√|√|√|√|√|√|√|√|timezone|
|mysql_xdevapi|x|x|x|x|x|x|x|x|MySQL X DevAPI|
|protobuf|x|x|x|x|x|x|x|x|Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data.|
|rrd|x|x|x|x|x|x|x|x|rrd tool system|
|stomp|√|√|√|√|√|√|x|x|Stomp Client Extension|
|swoole|√|√|√|√|√|√|√|√|Coroutine-based concurrency library|
|[sourceguardian](https://www.sourceguardian.com/loaders.html)|√|√|√|√|√|√|√|√|PHP Code Encoder|
|sysvmsg|√|√|√|√|√|√|√|√|消息队列|
|sysvsem|√|√|√|√|√|√|√|√|信号量、共享内存和进程间消息传递|
|sysvshm|√|√|√|√|√|√|√|√|内存共享方案|
|trade|x|x|x|x|x|x|x|x|Technical Analysis for traders.|
|tokenizer|√|√|√|√|√|√|√|√|Zend引擎的 PHP tokenizer 调用接口|
|[vips](https://github.com/libvips/php-vips-ext)|x|√|√|√|√|√|√|√|Low-level libvips binding for PHP|
|[xdebug](https://github.com/xdebug/xdebug)|√|√|√|√|√|√|√|√|xdebug|
|[xhprof](https://github.com/longxinH/xhprof)|x|√|√|√|√|√|√|x|function-level hierarchical profiler |
|xmlreader|√|√|√|√|√|√|√|√|XML 解析器|
|xmlwriter|√|√|√|√|√|√|√|√|libxml xmlWriter API 提供非缓存 只能转发的方式来生成包含XML数据的流或文件|
|xmlrpc|√|√|√|√|√|√|x|x|XML-RPC server and client bindings|
|xsl|√|√|√|√|√|√|√|√|扩展样式表语言|
|[wddx](https://github.com/php/pecl-text-wddx)|√|√|√|√|√|x|x|x|Web分布式数据交换|
|xml|√|√|√|√|√|√|√|√|XML 解析器|
|xmldiff|√|√|√|√|√|√|√|√|XML diff and merge|
|[yaf](https://github.com/laruence/yaf)|√|√|√|√|√|√|√|√|Fast php framework written in c, built in php extension|
|[yac](https://github.com/laruence/yac)|x|√|√|√|√|√|√|√|A fast, lock-free, shared memory user data cache for PHP|
|[yar](https://github.com/laruence/yar)|√|√|√|√|√|√|√|√|Light, concurrent RPC framework for PHP & C|
|[yaconf](https://github.com/laruence/yaconf)|x|√|√|√|√|√|√|√|A PHP Persistent Configurations Container|
|[redis](https://github.com/phpredis/phpredis)|√|√|√|√|√|√|√|√|Persistent key-value database|
|[uploadprogress](https://github.com/php/pecl-php-uploadprogress)|√|√|√|√|√|√|√|√|track progress of a file upload|
|[uuid](https://github.com/php/pecl-networking-uuid)|√|√|√|√|√|√|√|√|UUID extension|
|[varnish](https://github.com/php/pecl-caching-varnish)|x|x|x|x|x|x|x|x|Varnish Cache bindings|
|[xattr](https://github.com/php/pecl-file_system-xattr)|x|x|x|x|x|x|x|x|Extended attributes|
|[xdiff](https://github.com/php/pecl-text-xdiff)|x|x|x|x|x|x|x|x|File differences/patches.|
|[yaml](https://github.com/php/pecl-file_formats-yaml)|√|√|√|√|√|√|√|√|YAML-1.1 parser and emitter|
|[zip](https://github.com/php/php-src/tree/master/ext/zip)|√|√|√|√|√|√|√|√|zip|
|[zookeeper](https://github.com/php-zookeeper/php-zookeeper)|x|x|x|x|x|x|x|x|File differences/patches.|
|[zstd](https://github.com/kjdev/php-ext-zstd)|√|√|√|√|√|√|√|√|File differences/patches.|

php 5
https://github.com/phacility/xhprof

* PS: zlib 合并到 php7-common 中了