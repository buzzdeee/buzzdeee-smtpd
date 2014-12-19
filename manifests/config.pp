class smtpd::config (
  $listen_on,
  $relay_via,
  $aliases,
  $aliases_db,
){

  file { '/etc/mail/smtpd.conf':
    owner   => 'root',
    group   => '0',
    mode    => '0644',
    content => template('smtpd/smtpd.conf.erb'),
  }  
  
  if $aliases {
    create_resources(mailalias, $aliases)
  }

}
