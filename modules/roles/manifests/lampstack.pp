class roles::lampstack {
  include profiles::webserver
  include profiles::ssh
  include profiles::mysql
}
