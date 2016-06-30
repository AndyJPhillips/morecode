class profiles::ssh {
  # Setup user for sshd
  user { 'myapp':
    ensure => present,
    password => "$6$saltsalt$t6Sww7xOSuip49dTO/RgRxQPbz0kisV1S6M2LfQzIKHUJFk4sHJTacAGek7KWOBYPp1WVeZmsKWzykEmiwJCI.",
    home => "/home/myapp",
  }
  file { '/home/myapp':
    ensure => directory,
    owner => 'myapp',
    require => User['myapp'],
  }
  # ensure sshd is installed and running
  # check to see whether the OS family is RedHat
  case $::osfamily {
    'RedHat': {
      $package = 'openssh-server'
      $service = 'sshd'
    }
    default: {
      notify { "Unsupported OS family!\n": }
    }
  }
  package { $package:
    ensure => present,
  }
  service { $service:
    ensure => running,
  }
}

