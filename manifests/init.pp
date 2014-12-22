class phpfpm (
  # Main config
  $php_version          = '56',
  $php_modules          = [],
){
  require phpfpm::install
  require phpfpm::service

  if $phpfpm::conf::php_ini::memory_limit == undef
  {
    $max_execution_time             = '30'
    $max_input_time                 = '60'
    $memory_limit                   = '128M'
    $file_uploads                   = 'On'
    $upload_max_filesize            = '2M'
    $max_file_uploads               = 20
    $date_timezone                  = "Europe/Kiev"
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
