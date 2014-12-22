class phpfpm (
  # Main config
  $php_version          = '56',
  $php_modules          = [],
){
  require phpfpm::install
  require phpfpm::service

  if !phpfpm::conf::php_ini::memory_limit == undef
  {
    include phpfpm::conf::php_ini
  }
/*
  file { "/etc/php-fpm.d":
    ensure  => directory,
    force   => true,
    purge   => true,
    recurse => true,
    notify  => Class['phpfpm::service'],
  } */
}
