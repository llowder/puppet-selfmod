# Class: selfmod

class selfmod (
  $cron_s_min      = $selfmod::params::cron_s_min,
  $cron_s_hr       = $selfmod::params::cron_s_hr,
  $cron_s_month    = $selfmod::params::cron_s_month,
  $cron_s_monthday = $selfmod::params::cron_s_monthday,
  $cron_s_weekday  = $selfmod::params::cron_s_weekday,
  $cron_e_min      = $selfmod::params::cron_s_weekday,
  $cron_e_hr       = $selfmod::params::cron_e_hr,
  $cron_e_month    = $selfmod::params::cron_e_month,
  $cron_e_monthday = $selfmod::params::cron_e_monthday,
  $cron_e_weekday  = $selfmod::params::cron_e_weekday,
  $cron_user       = $selfmod::params::cron_user,
  $normal_state    = $selfmod::params::normal_state,
  $temp_state      = $selfmod::params::temp_state,
  
) {
  class { 'selfmod::params': } ->
  class { 'selfmod::files':  } ->
  class { 'selfmod::crons':  } ->
  Class [ 'selfmod' ]
}
