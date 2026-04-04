# 0-strace_is_your_friend.pp
# Installs Apache and fixes WordPress configuration for Holberton page

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
exec { 'fix-wordpress-config':
  command => 'mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php',
  onlyif  => 'test -f /var/www/html/wp-config-sample.php',
  path    => ['/bin', '/usr/bin'],
}

# Fix ownership for all web files
file { '/var/www/html':
  ensure  => directory,
  recurse => true,
  owner   => 'www-data',
  group   => 'www-data',
}
