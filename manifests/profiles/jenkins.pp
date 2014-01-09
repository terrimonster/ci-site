class ci::profiles::jenkins {
  include ::jenkins
  yumrepo { 'extras':
    enabled  => '1',
  }
  yumrepo { 'updates':
    enabled  => '1',
  }
  class { 'java':
    distribution => 'jdk',
    version      => 'latest',
    before       => Class['jenkins'],
  }
  firewall { '100 allow jenkins access':
    port   => '8080',
    proto  => 'tcp',
    action => 'accept',
  }
}
