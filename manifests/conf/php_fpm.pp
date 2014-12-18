class phpfpm::conf::php_fpm (

  $listen                     = '127.0.0.1:9000',
  $listen_allowed_clients     = '127.0.0.1',
  $user                       = 'apache',
  $group                      = 'apache',
  $pm                         = 'dynamic',
  $pm_max_children            = 50,
  $pm_start_servers           = 5,
  $pm_min_spare_servers       = 5,
  $pm_max_spare_servers       = 35,
  $slowlog                    = '/var/log/php-fpm/www-slow.log',

  /**
  $max_execution_time             = $phpfpm::max_execution_time,
  $max_input_time                 = $phpfpm::max_input_time,
  $memory_limit                   = $phpfpm::memory_limit,
  $file_uploads                   = $phpfpm::file_uploads,
  $upload_max_filesize            = $phpfpm::upload_max_filesize,
  $max_file_uploads               = $phpfpm::max_file_uploads,
  $date_timezone                  = $phpfpm::date_timezone,
  */
) {

  file {"/etc/php-fpm.d/www.conf":
    content     => template('phpfpm/www.conf.erb'),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }

}