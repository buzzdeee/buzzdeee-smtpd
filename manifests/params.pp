class smtpd::params {
  $listen_on  = 'lo0'
  $relay_via  = undef
  $aliases    = undef
  $aliases_db = '/etc/aliases'
  $service_enable = true
  $service_ensure = 'running'
}
