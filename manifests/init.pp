class phpfpm (
  $php_version          = '56',
  $php_modules          = [],
){
  require phpfpm::install
  require phpfpm::service
/*
  file { "/etc/php-fpm.d":
    ensure  => directory,
    force   => true,
    purge   => true,
    recurse => true,
    notify  => Class['phpfpm::service'],
  } */
}
