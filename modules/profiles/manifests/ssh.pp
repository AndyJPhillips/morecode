class profiles::ssh (
  $users = hiera('users'),
  $package = hiera('package'),
  $service = hiera('service'),
) {
  # Setup users for sshd
  create_resources(profiles::users, $users)

  # ensure sshd is installed and running
  package { $package:
    ensure => present,
    before => Service["$service"],
  }
  service { $service:
    ensure => running,
  }
}

