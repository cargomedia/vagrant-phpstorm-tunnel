Vagrant.require_plugin 'vagrant-phpstorm-tunnel'

Vagrant.configure('2') do |config|
  config.vm.box = 'debian-7-amd64'
  config.vm.box_url = 'http://vagrant-boxes.cargomedia.ch/virtualbox/debian-7-amd64-default.box'

  config.phpstorm_tunnel.project_home = '/home/vagrant/fuboo'
  config.phpstorm_tunnel.command_prefix = 'sudo'
end
