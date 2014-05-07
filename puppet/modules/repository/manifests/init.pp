class repository {
    case $osfamily {
        'RedHat': {
            if $operatingsystemrelease >= 5 and $operatingsystemrelease < 6 {
                include repository::el5
            }

            if $operatingsystemrelease >= 6 and $operatingsystemrelease < 7 {
                include repository::el6
            }
        }
        'Debian': {
            case $lsbdistcodename {
                'precise': {
                    include repository::precise
                }
                'trusty': {
                    include repository::trusty
                }
                'lucid': {
                    include repository::lucid
                }
                'squeeze': {
                    include repository::squeeze
                }
                'wheezy': {
                    include repository::wheezy
                }
            }
        }
        'Suse': {
            if $operatingsystemrelease >= 11 and $operatingsystemrelease < 12 {
                include repository::sles11
            }
        }
    }
}

