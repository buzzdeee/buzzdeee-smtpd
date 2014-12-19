class smtpd::service (
  $service_ensure,
  $service_enable,
) {
  service { 'smtpd':
    ensure => $service_ensure,
    enable => $service_enable,
  }
}
