class phpfpm::service {
  service { 'php-fpm':
    ensure    => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['phpfpm::install'],
  }
}
