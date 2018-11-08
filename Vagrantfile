# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.7.0"

require_relative './test/key_authorization'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.ssh.insert_key = false
  authorize_key config, '~/.vagrant.d/insecure_private_key'

  config.vm.define 'master' do |host|
    host.vm.network 'private_network', ip: '192.168.33.2'
    host.vm.hostname = "master.hq.dev"
    host.vm.provider "virtualbox" do |v|
      v.memory = 768
      v.cpus = 1
    end
    host.vm.provision "shell", path: "test/control.sh"
  end

  {
    'client1'   => '192.168.33.3',
    'client2'   => '192.168.33.4',
  }.each do |short_name, ip|
    config.vm.define short_name do |host|
      host.vm.network 'private_network', ip: ip
      host.vm.hostname = "#{short_name}.hq.dev"
      host.vm.provider "virtualbox" do |v|
        v.memory = 768
        v.cpus = 1
      end
    end
  end
end
