class packages::trusty {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 'curl',
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git', 'pylint', 'python-nose', 'apt-transport-https' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

