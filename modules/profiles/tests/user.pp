profiles::user { myuser:
  ensure => present,
  password => mybigoldpasswordhash,
  home => /home/myuser,
}
