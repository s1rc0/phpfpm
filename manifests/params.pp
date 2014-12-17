class phpfpm::params {

      # Main setting
      $php_version            = $phpfpm::php_version
      $fastcgi_type           = $phpfpm::fastcgi_type

      ### PHP Modules and Packages
      $php_package_name = 'php-fpm'
      $cli_package_name = 'php-cli'
      $common_package_name = 'php-common'
      $apcu_package_name = 'php-pecl-apcu'
      $opcache_package_name = 'php-opcache'
      $pear_package_name = 'php-pear'
      $pdo_package_name = 'php-pdo'
      $mysqlnd_package_name = 'php-mysqlnd'
      $mongo_package_name = 'php-pecl-mongo'
      $pgsql_package_name = 'php-pgsql'
      $sqlite_package_name = 'php-pecl-sqlite'
      $memcache_package_name = 'php-pecl-memcache'
      $memcached_package_name = 'php-pecl-memcached'
      $gd_package_name = 'php-gd'
      $mbstring_package_name = 'php-mbstring'
      $mcrypt_package_name = 'php-mcrypt'
      $xml_package_name = 'php-xml'
      $soap_package_name = 'php-soap'

      # /etc/php.ini settings
  /*
      php-bcmath.x86_64
      php-dba.x86_64
      php-devel.x86_64
      php-embedded.x86_64
      php-enchant.x86_64
      php-intl.x86_64
      php-ldap.x86_64
      php-mysql.x86_64
      php-odbc.x86_64
      php-process.x86_64
      php-pspell.x86_64
      php-recode.x86_64
      php-snmp.x86_64
      php-xmlrpc.x86_64
*/


      $php_conf_dir = '/etc/php5/conf.d'
      $fpm_package_name = 'php5-fpm'
      $fpm_service_name = 'php5-fpm'
      $fpm_pool_dir = '/etc/php5/fpm/pool.d'
      $fpm_conf_dir = '/etc/php5/fpm'
      $fpm_error_log = '/var/log/php5-fpm.log'
      $fpm_pid = '/var/run/php5-fpm.pid'

  }
