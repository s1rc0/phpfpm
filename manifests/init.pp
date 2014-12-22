class phpfpm (
  # Main config
  $php_version          = '56',
  $php_modules          = [],
){
  require phpfpm::install
  require phpfpm::service

  if !phpfpm::conf::php_ini::memory_limit
  {
    $phpfpm::conf::php_ini::max_execution_time             = '30'
    $phpfpm::conf::php_ini::max_input_time                 = '60'
    $phpfpm::conf::php_ini::memory_limit                   = '128M'
    $phpfpm::conf::php_ini::file_uploads                   = 'On'
    $phpfpm::conf::php_ini::upload_max_filesize            = '2M'
    $phpfpm::conf::php_ini::max_file_uploads               = 20
    $phpfpm::conf::php_ini::date_timezone                  = "Europe/Kiev"
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
