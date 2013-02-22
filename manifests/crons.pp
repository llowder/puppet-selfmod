# Sets up some cron entries
class selfmod::crons{
  cron {
    'set_normal_state':
      ensure   => present,
      minute   => $selfmod::cron_s_min,
      hour     => $selfmod::cron_s_hr,
      month    => $selfmod::cron_s_month,
      monthday => $selfmod::cron_s_monthday,
      weekday  => $selfmod::cron_s_weekday,
      command  => "`/usr/bin/which puppet` apply /usr/local/share/selfmod/${selfmod::normal_state}",
      user     => $selfmod::cron_user;
    'set_temp_state':
      ensure   => present,
      minute   => $selfmod::cron_e_min,
      hour     => $selfmod::cron_e_hr,
      month    => $selfmod::cron_e_month,
      monthday => $selfmod::cron_e_monthday,
      weekday  => $selfmod::cron_e_weekday,
      command  => "`/usr/bin/which puppet` apply /usr/local/share/selfmod/${selfmod::temp_state}",
      user     => $selfmod::cron_user;
  }
}