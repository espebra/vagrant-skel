class puppet {
    file {
        '/usr/local/sbin/puppetrun':
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 555,
            source  => '/vagrant/puppet/modules/puppet/files/puppetrun';
    }
}

