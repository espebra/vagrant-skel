class packages::wheezy {

    $packages = [ 'libwww-perl', 'strace', 'lsof', 'vim', 'automake',
        'emacs', 'build-essential', 'devscripts', 'debhelper', 'libtool', 
        'git', 'pylint', 'python-nose', 'apt-transport-https', 'pkg-config',
        'rst2pdf', 'curl' ]
    
    package {
        $packages:
            ensure => installed;
    }
}

