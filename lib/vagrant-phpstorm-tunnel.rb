require 'vagrant-phpstorm-tunnel/configurator'

module VagrantPhpstormTunnel
  class Plugin < Vagrant.plugin('2')

    name 'vagrant-phpstorm-tunnel'

    %w{up provision}.each do |action|
      action_hook(:install_tunnel, "machine_action_#{action}".to_sym) do |hook|
        hook.append VagrantPhpstormTunnel::Configurator
      end
    end

  end
end
