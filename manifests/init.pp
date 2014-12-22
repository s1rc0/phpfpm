class phpfpm (
  #main config
  $php_version          = '56',
  $php_modules          = [],

  #php.ini parameters
  $php_ini_max_execution_time                       = 30,
  $php_ini_max_input_time                           = 60,
  $php_ini_memory_limit                             = '128M',
  $php_ini_file_uploads                             = 'On',
  $php_ini_upload_max_filesize                      = '8M',
  $php_ini_max_file_uploads                         = 20,
  $php_ini_date_timezone                            = "Europe/Kiev",
){
  include phpfpm::install
  include phpfpm::conf::php_ini
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
