class lampstack {
  user { 'myapp':
    ensure => present,
    password => "$1$ui.Xf.ZN$Z1AgeueqVKSZx5EK2auvA0",
  }
}

