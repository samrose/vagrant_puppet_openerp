class python {

  package { 'python-virtualenv': ensure => installed }
  package { 'python-dev' : ensure => installed }
}
