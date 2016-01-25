# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box      = "ubuntu/trusty32"
  config.vm.hostname = "ionic"
  config.vm.network :private_network, type: "dhcp"

  config.nfs.map_uid = Process.uid
  config.nfs.map_gid = Process.gid
  if Vagrant.has_plugin?("vagrant-winnfsd")
    config.winnfsd.uid = Process.uid
    config.winnfsd.gid = Process.gid
  end
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.memory = "1024"
  end

  config.vm.synced_folder "projects", "/home/vagrant/projects",
    mount_options: ['nolock,vers=3,udp,actimeo=2'],
    type: "nfs"

  config.vm.provision :shell, path: "scripts/_start.sh", privileged: false
end
