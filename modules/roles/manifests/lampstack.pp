class roles::lampstack {
  include profiles::apache
  include profiles::ssh
  include profiles::mysql
}
