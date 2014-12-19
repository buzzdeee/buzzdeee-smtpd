# == Class: smtpd
#
# Full description of class smtpd here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'smtpd':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class smtpd (
  $listen_on  = $smtpd::params::listen_on,
  $relay_via  = $smtpd::params::relay_via,
  $aliases    = $smtpd::params::aliases,
  $aliases_db = $smtpd::params::aliases_db,
) inherits smtpd::params {

  class { 'smtpd::config':
    listen_on  => $listen_on,
    relay_via  => $relay_via,
    aliases    => $aliases,
    aliases_db => $aliases_db,
  }
}
