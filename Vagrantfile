# -*- mode: ruby -*-
# vi: set ft=ruby :

def linux config, ip, box, hostname, box_url
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

    # Memory (MB) and CPU (vCPU) allocation
    c.vm.provider :virtualbox do |v|
      v.memory = 1024
      v.cpus = 2
    end

    c.vm.box_url = box_url
    c.vm.box = box
    c.vm.hostname = '%s.local' % hostname.to_sym
    c.vm.boot_timeout = 900

    # Useful when rebuilding image based on existing box
    # to not overwrite the insecure pubkey from:
    # https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
    #
    #c.ssh.insert_key = false

    #config.vm.provision :puppet do |puppet|
    #  puppet.manifests_path = "puppet/manifests"
    #  puppet.manifest_file  = "init.pp"
    #  puppet.module_path  = "puppet/modules"
    #end
  end
end

# hostname, ip, box, box_url, checksum
Vagrant.configure('2') do |config|
  linux config, '10.0.0.2',  'varnish/centos-5-amd64',     'centos-5-amd64',     'http://files.varnish-software.com/vagrant/centos-5-amd64.json'
  linux config, '10.0.0.4',  'varnish/centos-6-amd64',     'centos-6-amd64',     'http://files.varnish-software.com/vagrant/centos-6-amd64.json'
  linux config, '10.0.0.6',  'varnish/centos-7-amd64',     'centos-7-amd64',     'http://files.varnish-software.com/vagrant/centos-7-amd64.json'
  linux config, '10.0.0.7',  'varnish/centos-8-amd64',     'centos-8-amd64',     'http://files.varnish-software.com/vagrant/centos-8-amd64.json'
  linux config, '10.0.0.10', 'varnish/ubuntu-12.04-amd64', 'ubuntu-12.04-amd64', 'http://files.varnish-software.com/vagrant/ubuntu-12.04-amd64.json'
  linux config, '10.0.0.12', 'varnish/ubuntu-14.04-amd64', 'ubuntu-14.04-amd64', 'http://files.varnish-software.com/vagrant/ubuntu-14.04-amd64.json'
  linux config, '10.0.0.14', 'varnish/ubuntu-16.04-amd64', 'ubuntu-16.04-amd64', 'http://files.varnish-software.com/vagrant/ubuntu-16.04-amd64.json'
  linux config, '10.0.0.15', 'varnish/ubuntu-18.04-amd64', 'ubuntu-18.04-amd64', 'http://files.varnish-software.com/vagrant/ubuntu-18.04-amd64.json'
  linux config, '10.0.0.20', 'varnish/debian-6-amd64',     'debian-6-amd64',     'http://files.varnish-software.com/vagrant/debian-6-amd64.json'
  linux config, '10.0.0.22', 'varnish/debian-7-amd64',     'debian-7-amd64',     'http://files.varnish-software.com/vagrant/debian-7-amd64.json'
  linux config, '10.0.0.24', 'varnish/debian-8-amd64',     'debian-8-amd64',     'http://files.varnish-software.com/vagrant/debian-8-amd64.json'
  linux config, '10.0.0.25', 'varnish/debian-9-amd64',     'debian-9-amd64',     'http://files.varnish-software.com/vagrant/debian-9-amd64.json'
  linux config, '10.0.0.26', 'varnish/debian-10-amd64',    'debian-10-amd64',    'http://files.varnish-software.com/vagrant/debian-10-amd64.json'
  linux config, '10.0.0.40', 'varnish/sles-11-sp2-amd64',  'sles-11-sp2-amd64',  'http://files.varnish-software.com/vagrant/sles-11-sp2-amd64.json'
  linux config, '10.0.0.41', 'varnish/sles-11-sp4-amd64',  'sles-11-sp4-amd64',  'http://files.varnish-software.com/vagrant/sles-11-sp4-amd64.json'
  linux config, '10.0.0.42', 'varnish/sles-12-amd64',      'sles-12-amd64',      'http://files.varnish-software.com/vagrant/sles-12-amd64.json'
  linux config, '10.0.0.43', 'varnish/sles-12-sp3-amd64',  'sles-12-sp3-amd64',  'http://files.varnish-software.com/vagrant/sles-12-sp3-amd64.json'
# Uncomment below lines if you want to use i386 images
# Disabled by default to improve usability
#  linux config, '10.0.0.3',  'varnish/centos-5-i386',      'centos-5-i386',      'http://files.varnish-software.com/vagrant/centos-5-i386.json'
#  linux config, '10.0.0.5',  'varnish/centos-6-i386',      'centos-6-i386',      'http://files.varnish-software.com/vagrant/centos-6-i386.json'
#  linux config, '10.0.0.11', 'varnish/ubuntu-12.04-i386',  'ubuntu-12.04-i386',  'http://files.varnish-software.com/vagrant/ubuntu-12.04-i386.json'
#  linux config, '10.0.0.13', 'varnish/ubuntu-14.04-i386',  'ubuntu-14.04-i386',  'http://files.varnish-software.com/vagrant/ubuntu-14.04-i386.json'
#  linux config, '10.0.0.21', 'varnish/debian-6-i386',      'debian-6-i386',      'http://files.varnish-software.com/vagrant/debian-6-i386.json'
#  linux config, '10.0.0.23', 'varnish/debian-7-i386',      'debian-7-i386',      'http://files.varnish-software.com/vagrant/debian-7-i386.json'
end


def freebsd config, ip, box, hostname, box_url, checksum
  config.ssh.shell = "/bin/sh"
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
  freebsd config, '10.0.0.30', 'varnish/freebsd-10-amd64', 'freebsd-10-amd64', 'http://files.varnish-software.com/vagrant/freebsd-10-amd64-virtualbox.box', 'abc01a675cfcff0a2c8eddefb17da013'
# Uncomment below lines if you want to use the i386 image
# Disabled by default to improve usability
#  freebsd config, '10.0.0.31', 'varnish/freebsd-10-i386',  'freebsd-10-i386',  'http://files.varnish-software.com/vagrant/freebsd-10-i386-virtualbox.box',  '92d549cc2ed2b34b6038f27fb1e165c0'
end

