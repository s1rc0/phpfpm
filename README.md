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

Default modules (installation php-fpm php-cli php-common packages from remi ):

- bz2
- calendar
- Core
- ctype
- curl
- date
- ereg
- exif
- fileinfo
- filter
- ftp
- gettext
- gmp
- hash
- iconv
- json
- libxml
- mhash
- openssl
- pcntl
- pcre
- Phar
- readline
- Reflection
- session
- shmop
- SimpleXML
- sockets
- SPL
- standard
- tokenizer
- xml
- zip
- zlib