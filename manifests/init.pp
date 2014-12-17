class phpfpm (

  # Main config
  $php_version          = '56',
  $fastcgi_type         = 'socket',
  $fastcgi_type_host    = '127.0.0.1:9000',
  $fastcgi_type_socket  = '/var/run/php-fpm.sock',
  $php_modules          = [],

){
  include phpfpm::install
  include phpfpm::service
}
