PHP FPM
======

* Sergey Postument <segrey.postument@gmail.com>

This module manages PHP-FPM configuration.

## Quick Start

### Requirements

* Puppet-2.7.0 or later
* Ruby-1.9.3 or later (Support for Ruby-1.8.7 is not guaranteed. YMMV).

### Install and bootstrap an PHP-FPM instance (this minimum configuration, it sets the parameters by default)

```puppet
class { phpfpm: }
class { phpfpm::conf::php_ini: }
phpfpm::conf::php_fpm { "www": }
```
## Extended option

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
  slowlog                            => "/var/log/php-fpm/www-slow.log",
  php_admin_value_error_log          => "/var/log/php-fpm/www-error.log",
  php_admin_flag_log_errors          => 'on',
  php_value_session_save_handler     => 'files',
  php_value_session_save_path        => '/var/lib/php/session',
  php_value_soap_wsdl_cache_dir      => '/var/lib/php/wsdlcache',
}
```
### Setup additional php-fpm pool
```puppet
phpfpm::conf::php_fpm { "zzz":
  listen                             => '127.0.0.1:9001',
  listen_allowed_clients             => '127.0.0.1',
  user                               => 'username',
  group                              => 'group',
  pm                                 => 'dynamic',
  pm_max_children                    => 50,
  pm_start_servers                   => 5,
  pm_min_spare_servers               => 5,
  pm_max_spare_servers               => 35,
  slowlog                            => "/var/log/php-fpm/zzz-slow.log",
  php_admin_value_error_log          => "/var/log/php-fpm/zzz-error.log",
  php_admin_flag_log_errors          => 'on',
  php_value_session_save_handler     => 'files',
  php_value_session_save_path        => '/var/lib/php/zzz-session',
  php_value_soap_wsdl_cache_dir      => '/var/lib/php/zzz-wsdlcache',
}
```

### Configure php.ini

```puppet
  class { phpfpm::conf::php_ini:
    memory_limit                             => '512M',
    max_execution_time                       => '30',
    max_input_time                           => '60',
    file_uploads                             => "On",
    upload_max_filesize                      => "2M",
    max_file_uploads                         => 20,
    date_timezone                            => "Europe/Kiev",
  }
```