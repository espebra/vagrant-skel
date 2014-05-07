class misc {

    file {
        '/etc/profile.d/path.sh':
            ensure  => present,
            mode    => 555,
            content => "export PATH=\"\$PATH:/vagrant/sbin/\"\n";
    }

}

