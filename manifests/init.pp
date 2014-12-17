class phpfpm (
  $php_version        = '5.4', # available 5.4, 5.5, 5.6 from remi
  $fastcgi_type       = 'socket', #available port or socket

  # Modules
  $php_modules        = ["php-soap","php-apc"],



  $port           = 99,

){

  ## igbinary,msgpack,zendopcache,imap,idn,interbase,intl,ioncube-loader,
  ## jsonlint,ldap,magickwand,mapi,markdown,mssql,oci8,odbc,pclzip,geoip,
  ## imagick,ssh2,yaml,snmp,tidy
## -enablerepo=remi,remi-php55
## yum --enablerepo=remi,remi-php55 install  php-fpm php-common
}
