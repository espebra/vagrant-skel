class packages {
    case $osfamily {
        'RedHat': {
            if $operatingsystemrelease >= 5 and $operatingsystemrelease < 6 {
                include packages::el5
            }

            if $operatingsystemrelease >= 6 and $operatingsystemrelease < 7 {
                include packages::el6
            }
        }
        'Debian': {
            case $lsbdistcodename {
                'precise': {
                    include packages::precise
                }
                'trusty': {
                    include packages::trusty
                }
                'lucid': {
                    include packages::lucid
                }
                'squeeze': {
                    include packages::squeeze
                }
                'wheezy': {
                    include packages::wheezy
                }
            }
        }
        'Suse': {
            if $operatingsystemrelease >= 11 and $operatingsystemrelease < 12 {
                include packages::sles11
            }
        }
    }
}

