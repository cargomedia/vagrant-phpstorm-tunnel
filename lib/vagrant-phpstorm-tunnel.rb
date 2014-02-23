require 'vagrant-phpstorm-tunnel/configurator'

module VagrantPhpStormTunnel
  class Plugin < Vagrant.plugin("2")

    name "vagrant-phpstorm-tunnel"

    %w{up provision}.each do |action|
      action_hook(:restart_host_tunnel, "machine_action_#{action}".to_sym) do |hook|
        hook.append VagrantPhpStormTunnel::Configurator
      end
    end

  end
end
