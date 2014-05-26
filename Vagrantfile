# -*- mode: ruby -*-
# vi: set ft=ruby :

def vm config, ip, box, box_url, checksum
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
  vm config, '10.0.0.2', 'centos5-amd64', 'https://images.varnish-software.com/vagrant/centos-5-amd64-virtualbox.box', '59543c1516a73df2e9dd884c4cffbeed'
  vm config, '10.0.0.3', 'centos5-i386', 'https://images.varnish-software.com/vagrant/centos-5-i386-virtualbox.box', '0b76b2e6d008df87b9b67928463ac37e'
  vm config, '10.0.0.4', 'centos6-amd64', 'https://images.varnish-software.com/vagrant/centos-6-amd64-virtualbox.box', '98d830d0718af31c6a823a0b3d1ee8e0'
  vm config, '10.0.0.5', 'centos6-i386', 'https://images.varnish-software.com/vagrant/centos-6-i386-virtualbox.box', 'd58cd50dcf8833aeb9c15b8d6e0fef3b'
  vm config, '10.0.0.10', 'precise-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-12.04-amd64-virtualbox.box', '88e6afabe69b3f6a4910cae04466e596'
  vm config, '10.0.0.11', 'precise-i386', 'https://images.varnish-software.com/vagrant/ubuntu-12.04-i386-virtualbox.box', 'cfa321470108d816c7fb654a38a97baf'
  vm config, '10.0.0.12', 'trusty-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-14.04-amd64-virtualbox.box', 'bebba30fa548cb6d03149ab98c076260'
  vm config, '10.0.0.13', 'trusty-i386', 'https://images.varnish-software.com/vagrant/ubuntu-14.04-i386-virtualbox.box', '72d503a663f116a734a563a2f42c9749'
  vm config, '10.0.0.20', 'squeeze-amd64', 'https://images.varnish-software.com/vagrant/debian-6-amd64-virtualbox.box', 'dc90ff3a7c0944cd713fc9d6c7f42631'
  vm config, '10.0.0.21', 'squeeze-i386', 'https://images.varnish-software.com/vagrant/debian-6-i386-virtualbox.box', '2d6e1ab1e0d5db4196275f3f2eecc882'
  vm config, '10.0.0.22', 'wheezy-amd64', 'https://images.varnish-software.com/vagrant/debian-7-amd64-virtualbox.box', '5f2963d6d54f5da5dda06f25ddd35b5c'
  vm config, '10.0.0.23', 'wheezy-i386', 'https://images.varnish-software.com/vagrant/debian-7-i386-virtualbox.box', '0a9337426c2e97d9f53883cbbafadb49'
end
