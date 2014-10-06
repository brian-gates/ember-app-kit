# This is very experimental and only sometimes working.

# -*- mode: ruby -*-
# vi: set ft=ruby :

# This is still just a PoC

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure(2) do |config|

  config.vm.provider "docker" do |d|
    # Use a custom VM so we can reconfigure port forwarding and memory: https://github.com/mitchellh/vagrant/issues/3728
    # Not required for linux systems which support docker natively
    d.vagrant_vagrantfile = "./docker-host-vm/Vagrantfile"
    d.build_dir       = "."
    d.name            = "app"
    d.ports           = ["8000:8000", "35729:35729"]
    d.remains_running = true
    d.has_ssh         = true
  end

end