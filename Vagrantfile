# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.box = "inky-bootstrap"
  config.vm.hostname = "inky"
  config.vm.network "private_network", ip: "192.168.33.33"

  config.vm.synced_folder ".", "/vagrant",  :mount_options => ["dmode=777,fmode=666"]
  config.vm.synced_folder ENV["SYNC_WITH_VAGRANT"], "/synced", :mount_options => ["dmode=777,fmode=666"]

  config.vm.provision :ansible do |ansible|
    ansible.verbose = "-  vv"
    ansible.inventory_path = "hosts"
    ansible.playbook = "site.yml"
    ansible.limit = "all"
  end
end
