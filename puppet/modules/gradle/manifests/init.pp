class gradle{
 file {
    'gradle_script':
      ensure => 'file',
      source => 'puppet:///modules/gradle/gradle.sh',
      path => '/opt/gradle.sh',
      owner => 'root',
      group => 'root',
      mode  => '0744', # Use 0700 if it is sensitive
      notify => Exec['gradle install'],
  }
exec {
  'gradle install':
    command => "/opt/gradle.sh",
    refreshonly => true; 
  }
}
