class roles::lampstack {
  include profiles::webserver
  include profiles::ssh
}
