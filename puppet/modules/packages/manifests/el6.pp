class packages::el6 {

    $packages = [ 'perl-libwww-perl', 'strace', 'lsof', 'vim-enhanced', 
                  'emacs', 'rpm-build', 'automake', 'autoconf',
                  'rpmdevtools', 'rpmlint', 'rpm-devel', 'git', 'rst2pdf',
                  'pylint', 'python-nose', 'libtool', 'pcre-devel' ]

    package {
        $packages:
            ensure => installed;
    }
}

