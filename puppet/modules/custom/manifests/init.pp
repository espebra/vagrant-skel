class custom {
    exec {
        "/vagrant/init.d/init ; touch /var/tmp/init":
            path    => "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin",
            onlyif  => "test -x /vagrant/init.d/init",
            creates => "/var/tmp/init";
        "/vagrant/init.d/init.${operatingsystem} ; touch /var/tmp/init.${operatingsystem}":
            path    => "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin",
            onlyif  => "test -x /vagrant/init.d/init.${operatingsystem}",
            creates => "/var/tmp/init.${operatingsystem}";
        "/vagrant/init.d/init.${lsbdistcodename} ; touch /var/tmp/init.${lsbdistcodename}":
            path    => "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin",
            onlyif  => "test -x /vagrant/init.d/init.${lsbdistcodename}",
            creates => "/var/tmp/init.${lsbdistcodename}";
        "/vagrant/init.d/init.${hostname} ; touch /var/tmp/init.${hostname}":
            path    => "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin",
            onlyif  => "test -x /vagrant/init.d/init.${hostname}",
            creates => "/var/tmp/init.${hostname}";
    }
}

