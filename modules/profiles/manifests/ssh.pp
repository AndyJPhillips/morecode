class profiles::ssh (
  $user = hiera('user'),
  $passwd = hiera('passwd'),
  $package = hiera('package'),
  $service = hiera('service'),
) {
  # Setup user for sshd
  user { "$user":
    ensure => present,
    password => "$passwd",
    home => "/home/$user",
  }
  file { "/home/$user":
    ensure => directory,
    owner => "$user",
    require => User["$user"],
  }
  # ensure sshd is installed and running
  package { $package:
    ensure => present,
    before => Service["$service"],
  }
  service { $service:
    ensure => running,
  }
}

