class custom {
    Exec {
        path      => "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin",
        logoutput => true,
        timeout   => 900,
    }
    exec {
        "/vagrant/init.d/init ; touch /var/tmp/init":
            onlyif  => "test -x /vagrant/init.d/init",
            creates => "/var/tmp/init";
        "/vagrant/init.d/init.${operatingsystem} ; touch /var/tmp/init.${operatingsystem}":
            onlyif  => "test -x /vagrant/init.d/init.${operatingsystem}",
            creates => "/var/tmp/init.${operatingsystem}";
        "/vagrant/init.d/init.${lsbdistcodename} ; touch /var/tmp/init.${lsbdistcodename}":
            onlyif  => "test -x /vagrant/init.d/init.${lsbdistcodename}",
            creates => "/var/tmp/init.${lsbdistcodename}";
        "/vagrant/init.d/init.${hostname} ; touch /var/tmp/init.${hostname}":
            onlyif  => "test -x /vagrant/init.d/init.${hostname}",
            creates => "/var/tmp/init.${hostname}";
    }
}

