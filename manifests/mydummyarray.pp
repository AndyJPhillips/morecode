class mydummyarray () {
  $myarray = ["file1", "file2", "file3"]
  profiles::file { $myarray: }
  notice( "Hello Andy" )
}
