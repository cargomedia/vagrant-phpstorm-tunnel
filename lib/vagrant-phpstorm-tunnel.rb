require 'vagrant-phpstorm-tunnel/configurator'
require 'vagrant-phpstorm-tunnel/config'

module VagrantPhpstormTunnel
  class Plugin < Vagrant.plugin('2')

    name 'vagrant-phpstorm-tunnel'

    config 'phpstorm_tunnel' do
      Config
    end

    %w{up provision reload}.each do |action|
      action_hook(:install_tunnel, "machine_action_#{action}".to_sym) do |hook|
        hook.append VagrantPhpstormTunnel::Configurator
      end
    end

  end
end
