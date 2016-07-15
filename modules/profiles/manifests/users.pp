define profiles::users ($ensure, $password, $home) {
  $username = $title
  if $ensure == 'present' { 
    user { $username: 
      ensure => present,   
      password => $password,
    }
    file { "/home/$username":
      ensure => directory
    }
  }    
  elsif $ensure == 'absent' {
    user { $username:  
      ensure => absent,
    }
    file { "/home/$username":
      ensure => absent,
    }
  }
  else {
    warning( 'The value of the ensure parameter for the profiles::users type must be either present or absent.' )
  }
}

