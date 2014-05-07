vagrant-skel
============

This is a repository consisting of vagrant and puppet configuration for 
multiple linux distributions and releases. 

The idea is to use these files as a skel when starting a new project that will
benefit from easy access to multiple distributions. The puppet configuration
will make sure that the repositories are configured, that a set tools and 
packages are getting installed and other things that can save you some time 
when starting a new project.

This repository will always be work in progress. Please submit pull requests.

Usage
-----

    git clone 
    cd vagrant-skel
    vagrant status
    
    # To build a new VM
    vagrant up <dist-arch>
    
    # To connect to the VM
    vagrant ssh <dist-arch>
    
    # To clean up
    vagrant destroy <dist-arch>

Supported distributions and releases
------------------------------------

| Distribution / Release     | amd64          | i386          |
| -------------------------- |:--------------:|:-------------:|
| Ubuntu Lucid               | YES            |               |
| Ubuntu Precise             | YES            | YES           |
| Ubuntu Trusty              | YES            | YES           |
| Debian Squeeze             | YES            |               |
| Debian Wheezy              | YES            | YES           |
| CentOS 5                   | YES            | YES           |
| CentOS 6                   | YES            | YES           |

