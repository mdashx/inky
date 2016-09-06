# -*- mode: ruby -*-

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "inky"

  config.vm.network "private_network", ip: "192.168.33.10"

  # https://coderwall.com/p/z1kjww/vagrant-shared-folder-permissions-with-virtualbox
  config.vm.synced_folder ".", "/vagrant",  :mount_options => ["dmode=777,fmode=666"]
  config.vm.synced_folder ENV["SYNC_WITH_VAGRANT"], "/synced", :mount_options => ["dmode=777,fmode=666"]

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  
  config.vm.provision :ansible do |ansible|
    ansible.inventory_path = "hosts"
    ansible.playbook = "playbook.yml"
    ansible.limit = "all"
  end
end
