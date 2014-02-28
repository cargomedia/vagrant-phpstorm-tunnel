require 'fileutils'

module VagrantPhpstormTunnel
  class Configurator
    def initialize(app, env)
      @app = app
      @env = env
      @vm = nil
      @root_path = @env[:root_path].to_s
      @home_path = @root_path + '/.idea/vagrant'
    end

    def is_intellij
      File.exist? @root_path + '/.idea'
    end

    def link_php_to_intellij
      destination_path = File.join(@home_path, 'php')
      source_path = File.expand_path('../../../data/php', __FILE__)

      File.link(source_path, destination_path)
      File.chmod(0755, destination_path)
    end

    def setup_environment
      FileUtils.rm_rf(@home_path)
      FileUtils.mkdir_p(@home_path)

      if tunnel_options[:project_home]
        destination_path = File.join(@home_path, 'vm_project_dir')
        File.write(destination_path, tunnel_options[:project_home].to_s, mode: 'a')
      end
    end

    def tunnel_options
      !@vm.nil? ? @vm.config.phpstorm_tunnel.to_hash : {}
    end

    def call(env)
      @env = env
      @app.call(env)
      @vm = env[:machine]

      if is_intellij
        setup_environment
        link_php_to_intellij
      end
    end
  end
end
