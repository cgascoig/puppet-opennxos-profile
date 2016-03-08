class profile::base

{
  # include ciscopuppet

  package { 'cisco_node_utils' :
    ensure    => present,
    provider  => 'puppet_gem',
  }
  
  ntp_server {'10.66.141.50':
      ensure => present,
    }

  syslog_server {'10.67.28.129':
    ensure  => present,
  }
  
  cisco_interface {'Ethernet1/20':
    ensure          => present,
    description     => 'access VLAN 101',
    access_vlan     => '101',
    switchport_mode => 'access',
  }
}