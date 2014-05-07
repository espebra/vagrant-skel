class packages::squeeze {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git', 'pylint', 'python-nose' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

