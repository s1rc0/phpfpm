class phpfpm::params {

      $fastcgi_type               = $phpfpm::fastcgi_type

      $php_conf_dir               = '/etc/php5/conf.d'
      $fpm_package_name           = 'php5-fpm'
      $fpm_service_name           = 'php5-fpm'
      $fpm_pool_dir               = '/etc/php5/fpm/pool.d'
      $fpm_conf_dir               = '/etc/php5/fpm'
      $fpm_error_log              = '/var/log/php5-fpm.log'
      $fpm_pid                    = '/var/run/php5-fpm.pid'

  }
