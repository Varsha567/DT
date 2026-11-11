package { 'apache2':
  ensure => installed,
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World! Configured using Puppet.',
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => Package['apache2'],
}
