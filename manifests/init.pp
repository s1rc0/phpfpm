class phpfpm (

  # Main config
  $php_version          = '56',
  $fastcgi_type         = 'socket',
  $fastcgi_type_host    = '127.0.0.1:9000',
  $fastcgi_type_socket  = '/var/run/php-fpm.sock',

  # Modules
  $php_modules        = ["php-soap","php-apc"],

){
  include phpfpm::install
}
