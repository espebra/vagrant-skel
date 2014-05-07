class motd {

    case $lsbdistcodename {
        "precise": {
            $motd = "/etc/motd.tail"
        }
        default: {
            $motd = "/etc/motd"
        }
    }

    file {
        "$motd":
            ensure  => 'present',
            owner   => 'root',
            group   => 'root',
            mode    => 444,
            content => template('/vagrant/puppet/modules/motd/templates/motd.erb');
    }
}

