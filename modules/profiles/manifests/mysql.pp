class profiles::mysql (
  $dbuser = hiera('dbuser'),
  $dbname = hiera('dbname'),
  $dbpass = hiera('dbpass'),
  $dbhost = hiera('dbhost'),
) {

  include ::mysql::server
  mysql::db { "$dbname":
    user     => "$dbuser",
    password => "$dbpass",
    host     => "$dbhost",
    grant    => ['SELECT', 'UPDATE'],
  }
}
