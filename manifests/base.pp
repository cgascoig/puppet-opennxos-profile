class profile::base

{
  include ciscopuppet
  
  ntp_server {'ntp.esl.cisco.com':
      ensure => present,
    }
}