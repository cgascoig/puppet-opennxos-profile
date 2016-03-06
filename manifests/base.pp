class profile::base

{
  # include ciscopuppet

  package { 'cisco_node_utils' :
    provider => 'puppet_gem',
    ensure => present,
  }
  
  ntp_server {'10.66.141.50':
      ensure => present,
    }

  syslog_server {'10.67.28.129':
		ensure  => absent,	
	}
}