class profiles::mysql {
  include ::mysql::server

  mysql::db { 'myapp':
    user     => 'myuser',
    password => 'mypass',
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
  }
}
