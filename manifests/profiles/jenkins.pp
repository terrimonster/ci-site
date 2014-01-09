class ci::profiles::jenkins {
  include ::jenkins
  class { 'java':
    distribution => 'jre',
    version      => 'latest',
    before       => Class['jenkins'],
  }
  firewall { '100 allow jenkins access':
    port   => '8080',
    proto  => 'tcp',
    action => 'accept',
  }
}
