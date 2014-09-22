class packages::trusty {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 'curl',
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git', 'pylint', 'python-nose', 'apt-transport-https', 'libtool',
        'autoconf', 'libpcre3-dev', 'pkg-config', 'm4', 'libreadline-dev',
        'python-docutils' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

