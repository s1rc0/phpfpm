class phpfpm (
  #main config
  $php_version          = '56',
  $php_modules          = [],
){
  include phpfpm::install
  include phpfpm::conf::php_ini
  include phpfpm::service
/*
  file { "/etc/php-fpm.d":
    ensure  => directory,
    force   => true,
    purge   => true,
    recurse => true,
    notify  => Class['phpfpm::service'],
  } */
}
