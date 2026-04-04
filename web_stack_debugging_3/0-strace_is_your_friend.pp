# Install Apache if missing
package { 'apache2':
  ensure => installed,
}

# Ensure Apache is running
service { 'apache2':
  ensure => running,
  enable => true,
  require => Package['apache2'],
}
