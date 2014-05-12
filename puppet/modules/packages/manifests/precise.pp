class packages::precise {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git', 'pylint', 'python-nose', 'apt-transport-https', 'pkg-config',
        'libtool', 'automake' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

