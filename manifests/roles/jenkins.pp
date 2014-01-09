class ci::roles::jenkins {
  include ci::profiles::jenkins
  include ci::profiles::ntp
}
