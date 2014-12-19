/*class phpfpm::conf::php_fpm (
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
) {
  file {"/etc/php-fpm.d/www.conf":
    content     => template('phpfpm/www.conf.erb'),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }
}*/
define phpfpm::conf::phpfpm_pool (
  $fpm_pool_name              = '',
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
){
  file {"/etc/php-fpm.d/$fpm_pool_name.conf":
    content     => template("phpfpm/www.conf.erb"),
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    require     => Class['phpfpm::install'],
    notify      => Class['phpfpm::service'],
  }
}
