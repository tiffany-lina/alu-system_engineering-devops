# Install Apache
package { 'apache2':
  ensure => installed,
}

# Ensure Apache is running
service { 'apache2':
  ensure => running,
  enable => true,
  require => Package['apache2'],
}

# Fix WordPress config if missing
exec { 'fix-wordpress':
  command => 'mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php',
  onlyif  => 'test -f /var/www/html/wp-config-sample.php',
  path    => ['/bin', '/usr/bin'],
}

# Ensure web files are owned by www-data
file { '/var/www/html':
  ensure  => directory,
  recurse => true,
  owner   => 'www-data',
  group   => 'www-data',
}
