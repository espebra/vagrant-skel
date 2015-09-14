# -*- mode: ruby -*-
# vi: set ft=ruby :

def linux config, ip, box, hostname, box_url, checksum
  config.vm.define hostname.to_sym do |c|
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
    c.vm.hostname = '%s.local' % hostname.to_sym
    c.vm.boot_timeout = 900

    #config.vm.provision :puppet do |puppet|
    #  puppet.manifests_path = "puppet/manifests"
    #  puppet.manifest_file  = "init.pp"
    #  puppet.module_path  = "puppet/modules"
    #end
  end
end

# hostname, ip, box, box_url, checksum
Vagrant.configure('2') do |config|
  linux config, '10.0.0.2',  'varnish/centos-5-amd64',     'centos-5-amd64',     'https://images.varnish-software.com/vagrant/centos-5-amd64-virtualbox.box',   '1981255ec30f9f6499e0be90dc25d435'
  linux config, '10.0.0.3',  'varnish/centos-5-i386',      'centos-5-i386',      'https://images.varnish-software.com/vagrant/centos-5-i386-virtualbox.box',    'c17f4c1c0e87c056d20887cde4d9640a'
  linux config, '10.0.0.4',  'varnish/centos-6-amd64',     'centos-6-amd64',     'https://images.varnish-software.com/vagrant/centos-6-amd64.json',             'md5sum is in json file'
  linux config, '10.0.0.5',  'varnish/centos-6-i386',      'centos-6-i386',      'https://images.varnish-software.com/vagrant/centos-6-i386-virtualbox.box',    '3799f126d0326f4ae00604d9ccb181a3'
  linux config, '10.0.0.6',  'varnish/centos-7-amd64',     'centos-7-amd64',     'https://images.varnish-software.com/vagrant/centos-7-amd64.json',             'md5sum is in json file'
  linux config, '10.0.0.10', 'varnish/ubuntu-12.04-amd64', 'ubuntu-12.04-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-12.04-amd64.json',         'md5sum is in json file'
  linux config, '10.0.0.11', 'varnish/ubuntu-12.04-i386',  'ubuntu-12.04-i386',  'https://images.varnish-software.com/vagrant/ubuntu-12.04-i386-virtualbox.box','ee0fa957b5ef4a03eb0220a73dd0cb49'
  linux config, '10.0.0.12', 'varnish/ubuntu-14.04-amd64', 'ubuntu-14.04-amd64', 'https://images.varnish-software.com/vagrant/ubuntu-14.04-amd64.json',         'md5sum is in json file'
  linux config, '10.0.0.13', 'varnish/ubuntu-14.04-i386',  'ubuntu-14.04-i386',  'https://images.varnish-software.com/vagrant/ubuntu-14.04-i386-virtualbox.box','ba58bcbfbf6121b8bdc29d0c82870a39'
  linux config, '10.0.0.20', 'varnish/debian-6-amd64',     'debian-6-amd64',     'https://images.varnish-software.com/vagrant/debian-6-amd64-virtualbox.box',   'dc90ff3a7c0944cd713fc9d6c7f42631'
  linux config, '10.0.0.21', 'varnish/debian-6-i386',      'debian-6-i386',      'https://images.varnish-software.com/vagrant/debian-6-i386-virtualbox.box',    '2d6e1ab1e0d5db4196275f3f2eecc882'
  linux config, '10.0.0.22', 'varnish/debian-7-amd64',     'debian-7-amd64',     'https://images.varnish-software.com/vagrant/debian-7-amd64.json',             'md5sum is in json file'
  linux config, '10.0.0.23', 'varnish/debian-7-i386',      'debian-7-i386',      'https://images.varnish-software.com/vagrant/debian-7-i386-virtualbox.box',    '0a9337426c2e97d9f53883cbbafadb49'
  linux config, '10.0.0.24', 'varnish/debian-8-amd64',     'debian-8-amd64',     'https://images.varnish-software.com/vagrant/debian-8-amd64.json',             'md5sum is in json file'
end


def freebsd config, ip, box, hostname, box_url, checksum
  config.vm.define hostname.to_sym do |c|
    c.vm.network :private_network, ip: ip
    c.vm.synced_folder ".", "/vagrant", :nfs => true, id: "vagrant-root"
    c.vm.box_url = box_url
    c.vm.box = box
    c.vm.hostname = '%s.local' % hostname.to_sym
    c.vm.boot_timeout = 900

    #config.vm.provision :puppet do |puppet|
    #  puppet.manifests_path = "puppet/manifests"
    #  puppet.manifest_file  = "init.pp"
    #  puppet.module_path  = "puppet/modules"
    #end
  end
end

Vagrant.configure('2') do |config|
  freebsd config, '10.0.0.30', 'varnish/freebsd-10-amd64', 'freebsd-10-amd64', 'https://images.varnish-software.com/vagrant/freebsd-10-amd64-virtualbox.box', 'abc01a675cfcff0a2c8eddefb17da013'
  freebsd config, '10.0.0.31', 'varnish/freebsd-10-i386',  'freebsd-10-i386',  'https://images.varnish-software.com/vagrant/freebsd-10-i386-virtualbox.box',  '92d549cc2ed2b34b6038f27fb1e165c0'
end

