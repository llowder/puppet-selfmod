# Sets up some files needed by cron
class selfmod::files{
  file{
    '/usr/local/share/selfmod':
      ensure => directory,
      mode   => '0600',
      owner  => $selfmod::cron_user;
    'normal_state':
      ensure => file,
      path   => "/usr/local/share/selfmod/${$selfmod::normal_state}",
      mode   => '0600',
      owner  => $selfmod::cron_user,
      content => template("${selfmod::normal_state}.pp"),
      require => File[ '/usr/local/share/selfmod' ];
    'temp_state':
      ensure => file,
      path   => "/usr/local/share/selfmod/${selfmod::temp_state}",
      mode   => '0600',
      owner  => $selfmod::cron_user,
      content => template("${selfmod::temp_state}.pp"),
      require => File[ '/usr/local/share/selfmod' ];
  }
}