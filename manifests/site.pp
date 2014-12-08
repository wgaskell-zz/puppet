node default {
    notify {"Helloworld":}
    #package {'apache2':
    #  ensure => present,
    #}

    class { 'mysql::server':
      root_password => '1234qwer',
    }

    mysql::db { 'data_base':
    user     => '1020198',
    password => 'wayne2013',
    host     => 'localhost',
    grant    => ['all'],
    charset => 'utf8',
    require => File['/root/.my.cnf'],

    }
    include jenkins
    include phpmyadmin
}
