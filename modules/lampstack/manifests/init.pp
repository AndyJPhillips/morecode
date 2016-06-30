class lampstack {
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
}

