Vagrant.configure(2) do |config|
  config.vm.define "web1" do |web1|
    web1.vm.box = "ubuntu/trusty64" #vm.box = "apache"#
    web1.vm.hostname = "web1"
    web1.vm.network "private_network", ip: "192.168.50.40"
    web1.vm.provision :shell, path: "bootstrap-lamp.sh"
    end


  config.vm.define "jump" do |jump|
    jump.vm.box = "ubuntu/trusty64" #vm.box = "apache"#
    jump.vm.hostname = "jump"
    jump.vm.network "private_network", ip: "192.168.50.41"
    jump.vm.provision :shell, path: "ansible-jump.sh"
    end
end
