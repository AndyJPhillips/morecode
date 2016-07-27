define profiles::file ($file = $title) {
  file {"/var/tmp/puppet-test/$file":
    ensure => present,
  }
}
