class packages::precise {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git', 'pylint', 'python-nose', 'apt-transport-https', 'pkg-config',
        'libtool', 'automake', 'python-docutils', 'libncurses5-dev', 
        ''libpcre3-dev' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

