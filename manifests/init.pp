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
  include phpfpm::install
  include phpfpm::service

  if ! defined (Class[::phpfpm::conf::php_fpm]) {
  # Set up default php-fpm pool
  ::phpfpm::conf::php_fpm { "www":
    listen                             => '127.0.0.1:9000',
    listen_allowed_clients             => '127.0.0.1',
    user                               => 'apache',
    group                              => 'apache',
    pm                                 => 'dynamic',
    pm_max_children                    => 50,
    pm_start_servers                   => 5,
    pm_min_spare_servers               => 5,
    pm_max_spare_servers               => 35,
    slowlog                            => "/var/log/php-fpm/name-slow.log",
    php_admin_value_error_log          => "/var/log/php-fpm/name-error.log",
    php_admin_flag_log_errors          => 'on',
    php_value_session_save_handler     => 'files',
    php_value_session_save_path        => '/var/lib/php/session',
    php_value_soap_wsdl_cache_dir      => '/var/lib/php/wsdlcache',
    listen_backlog                     => undef,
    listen_owner                       => undef,
    listen_group                       => undef,
    listen_mode                        => undef,
    pm_max_requests                    => undef,
    pm_status_path                     => undef,
    ping_path                          => undef,
    ping_response                      => undef,
    request_terminate_timeout          => undef,
    request_slowlog_timeout            => undef,
    rlimit_files                       => undef,
    rlimit_core                        => undef,
    chroot                             => undef,
    chdir                              => undef,
    catch_workers_output               => undef,
    security_limit_extensions          => undef,
    php_admin_value_sendmail_path      => undef,
    php_flag_display_errors            => undef,
    php_admin_value_memory_limit       => undef,
  }
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
