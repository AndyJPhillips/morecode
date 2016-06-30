node 'puppetmaster.local' {
  class { 'puppetdb::globals':
    version => '2.3.7-1.el7',
  }
  class { 'puppetdb':
    listen_address => '0.0.0.0',
  }
  class { 'puppetdb::master::config':}
}

node 'puppetagent.local' {
  include roles::lampstack
}
