class phpfpm (
  $php_version        = '5.4', # available 5.4, 5.5, 5.6 from remi
  $fastcgi_type       = 'socket', #available port or socket

  # Modules
  $php_module_apcu         = false,
  $php_module_opcache         = false,
  $php_module_pear         = false,
  $php_module_pdo         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,
  $php_module_         = false,



  $port           = 99,

){

## -enablerepo=remi,remi-php55
## yum --enablerepo=remi,remi-php55 install  php-fpm php-common
}
