class phpfpm (

  # Main config
  $php_version          = '56',
  $fastcgi_type         = 'socket',
  $fastcgi_type_host    = '127.0.0.1:9000',
  $fastcgi_type_socket  = '/var/run/php-fpm.sock',
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
  include phpfpm::install
  include phpfpm::service


  /**
  file {"/etc/php.ini":
    content => template('phpfpm/php54.ini.erb'),
    owner => 'root',
    group => 'root',
    mode => '0644',
    require => Class['phpfpm::install'],
    notify => Class['phpfpm::service'],
  }
  **/
}
