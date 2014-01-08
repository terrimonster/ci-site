class ci {
  case $::osfamily {
    'redhat': {}
    default: {fail("OS family ${::osfamily} not supported by ${module_name}")}
  }
}
