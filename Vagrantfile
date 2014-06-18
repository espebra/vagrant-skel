# -*- mode: ruby -*-
# vi: set ft=ruby :

def linux config, ip, box, box_url, checksum
  config.vm.define box.to_sym do |c|
    # Give the VM a public or private IP address. PS: By default, the vagrant
    # images are not secure to expose as they allow login with known keys and 
    # passwords.
    #c.vm.network :public_network
    c.vm.network :private_network, ip: ip

    # Sync another folder
    #c.vm.synced_folder "../", "/vagrant", owner: "root", group: "root"

    # Force the VM names instead of using generated ones. May cause problems
    # if running the same VM in different vagrant projects.
    #c.vm.provider :virtualbox do |v|
    #  v.customize ['modifyvm', :id, '--name', box.to_sym]
    #end

    # Remove comments if you'd like to checksum the images
    #c.vm.box_download_checksum_type = 'md5'
    #c.vm.box_download_checksum = checksum

    c.vm.box_url = box_url
    c.vm.box = box
    c.vm.hostname = '%s.local' % box.to_sym
    c.vm.boot_timeout = 900

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "init.pp"
      puppet.module_path  = "puppet/modules"
    end
  end
end

Vagrant.configure('2') do |config|
  linux config, '10.0.0.2', 'centos5-amd64', 'https://images.varnish-software.com/vagrant/centos-5-amd64-virtualbox.box', '59543c1516a73df2e9dd884c4cffbeed'
  linux config, '10.0.0.3', 'centos5-i386', 'https://images.varnish-software.com/vagrant/centos-5-i386-virtualbox.box', '0b76b2e6d008df87b9b67928463ac37e'
  linux config, '10.0.0.4', 'centos6-amd64', 'https://images.varnish-software.com/vagrant/centos-6-amd64-virtualbox.box', '98d830d0718af31c6a823a0b3d1ee8e0'
  linux config, '10.0.0.5', 'centos6-i386', 'https://images.varnish-software.com/vagrant/centos-6-i386-virtualbox.box', 'd58cd50dcf8833aeb9c15b8d6e0fef3b'
  linux config, '10.0.0.10', 'precise-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-12.04-amd64-virtualbox.box', 'b211b4dcb8bc60a45ea3317a706bb6b8'
  linux config, '10.0.0.11', 'precise-i386', 'https://images.varnish-software.com/vagrant/ubuntu-12.04-i386-virtualbox.box', 'ee0fa957b5ef4a03eb0220a73dd0cb49'
  linux config, '10.0.0.12', 'trusty-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-14.04-amd64-virtualbox.box', 'c5ce0e694d3de05300ebbe0dc65c624e'
  linux config, '10.0.0.13', 'trusty-i386', 'https://images.varnish-software.com/vagrant/ubuntu-14.04-i386-virtualbox.box', 'ba58bcbfbf6121b8bdc29d0c82870a39'
  linux config, '10.0.0.20', 'squeeze-amd64', 'https://images.varnish-software.com/vagrant/debian-6-amd64-virtualbox.box', 'dc90ff3a7c0944cd713fc9d6c7f42631'
  linux config, '10.0.0.21', 'squeeze-i386', 'https://images.varnish-software.com/vagrant/debian-6-i386-virtualbox.box', '2d6e1ab1e0d5db4196275f3f2eecc882'
  linux config, '10.0.0.22', 'wheezy-amd64', 'https://images.varnish-software.com/vagrant/debian-7-amd64-virtualbox.box', '5f2963d6d54f5da5dda06f25ddd35b5c'
  linux config, '10.0.0.23', 'wheezy-i386', 'https://images.varnish-software.com/vagrant/debian-7-i386-virtualbox.box', '0a9337426c2e97d9f53883cbbafadb49'
end


def freebsd config, ip, box, box_url, checksum
  config.vm.define box.to_sym do |c|
    c.vm.network :private_network, ip: ip
    c.vm.synced_folder ".", "/vagrant", :nfs => true, id: "vagrant-root"
    c.vm.box_url = box_url
    c.vm.box = box
    c.vm.hostname = '%s.local' % box.to_sym
    c.vm.boot_timeout = 900

    #config.vm.provision :puppet do |puppet|
    #  puppet.manifests_path = "puppet/manifests"
    #  puppet.manifest_file  = "init.pp"
    #  puppet.module_path  = "puppet/modules"
    #end
  end
end

Vagrant.configure('2') do |config|
  freebsd config, '10.0.0.30', 'freebsd10-amd64', 'https://images.varnish-software.com/vagrant/freebsd-10-amd64-virtualbox.box', 'abc01a675cfcff0a2c8eddefb17da013'
  freebsd config, '10.0.0.31', 'freebsd10-i386', 'https://images.varnish-software.com/vagrant/freebsd-10-i386-virtualbox.box', '92d549cc2ed2b34b6038f27fb1e165c0'
end

