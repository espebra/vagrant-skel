# -*- mode: ruby -*-
# vi: set ft=ruby :

def vm config, ip, box, box_url
  config.vm.define box.to_sym do |c|
    c.vm.box_url = box_url
    c.vm.box = box
    c.vm.hostname = '%s.local' % box.to_sym
    c.vm.boot_timeout = 900

    # Give the VM a public IP address instead of the private one specified 
    # below.
    #c.vm.network :public_network
    c.vm.network :private_network, ip: ip

    # Sync another folder
    #c.vm.synced_folder "../", "/vagrant", owner: "root", group: "root"

    # Force the VM names instead of using generated ones. May cause problems
    # if running the same VM in different vagrant projects.
    #c.vm.provider :virtualbox do |v|
    #  v.customize ['modifyvm', :id, '--name', box.to_sym]
    #end

    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file  = "init.pp"
      puppet.module_path  = "puppet/modules"
    end
  end
end

Vagrant.configure('2') do |config|
  vm config, '10.0.0.2', 'lucid-amd64', 'http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-10044-x64-vbox4210.box'
  vm config, '10.0.0.4', 'precise-amd64', 'https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box'
  vm config, '10.0.0.5', 'precise-i386', 'https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box'
  vm config, '10.0.0.6', 'trusty-amd64', 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
  vm config, '10.0.0.7', 'trusty-i386', 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box'
  vm config, '10.0.0.20', 'centos5-amd64', 'http://puppet-vagrant-boxes.puppetlabs.com/centos-59-x64-vbox4210.box'
  vm config, '10.0.0.21', 'centos5-i386', 'http://puppet-vagrant-boxes.puppetlabs.com/centos-510-i386-virtualbox-puppet.box'
  vm config, '10.0.0.22', 'centos6-amd64', 'http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box'
  vm config, '10.0.0.23', 'centos6-i386', 'http://puppet-vagrant-boxes.puppetlabs.com/centos-65-i386-virtualbox-puppet.box'
  vm config, '10.0.0.40', 'squeeze-amd64', 'http://puppet-vagrant-boxes.puppetlabs.com/debian-607-x64-vbox4210.box'
  vm config, '10.0.0.42', 'wheezy-amd64', 'http://puppet-vagrant-boxes.puppetlabs.com/debian-70rc1-x64-vbox4210.box'
  vm config, '10.0.0.43', 'wheezy-i386', 'http://puppet-vagrant-boxes.puppetlabs.com/debian-73-i386-virtualbox-puppet.box'
end
