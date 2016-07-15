class profiles::apache {
  include ::apache
  include ::apache::mod::php

  file {'/var/www/html/phpinfo.php':
    ensure => file,
    source => 'puppet:///modules/profiles/phpinfo.php',
    mode => '0644',
  }
}
