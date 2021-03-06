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

  vcsrepo { '/root':
    ensure   => present,
    provider => git,
    source   => 'git@github.com:andrewso726/homedir.git',
  }
}
