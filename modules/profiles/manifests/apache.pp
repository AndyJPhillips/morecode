class profiles::apache {
  include ::apache
  include ::apache::mod::php

  file {'/var/www/html/phpinfo.php':
    ensure => file,
    source => 'puppet:///modules/php/phpinfo.php',
    mode => '0644',
  }
}
