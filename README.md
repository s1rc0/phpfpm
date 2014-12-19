PHP FPM
======

* Sergey Postument <segrey.postument@gmail.com>

This module manages PHP-FPM configuration.

## Quick Start

### Requirements

* Puppet-2.7.0 or later
* Ruby-1.9.3 or later (Support for Ruby-1.8.7 is not guaranteed. YMMV).

### Install and bootstrap an PHP-FPM instance

```puppet
class { phpfpm: }
```

### Set PHP version

```puppet
class { phpfpm: php_version => '55',} # available 54,55,56
```
### Set PHP modules for install

```puppet
class { phpfpm:
  php_version => '55',
  php_modules => ['mbstring','mcrypt','soap','ssh2']
}
```
### Configure php-fpm pools

```puppet
phpfpm::conf::php_fpm { "www":
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
```
### Configure php.ini

```puppet
  class { phpfpm::conf::php_ini:
    memory_limit            => '512M',
    max_execution_time      => '30',
    max_input_time          => '60',
    file_uploads            => "On",
    upload_max_filesize     => "2M",
    max_file_uploads        => 20,
    date_timezone           => "Europe/Kiev",
  }
```