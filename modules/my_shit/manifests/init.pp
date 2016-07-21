class my_shit {

  $default_pkgs = ['git',
                   'vim',
                   'nginx']

  package { $default_pkgs: 
    ensure => present,
  }

  package { 'puppet':
    ensure => '3.4.3-1ubuntu1.1',
  }
}
