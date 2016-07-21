class profiles::ssh (
  $users = hiera('profiles::ssh::users'),
  $package = hiera('profiles::ssh::package'),
  $service = hiera('profiles::ssh::service'),
) {
  # Setup users for sshd
  create_resources(profiles::user, $users)

  # ensure sshd is installed and running
  package { $package:
    ensure => present,
    before => Service["$service"],
  }
  service { $service:
    ensure => running,
  }
}

