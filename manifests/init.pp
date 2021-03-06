class phpfpm (
  #main config
  $php_version          = '56',
  $php_modules          = [],
){
  include phpfpm::install
  include phpfpm::service

  phpfpm::conf::php_fpm { "www":
    pm_max_children => 62,
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
