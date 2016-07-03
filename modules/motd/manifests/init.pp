class motd (
  $message = hiera('message'),
) {
  file { '/etc/motd':
    ensure => file,
    content => $message,
  }
}
    
