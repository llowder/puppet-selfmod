#
class selfmod::params{
  $cron_s_min      = '55'
  $cron_s_hr       = '23'
  $cron_s_month    = '*'
  $cron_s_monthday = '*'
  $cron_s_weekday  = '*'
  $cron_e_min      = '55'
  $cron_e_hr       = '03'
  $cron_e_month    = '*'
  $cron_e_monthday = '*'
  $cron_e_weekday  = '*'
  $cron_user       = 'root'
  $normal_state    = 'selfmod/normal.pp'
  $temp_state      = 'selfmod/temp.pp'
  
}