class gradle{
exec {
  'gradle install':
    command =>"/etc/puppet/modules/gradle/files/gradle.sh",
    refreshonly => true, 
  }
}
