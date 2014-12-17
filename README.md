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