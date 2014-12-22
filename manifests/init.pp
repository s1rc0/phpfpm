class phpfpm (

  # Main config
  $php_version          = '56',
  $php_modules          = [],

  # php.ini configuration
  $max_execution_time             = '30',
  $max_input_time                 = '60',
  $memory_limit                   = '128M',
  $file_uploads                   = "On",
  $upload_max_filesize            = "2M",
  $max_file_uploads               = 20,
  $date_timezone                  = "Europe/Kiev",

){
  class { phpfpm::install:
    #php_version => '55',
    #php_modules => ['mbstring','mcrypt','soap']
  }
  class { phpfpm::service:}
#  include phpfpm::install
#  include phpfpm::service

  file { "/etc/php-fpm.d":
    ensure  => directory,
    force   => true,
    purge   => true,
    recurse => true,
    notify  => Class['phpfpm::service'],
  }
}
