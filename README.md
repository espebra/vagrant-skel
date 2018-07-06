Vagrant Skeleton
================

This is a repository consisting of vagrant configuration for multiple
distributions and releases. 

This repository will always be work in progress. Please submit pull requests.

Usage
-----

    git clone 
    cd vagrant-skel
 
    # See the status of the VMs
    vagrant status

    # To build all VMs (will take a long time)
    vagrant up
    
    # To build a specific VM
    vagrant up <dist-arch>
    
    # To connect to a VM
    vagrant ssh <dist-arch>
    
    # To clean up everything
    vagrant destroy

    # To clean up one specific VM
    vagrant destroy <dist-arch>

Supported distributions and releases
------------------------------------

The i386 images are not very well maintained, and lag behind in versions.
As they are generally not frequently used, they are commented out in the
current Vagrantfile version, and need to be manually enabled.

| Distribution / Release     | amd64          | i386          |
| -------------------------- |:--------------:|:-------------:|
| Ubuntu Precise             | X              | X             |
| Ubuntu Trusty              | X              | X             |
| Ubuntu Xenial              | X              |               |
| Ubuntu Bionic              | X              |               |
| Debian Squeeze             | X              | X             |
| Debian Wheezy              | X              | X             |
| Debian Jessie              | X              |               |
| Debian Stretch             | X              |               |
| CentOS 5                   | X              | X             |
| CentOS 6                   | X              | X             |
| CentOS 7                   | X              |               |
| FreeBSD 10                 | X              | X             |
| SLES 11                    | X              |               |
| SLES 12                    | X              |               |
