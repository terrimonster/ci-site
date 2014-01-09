class ci::profiles::jenkins {
  # Classify all nodes with the site specific jenkins class.
  class { 'jenkins': }
  group {
    'puppet' :
      ensure => present;
  }

  jenkins::plugin {
    'git' : ;
  }
  class { 'java':
    distribution => 'jre',
    version      => 'latest',
  }
  firewall { '100 allow jenkins access':
    port   => '8080',
    proto  => 'tcp',
    action => 'accept',
  }
}
