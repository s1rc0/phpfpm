define phpfpm::conf::php_fpm (
  $listen                             = '127.0.0.1:9000',
  $listen_allowed_clients             = '127.0.0.1',
  $user                               = 'apache',
  $group                              = 'apache',
  $pm                                 = 'dynamic',
  $pm_max_children                    = 50,
  $pm_start_servers                   = 5,
  $pm_min_spare_servers               = 5,
  $pm_max_spare_servers               = 35,
  $slowlog                            = "/var/log/php-fpm/$name-slow.log",
  $php_admin_value_error_log          = "/var/log/php-fpm/$name-error.log",
  $php_admin_flag_log_errors          = 'on',
  $php_value_session_save_handler     = 'files',
  $php_value_session_save_path        = '/var/lib/php/session',
  $php_value_soap_wsdl_cache_dir      = '/var/lib/php/wsdlcache',
){
  include phpfpm

  file { "/etc/php-fpm.d/$name.conf":
    content     => template("phpfpm/www.conf.erb"),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }
}
/**
  $listen_backlog,
  $listen_owner,
  $listen_group,
  $listen_mode,
  $pm_max_requests,
  $pm_status_path,
  $ping_path,
  $ping_response,
  $request_terminate_timeout,
  $request_slowlog_timeout,
  $rlimit_files,
  $rlimit_core,
  $chroot,
  $chdir,
  $catch_workers_output,
  $security_limit_extensions,
  $php_admin_value_sendmail_path,
  $php_flag_display_errors,
  $php_admin_value_memory_limit,
**/