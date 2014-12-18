class phpfpm::conf::php_ini (
  $max_execution_time             = $phpfpm::max_execution_time,
  $max_input_time                 = $phpfpm::max_input_time,
  $memory_limit                   = $phpfpm::memory_limit,
  $file_uploads                   = $phpfpm::file_uploads,
  $upload_max_filesize            = $phpfpm::upload_max_filesize,
  $max_file_uploads               = $phpfpm::max_file_uploads,
  $date_timezone                  = $phpfpm::date_timezone,
) {

  file {"/etc/php.ini":
    content     => template('phpfpm/php54.ini.erb'),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }

}