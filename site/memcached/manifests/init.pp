clas memcached { 

package { 'memcached':
  ensure => present,
}

file { '/etc/sysconfig/memcached.conf':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => 'puppet:///modules/memcached/memcached',
  require => Package['memcached'],
}

service { 'memcached':
  ensure    => running,
  enable    => true,
 }
 
 
}
