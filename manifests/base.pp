class profile::base

{
  package { 'cisco_node_utils' :
    provider => 'gem',
    ensure => present,
  }
  
  ntp_server {'ntp.esl.cisco.com':
      ensure => present,
    }
}