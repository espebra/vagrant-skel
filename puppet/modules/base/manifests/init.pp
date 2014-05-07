class base {
    file {
        '/etc/resolv.conf':
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 444,
            source  => '/vagrant/puppet/modules/base/files/resolv.conf';
    }
}

