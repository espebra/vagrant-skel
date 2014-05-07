class repository::precise {
    file {
        '/etc/apt/sources.list':
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 444,
            source  => "/vagrant/puppet/modules/repository/files/sources.list.${lsbdistcodename}",
            notify  => Exec['apt-get update'];
    }

    exec {
        'apt-get update':
            refreshonly => true,
            command     => 'apt-get update',
            path        => '/sbin:/bin:/usr/bin:/usr/sbin',
            user        => 'root';
    }
}

