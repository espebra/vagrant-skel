class repository::el5 {

    file {
        '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL':
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 444,
            source  => '/vagrant/puppet/modules/repository/files/217521F6.txt',
            notify  => Exec['rpm-key EPEL'];
    }

    exec {
        'rpm-key EPEL':
            refreshonly => true,
            command     => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL',
            path        => '/sbin:/bin:/usr/bin:/usr/sbin',
            user        => 'root';
    }

    yumrepo {
        'epel':
            descr      => 'Extra Packages for Enterprise Linux 5 - $basearch',
            mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=$basearch',
            enabled    => 1,
            gpgcheck   => 1,
            gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL',
            require    => Exec['rpm-key EPEL'];
    }
}

