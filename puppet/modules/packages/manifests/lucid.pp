class packages::lucid {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 
        'emacs', 'build-essential', 'devscripts', 'debhelper', 
        'git-core', 'pylint', 'python-nose', 'apt-transport-https' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

