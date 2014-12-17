class phpfpm::install (
  $modules                                = $phpfpm::php_modules,
  $manage_repo                            = true,
  $package_ensure                         = 'present',
  $default_packages                       = ["php-fpm","php-common"],

  ## repository
  $epel_mirrorlist                        = "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-7&arch=\$basearch",
  $epel_baseurl                           = 'absent',
  $epel_failovermethod                    = 'priority',
  $epel_enabled                           = '1',
  $epel_gpgcheck                          = '0',
  $epel_source_mirrorlist                 = "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-source-7&arch=\$basearch",
  $epel_source_baseurl                    = 'absent',
  $epel_source_failovermethod             = 'priority',
  $epel_source_enabled                    = '0',
  $epel_source_gpgcheck                   = '0',
  $epel_debuginfo_mirrorlist              = "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-debug-7&arch=\$basearch",
  $epel_debuginfo_baseurl                 = 'absent',
  $epel_debuginfo_failovermethod          = 'priority',
  $epel_debuginfo_enabled                 = '0',
  $epel_debuginfo_gpgcheck                = '0',
) {

  ## EPEL REPO
  yumrepo { 'epel':
    mirrorlist     => $epel_mirrorlist,
    baseurl        => $epel_baseurl,
    failovermethod => $epel_failovermethod,
    enabled        => $epel_enabled,
    gpgcheck       => $epel_gpgcheck,
    descr          => "Extra Packages for Enterprise Linux ${os_maj_release} - \$basearch",
  }

  yumrepo { 'epel-debuginfo':
    mirrorlist     => $epel_debuginfo_mirrorlist,
    baseurl        => $epel_debuginfo_baseurl,
    failovermethod => $epel_debuginfo_failovermethod,
    enabled        => $epel_debuginfo_enabled,
    gpgcheck       => $epel_debuginfo_gpgcheck,
    descr          => "Extra Packages for Enterprise Linux ${os_maj_release} - \$basearch - Debug",
  }

  yumrepo { 'epel-source':
    mirrorlist     => $epel_source_mirrorlist,
    baseurl        => $epel_source_baseurl,
    failovermethod => $epel_source_failovermethod,
    enabled        => $epel_source_enabled,
    gpgcheck       => $epel_source_gpgcheck,
    descr          => "Extra Packages for Enterprise Linux ${os_maj_release} - \$basearch - Source",
  }
  ## END EPEL REPO
  ## REMI REPO
  yumrepo { 'remi':
    mirrorlist     => 'http://rpms.famillecollet.com/enterprise/$releasever/remi/mirror',
    enabled        => 1,
    gpgcheck       => 0,
    descr          => 'Les RPM de remi pour Enterpise Linux $releasever - $basearch',
  }
  yumrepo { 'remi-php55':
    mirrorlist     => 'http://rpms.famillecollet.com/enterprise/$releasever/php55/mirror',
    enabled        => 0,
    gpgcheck       => 0,
    descr          => 'Les RPM de remi pour Enterpise Linux $releasever - $basearch - PHP 5.5',
  }
  yumrepo { 'remi-php56':
    mirrorlist     => 'http://rpms.famillecollet.com/enterprise/$releasever/php56/mirror',
    enabled        => 0,
    gpgcheck       => 0,
    descr          => 'Les RPM de remi pour Enterpise Linux $releasever - $basearch - PHP 5.6',
  }
  ## END REMI REPO


  each($default_packages) |$default_package| {
    exec { "Installing $default_package":
      command => "yum -y --enablerepo=remi-php55 install $default_package",
      path => "/bin",
    }
  }

  each($modules) |$module| {
    exec { "Installing $module":
      command => "yum -y --enablerepo=remi-php55 install $module",
      path => "/bin",
    }
  }

}
