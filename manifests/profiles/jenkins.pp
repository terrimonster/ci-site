class ci::profiles::jenkins {
  include ::jenkins
  yumrepo { 'C6.2-extras':
    enabled  => '1',
    before => Class['java'],
  }
  yumrepo { 'C6.2-updates':
    enabled  => '1',
    before => Class['java'],
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
