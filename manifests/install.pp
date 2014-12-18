class phpfpm::install (
  $modules                = $phpfpm::php_modules,
  $manage_repo            = true,
  $package_ensure         = 'installed',
  $default_packages       = ["php-fpm","php-common"],
  $ver                    = $phpfpm::php_version,
  ## repository
  $epel_mirrorlist        = "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-7&arch=\$basearch",
  $epel_baseurl           = 'absent',
  $epel_failovermethod    = 'priority',
  $epel_enabled           = '1',
  $epel_gpgcheck          = '0',
  $remi_mirrorlist        = "http://rpms.famillecollet.com/enterprise/7/remi/mirror",
  $remi_enabled           = 1,
  $remi_gpgcheck          = 0,
  $remi55_mirrorlist      = "http://rpms.famillecollet.com/enterprise/7/php55/mirror",
  $remi55_enabled         = 0,
  $remi55_gpgcheck        = 0,
  $remi56_mirrorlist      = "http://rpms.famillecollet.com/enterprise/7/php56/mirror",
  $remi56_enabled         = 0,
  $remi56_gpgcheck        = 0,
) {
  yumrepo { 'epel'      : mirrorlist => $epel_mirrorlist, baseurl => $epel_baseurl,enabled => $epel_enabled,gpgcheck => $epel_gpgcheck, }
  yumrepo { 'remi'      : mirrorlist => $remi_mirrorlist, enabled => $remi_enabled,gpgcheck => $remi_gpgcheck, }
  yumrepo { 'remi-php55': mirrorlist => $remi55_mirrorlist, enabled => $remi55_enabled, gpgcheck => $remi55_gpgcheck, }
  yumrepo { 'remi-php56': mirrorlist => $remi56_mirrorlist, enabled => $remi56_enabled,gpgcheck => $remi56_gpgcheck, }

  each($default_packages) |$default_package| {
    package { $default_package:
      ensure               => $package_ensure,
      allow_virtual        => false,
      provider             => 'yum',
      install_options      => [ "--enablerepo=remi-php$ver" ],
      require              => Yumrepo[ "epel","remi","remi-php55","remi-php56" ],
    }
  }

  each($modules) |$module| {
    package { "php-$module":
      ensure               => $package_ensure,
      allow_virtual        => false,
      provider             => 'yum',
      install_options      => [ "--enablerepo=remi-php$ver" ],
      require              => Yumrepo[ "epel","remi","remi-php55","remi-php56" ],
      require              => Package $default_packages,
    }
  }

}
