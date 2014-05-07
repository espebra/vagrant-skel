class repository::el6 {

    file {
        '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 444,
            source  => '/vagrant/puppet/modules/repository/files/0608B895.txt',
            notify  => Exec['rpm-key EPEL-6'];
    }

    exec {
        'rpm-key EPEL-6':
            refreshonly => true,
            command     => 'rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
            path        => '/sbin:/bin:/usr/bin:/usr/sbin',
            user        => 'root';
    }

    yumrepo {
        'epel':
            descr      => 'Extra Packages for Enterprise Linux 6 - $basearch',
            mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch',
            enabled    => 1,
            gpgcheck   => 1,
            gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
            require    => Exec['rpm-key EPEL-6'];
        'varnish':
            descr      => 'Varnish 3.0 for Enterprise Linux el6 - $basearch',
            baseurl    => 'http://repo.varnish-cache.org/redhat/varnish-3.0/el6/$basearch',
            enabled    => 1,
            gpgcheck   => 0;
    }
}

